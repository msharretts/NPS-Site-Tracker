<template>
  <div>
    <SiteList />
  </div>
</template>
  
<script>
import SiteList from '@/components/SiteList.vue';
import siteService from '../services/SiteService';

export default {
  components: {
    SiteList
  },
  props: ['sites'],

  computed: {

  },

  data() {
    return {
      site: { id: '', name: '', dateEstablished: '', area: '', hasCamping: '' },
    };
  },

  methods: {
    retrieveSite() {
      const siteId = this.$route.params.id;

      siteService.getSiteById(siteId).then(response => {
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
  