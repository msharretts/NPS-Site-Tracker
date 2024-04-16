<template>
    <div>Site Name:
        {{ site.siteName }}

        <a :href="website" :target="'_blank'">Website</a>
    </div>
    <div>Date Established: {{ site.dateEstablished }}</div>
    <div>Area: {{ site.areaInKm2 }} square kilometers</div>
    <div>Camping Available: {{ site.hasCamping }}</div>


    <div v-if="notification">
        {{ notification.message }}
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