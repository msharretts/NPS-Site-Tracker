<template>
  <div>

    <div>
      <h1>National Park Service Sites</h1>
      <SearchFeature />
    </div>
  </div>
</template>

<script >
import SearchFeature from '../components/SearchFeature.vue';
import siteService from '../services/SiteService';



export default {
  components: {
    SearchFeature,

},
  data() {
    return {
      sites: [],
    };
  },
  methods: {
    async retrieveSites() {
      const response = await siteService.getAllSites();
      this.sites = response.data;
    }
  },

  async created() {
    await this.retrieveSites();
  }
}
</script>

