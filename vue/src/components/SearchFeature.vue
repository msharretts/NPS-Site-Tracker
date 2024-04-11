<template>
    <div>
        <label for="site-category-dropdown">Search By Designation:</label>
        <select v-model="designationSelection" name="site-category-dropdown" id="site-category-dropdown">
            <option value=""> </option>
            <option value="National Battlefield">National Battlefield</option>
            <option value="National Battlefield Park">National Battlefield Park</option>
            <option value="National Battlefield Site">National Battlefield Site</option>
            <option value="National Historic Site">National Historic Site</option>
            <option value="International Historic Site">International Historic Site</option>
            <option value="National Historical Park">National Historical Park</option>
            <option value="National Lakeshore">National Lakeshore</option>
            <option value="National Military Park">National Military Park</option>
            <option value="National Memorial">National Memorial</option>
            <option value="National Monument">National Monument</option>
            <option value="National Park">National Park</option>
            <option value="National Parkway">National Parkway</option>
            <option value="National Preserve">National Preserve</option>
            <option value="National Recreation Area">National Recreation Area</option>
            <option value="National Reserve">National Reserve</option>
            <option value="National River">National River</option>
            <option value="National Scenic Trail">National Scenic Trail</option>
            <option value="National Seashore">National Seashore</option>
            <option value="National Wild & Scenic River">National Wild & Scenic River</option>
            <option value="Other">Other</option>
        </select>
    </div>
    <div>
        <label for="state-dropdown">Search By State:</label>
        <select v-model="stateSelection" name="state-dropdown" id="state-dropdown">
            <option value=""> </option>
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AS">American Samoa</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="GU">Guam</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">MInnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="MP">Northern Mariana Islands</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="PR">Puerto Rico</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VI">Virgin Islands</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
        </select>
    </div>
    <input type="button" @click="retrieveSites" value="Go!">
    <SiteList :sites="sites" />
</template>

<script>
import SiteList from './SiteList.vue';
import siteService from '@/services/SiteService';


export default {

    data() {
        return {
            sites: [],
            designationSelection: '',
            stateSelection: '',
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
    }
}

</script>