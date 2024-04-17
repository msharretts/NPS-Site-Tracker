<template>
    <div class="panel is-success">
        <div class="panel-heading">
            {{ site.siteName }}
        </div>

        <div class="panel-block">Date Established: {{ site.dateEstablished }}</div>
        <div class="panel-block">Area: {{ site.areaInKm2 }} square kilometers</div>
        <div class="panel-block">Camping Available: {{ hasCampingAsYOrN }}</div>
        <a :href="website" :target="'_blank'" class="panel-block">Find Out More</a>

        <div v-if="notification">
            {{ notification.message }}
        </div>
    </div>
</template>


<script>

// import siteService from '../services/SiteService';


export default {

    components: {

    },

    props: ['site'],

    data() {
        return {

        }
    },

    computed: {
        website() {
            return 'https://www.nps.gov/' + this.site.npsCallLetters;
        },

        hasCampingAsYOrN() {
            if (this.site.hasCamping) {
                return 'Yes';
            } else {
                return 'No';
            }
        }
    },

    methods: {

        // retrieveSite() {
        //     const id = this.$route.params.id;
        //     siteService.getSiteById(id).then(response => {
        //         this.site = response.data;
        //     }).catch(error => {
        //         this.handleErrorResponse(error, 'adding');
        //     });


        // },

        handleErrorResponse(error, verb) {
            if (error.response) {
                this.$store.commit('SET_NOTIFICATION',
                    "Error " + verb + " itinerary. Response received was '" + error.response.statusText + "'.");
            } else if (error.request) {
                this.$store.commit('SET_NOTIFICATION', "Error " + verb + " itinerary. Server could not be reached.");
            } else {
                this.$store.commit('SET_NOTIFICATION', "Error " + verb + " itinerary. Request could not be created.");
            }
        },

        created() {
            this.retrieveSite();
        }
    }
}


</script>