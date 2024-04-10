<template>
    <div>
        <label for="site-category-dropdown">Search By Designation:</label>
        <select v-model="designationSelection" name="site-category-dropdown" id="site-category-dropdown" >
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
        <input type="button" @click="retrieveSites" value="Go!">
    </div>
    <SiteList :sites="sites"/>
</template>

<script>
import SiteList from './SiteList.vue';
import siteService from '@/services/SiteService';


export default {

    data() {
        return {
            sites: [],
            designationSelection: '',
        }
    },

    components: {
        SiteList,
    },

    methods: {
        retrieveSites() {
            if (this.designationSelection === '') {
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
            } else {
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
            }

        }
    }
}


</script>