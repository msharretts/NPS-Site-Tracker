<template>
    Site Name:
    {{ site.siteName }}

    <a :href="website" :target="'_blank'">Website</a>
</template>


<script>

import siteService from '../services/SiteService';


export default {

    components: {

    },

    data() {
        return {
            site: {},
        }
    },

    computed: {
        website() {
            return 'https://www.nps.gov/';
        }
    },

    methods: {

        retrieveSite() {
            const id = this.$route.params.id;
            siteService.getSiteById(id).then(response => {
                this.site = response.data;

            })
        }
    },

    created() {
        this.retrieveSite();
    }
}


</script>