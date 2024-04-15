<template>
    <SiteDetail v-if="!isLoading"/>
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
            site: {
                type: Object,
                required: true,
            },
            isLoading: true,
        }
    },

    methods: {

        retrieveSite() {
            const id = this.$route.params.id;
            siteService.getSiteById(id).then(response => {
                this.site = response.data;
                isLoading = false;

            }).catch
        }
    },

    created() {
        this.retrieveSite();
    }
}



</script>
