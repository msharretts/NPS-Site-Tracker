<template>
    <SiteDetail />
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
            site: {}
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
