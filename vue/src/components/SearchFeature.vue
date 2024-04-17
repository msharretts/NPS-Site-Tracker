<template>
    <div id="search-bar-container">
        <div class="field">
            <label for="site-category-dropdown" class="label">Search By Designation:</label>
            <div class="control">
                <div class="select">
                    <select v-model="designationSelection" name="site-category-dropdown" id="site-category-dropdown">
                        <option value=""> </option>
                        <option v-for="designation in designations" :value="designation.designationName"
                            :key="designation.designationId">{{ designation.designationName }}</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="field">
            <label for="state-dropdown" class="label">Search By State:</label>
            <div class="control">
                <div class="select">
                    <select v-model="stateSelection" name="state-dropdown" id="state-dropdown">
                        <option value=""> </option>
                        <option v-for="state in states" :value="state.stateAbbreviation" :key="state.stateAbbreviation">{{
                            state.stateName }}</option>
                    </select>
                </div>
            </div>
        </div>
        <div id="search-button-container">
            <button  class="button is-light is-focused " @click="retrieveSites">Search</button>
        </div>
    </div>

    <SiteList :sites="sites" />
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
        }
    },

    components: {
        SiteList,
    },

    methods: {
        retrieveSites() {
            if (this.designationSelection === '' && this.stateSelection === '') {
                siteService.getAllSites().then(response => {
                    this.sites = response.data;
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
        }
    },

    created() {
        this.retrieveStates();
        this.retrieveDesignations();
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
    justify-content: end;
    padding-top: 1.4rem;
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