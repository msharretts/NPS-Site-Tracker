<template>
    <SiteDetail v-if="!isLoading" :site="site" />
</template>

<script>
import SiteDetail from '@/components/SiteDetail.vue';
import siteService from '@/services/SiteService';

export default {

    components: {
        SiteDetail,
    },

    data() {
        return {
            site: {},
            isLoading: true,
        }
    },

    methods: {


        // Retrieve site, then set is loading to false to display details
        retrieveSite() {
            const id = this.$route.params.id;
            siteService.getSiteById(id).then(response => {
                this.site = response.data;
                this.isLoading = false;

            }).catch
        }
    },

    created() {
        this.retrieveSite();
    }
}



</script>
