<template>
    <div class="container is-fluid">
        <a id="back-button" class="button is-success has-text-success-40-invert" @click="$router.back()"><i
                class="fas fa-arrow-left">&nbsp;&nbsp;Back</i></a>


        <div class="panel is-success">
            <div id="panel-heading" class="panel-heading">
                <p class="has-text-success-40-invert">{{ site.siteName }}</p>

            </div>

            <div class="panel-block has-background-white">Date Established: {{ dateFormatted }}</div>
            <div class="panel-block has-background-light">Area: {{ site.areaInKm2 }} square kilometers</div>
            <div class="panel-block has-background-white">Camping Available: {{ hasCampingAsYOrN }}</div>
            <div class="panel-block has-background-light">Junior Ranger Program: {{ hasJuniorRangerAsYOrN }}</div>
            <a :href="website" :target="'_blank'" class="panel-block has-background-white title is-6">Find Out More</a>

            <div v-if="notification">
                {{ notification.message }}
            </div>
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
            dateFormatted: new Date(this.site.dateEstablished).toDateString(),
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
        },

        hasJuniorRangerAsYOrN() {
            if (this.site.hasJuniorRanger) {
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



<style scoped>
#back-button {
    margin: 2rem 0;
}
</style>