<template>
    <div>
      <div>
        <router-link v-bind:to="{ name: 'home-view' }">Back to Sites</router-link>
      </div>
      <div v-if="isLoading"></div>
      <div v-else>
        <h1>{{ site.name }}</h1>
        <h2>{{ site.dateEstablished }}</h2>
      </div>
    </div>
  </template>
  
  <script>
  import siteService from '../services/SiteService';
  
  export default {
    components: {

    },
  
    computed: {
      
    },
  
    data() {
      return {
        site: { name: '', dateEstablished: '', area: '', hasCamping: '' },
        isLoading: true
      };
    },
  
    methods: {
      retrieveSite() {
        const siteId = this.$route.params.id;
  
        siteService.getSite(siteId).then(response => {
          this.site = response.data;
          this.isLoading = false;
        });
      }
    },
  
    created() {
      this.retrieveSite();
    }
  
  };
  </script>
  