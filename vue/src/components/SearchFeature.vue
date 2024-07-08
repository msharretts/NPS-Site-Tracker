<template>
    <div>

        <div id="search-bar-container">
            <div id="clear-button-container">
                <button class="button is-light is-focused " @click="clearPreferences">Clear</button>
            </div>
            <div id="designation-search-div" class="field">
                <div id="designation-div">
                    <label for="site-category-dropdown" class="label">Search By Designation:</label>
                    <div class="control">
                        <div class="select">
                            <select v-model="designationSelection" name="site-category-dropdown"
                                id="site-category-dropdown">
                                <option value=""> </option>
                                <option v-for="designation in designations" :value="designation.designationName"
                                    :key="designation.designationId">{{ designation.designationName }}</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div id="state-search-div" class="field">
                <label for="state-dropdown" class="label">Search By State:</label>
                <div class="control">
                    <div class="select">
                        <select v-model="stateSelection" name="state-dropdown" id="state-dropdown">
                            <option value=""> </option>
                            <option v-for="state in states" :value="state.stateAbbreviation" :key="state.stateAbbreviation">
                                {{ state.stateName }}</option>
                        </select>
                    </div>
                </div>
            </div>
            <div id="checkbox-div">
                <div id="camping-checkbox">
                    <label for="camping-checkbox" class="checkbox">
                        <input type="checkbox" v-model="hasCamping"> Camping Available</label>
                </div>
                <div id="junior-checkbox">
                    <label for="junior-ranger-checkbox" class="checkbox">
                        <input type="checkbox" v-model="hasJuniorRanger"> Junior Ranger Program</label>
                </div>

            </div>

            <div id="search-button-container">
                <button class="button is-light is-focused " @click="retrieveSites">Search</button>
            </div>

        </div>

        <div class="container is-fluid" v-if="notification">{{ notification.message }}</div>
        <SiteList :sites="sites" />

    </div>
</template>

<script>
import SiteList from './SiteList.vue';
import siteService from '@/services/SiteService';
import stateService from '@/services/StateService';
import designationService from '@/services/DesignationService';


