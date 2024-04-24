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
        retrieveSites() {
            this.$store.commit('CLEAR_SEARCH');
            this.$store.commit('SET_DESIGNATION_SEARCH', this.designationSelection);
            this.$store.commit('SET_STATE_SEARCH', this.stateSelection);

            if (this.designationSelection === '' && this.stateSelection === '') {
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
            } else if (this.designationSelection === '') {
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
            } else if (this.stateSelection === '') {
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

        clearPreferences() {
            this.designationSelection = '',
                this.stateSelection = '',
                this.hasCamping = '',
                this.hasJuniorRanger = '',
                this.sites = []
        },

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
            if (this.hasCamping == true) {
                this.$store.commit('SET_HAS_CAMPING_PREFERENCE', this.hasCamping);
                this.sites = this.sites.filter(site => site.hasCamping == true);
            }
        },

        checkHasJuniorRanger() {
            if (this.hasJuniorRanger == true) {
                this.$store.commit('SET_HAS_JUNIOR_RANGER_PREFERENCE', this.hasJuniorRanger);
                this.sites = this.sites.filter(site => site.hasJuniorRanger == true);
            }
        },

        setNotificationIfEmptyList() {
            if (this.sites.length == 0) {
                this.$store.commit('SET_NOTIFICATION', "No results found. Try different search parameters.");
            }
        }
    },

    created() {
        this.retrieveStates();
        this.retrieveDesignations();
        if (this.$store.state.designationSearch || this.$store.state.stateSearch || this.$store.state.hasCampingPreference || this.$store.state.hasJuniorRangerPreference) {
            if (this.$store.state.hasCampingPreference && this.$store.state.hasJuniorRangerPreference) {
                this.hasCamping = this.$store.state.hasCampingPreference;
                this.hasJuniorRanger = this.$store.state.hasJuniorRangerPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();
            } else if (this.$store.state.hasCampingPreference) {
                this.hasCamping = this.$store.state.hasCampingPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();
            } else if (this.$store.state.hasJuniorRangerPreference) {
                this.hasJuniorRanger = this.$store.state.hasJuniorRangerPreference;
                this.designationSelection = this.$store.state.designationSearch;
                this.stateSelection = this.$store.state.stateSearch;
                this.retrieveSites();
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