export default {

    data() {
        return {
            sites: [],
            designationSelection: '',
            stateSelection: '',
            states: [],
            designations: [],
            hasCamping: '',
            hasJuniorRanger: '',
        }
    },

    components: {
        SiteList,
    },

    computed: {
        notification() {
            return this.$store.state.notification;
        }
    },

    methods: {

        // Upon engaging a search, remove any prior search criteria in the store and reset from current criteria
        retrieveSites() {
            this.$store.commit('CLEAR_SEARCH');
            this.$store.commit('SET_DESIGNATION_SEARCH', this.designationSelection);
            this.$store.commit('SET_STATE_SEARCH', this.stateSelection);

            // If there are not state & designation search criteria selected
            if (this.designationSelection === '' && this.stateSelection === '') {

                // Retrieve all sites, then filter for junior ranger program and camping preferences
                siteService.getAllSites().then(response => {
                    this.sites = response.data;
                    this.checkHasCamping();
                    this.checkHasJuniorRanger();
                    this.setNotificationIfEmptyList();

                }).catch(error => {
                    if (error.response) {
                        this.$store.commit('SET_NOTIFICATION',
                            "Error getting sites. Response received was ''" + error.response.statusText + "'.");
                    } else if (error.request) {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Server could not be reached.");
                    } else {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Request could not be created.");
                    }
                });

            // If there is a state selection but no designation
            } else if (this.designationSelection === '') {

                //Retrieve sites for selected state and filter for camping and junior ranger preferences
                siteService.getSitesByState(this.stateSelection).then(response => {
                    this.sites = response.data;
                    this.checkHasCamping();
                    this.checkHasJuniorRanger();
                    this.setNotificationIfEmptyList();

                }).catch(error => {
                    if (error.response) {
                        this.$store.commit('SET_NOTIFICATION',
                            "Error getting sites. Response received was ''" + error.response.statusText + "'.");
                    } else if (error.request) {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Server could not be reached.");
                    } else {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Request could not be created.");
                    }
                });

            // If there is only a designation selection, but no state selection
            } else if (this.stateSelection === '') {

                // Retrieve sites of the appropriate designation and filter for camping or junior ranger preference
                siteService.getSitesByDesignation(this.designationSelection).then(response => {
                    this.sites = response.data;
                    this.checkHasCamping();
                    this.checkHasJuniorRanger();
                    this.setNotificationIfEmptyList();

                }).catch(error => {
                    if (error.response) {
                        this.$store.commit('SET_NOTIFICATION',
                            "Error getting sites. Response received was ''" + error.response.statusText + "'.");
                    } else if (error.request) {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Server could not be reached.");
                    } else {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Request could not be created.");
                    }
                });

            // Otherwise, perform a combined searched and filter for camping and junior ranger preference
            } else {
                siteService.getSitesByStateAndDesignation(this.stateSelection, this.designationSelection).then(response => {
                    this.sites = response.data;
                    this.checkHasCamping();
                    this.checkHasJuniorRanger();
                    this.setNotificationIfEmptyList();

                }).catch(error => {
                    if (error.response) {
                        this.$store.commit('SET_NOTIFICATION',
                            "Error getting sites. Response received was ''" + error.response.statusText + "'.");
                    } else if (error.request) {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Server could not be reached.");
                    } else {
                        this.$store.commit('SET_NOTIFICATION', "Error getting sites. Request could not be created.");
                    }
                });
            }


        },

        // Resets all criteria to empty, for ease of user
        clearPreferences() {
            this.designationSelection = '',
                this.stateSelection = '',
                this.hasCamping = '',
                this.hasJuniorRanger = '',
                this.sites = []
        },

        // This populates the search drop-down without hard-coding individual states
        retrieveStates() {
            stateService.getAllStates().then(response => {
                this.states = response.data;
            }).catch(error => {
                if (error.response) {
                    this.$store.commit('SET_NOTIFICATION',
                        "Error getting states. Response received was ''" + error.response.statusText + "'.");
                } else if (error.request) {
                    this.$store.commit('SET_NOTIFICATION', "Error getting states. Server could not be reached.");
                } else {
                    this.$store.commit('SET_NOTIFICATION', "Error getting states. Request could not be created.");
                }
            });
        },

        // This populates the search drop-down without hard-coding designations
        retrieveDesignations() {
            designationService.getAllDesignations().then(response => {
                this.designations = response.data;
            }).catch(error => {
                if (error.response) {
                    this.$store.commit('SET_NOTIFICATION',
                        "Error getting designations. Response received was ''" + error.response.statusText + "'.");
                } else if (error.request) {
                    this.$store.commit('SET_NOTIFICATION', "Error getting designations. Server could not be reached.");
                } else {
                    this.$store.commit('SET_NOTIFICATION', "Error getting designations. Request could not be created.");
                }
            });
        },

        checkHasCamping() {

            // If has camping box is selected
            if (this.hasCamping == true) {

                // Set the preference to be remembered in the store & filter sites 
                this.$store.commit('SET_HAS_CAMPING_PREFERENCE', this.hasCamping);
                this.sites = this.sites.filter(site => site.hasCamping == true);
            }
        },

        // If junior ranger is selected
        checkHasJuniorRanger() {
            if (this.hasJuniorRanger == true) {

                // Set the preference to be remembered in the store & filter sites 
                this.$store.commit('SET_HAS_JUNIOR_RANGER_PREFERENCE', this.hasJuniorRanger);
                this.sites = this.sites.filter(site => site.hasJuniorRanger == true);
            }
        },

        // Create notification so that users are told when no results meet criteria
        setNotificationIfEmptyList() {
            if (this.sites.length == 0) {
                this.$store.commit('SET_NOTIFICATION', "No results found. Try different search parameters.");
            }
        }
    },

    // At page load, populate the drop-downs
    created() {
        this.retrieveStates();
        this.retrieveDesignations();

        // Check for previous search criteria in case user is returning to page after viewing site info, reload from store
        // If no previous criteria in store, page will display search options, but no results
        if (this.$store.state.designationSearch || this.$store.state.stateSearch || this.$store.state.hasCampingPreference || this.$store.state.hasJuniorRangerPreference) {

            // Check if both camping and junior ranger preference, then use the store to reset these criteria and pull sites
            if (this.$store.state.hasCampingPreference && this.$store.state.hasJuniorRangerPreference) {
                this.hasCamping = this.$store.state.hasCampingPreference;
                this.hasJuniorRanger = this.$store.state.hasJuniorRangerPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();

            // Otherwise check only camping preference, set preference from store and pull sites
            } else if (this.$store.state.hasCampingPreference) {
                this.hasCamping = this.$store.state.hasCampingPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();

            // Or check only junior ranger preference, set and pull sites
            } else if (this.$store.state.hasJuniorRangerPreference) {
                this.hasJuniorRanger = this.$store.state.hasJuniorRangerPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();

            // If no preferences for camping and junior ranger, reset designations from store and pull sites
            } else {
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();
            }

        }
    }
}

</script>

<style scoped>
#search-bar-container {
    display: flex;
    align-items: center;
    gap: 1rem;
    justify-content: space-around;
}


#search-button-container {
    display: flex;
    justify-content: flex-start;
    padding-top: 1.3rem;
    flex-grow: 1;
}

#clear-button-container {
    display: flex;
    justify-content: flex-end;
    padding-top: 1.3rem;
    flex-grow: 1;
}

#checkbox-div {
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding-top: .5rem;
    gap: .75rem;
}


#designation-div {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

#designation-search-div {
    display: flex;
    justify-content: flex-end;
}

</style>

    <!-- <i class="fas fa-mountain"></i> -->
    <!-- <i class="fas fa-leaf"></i> -->
    <!-- <i class="fab fa-pagelines"></i> -->
    <!-- <i class="fas fa-hiking"></i> -->
    <!-- <i class="fas fa-feather-alt"></i> -->
    <!-- <i class="fas fa-monument"></i> -->
    <!-- <i class="fas fa-landmark"></i> -->
    <!-- <i class="fas fa-water"></i> -->