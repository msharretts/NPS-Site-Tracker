<template>
  <div>
    <div id="home-elements">
      <div><h1 class="title is-1">National Park Service Sites</h1></div>
      <div id="search-feature-div"><SearchFeature /></div>
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

<style scoped>
#home-elements {
  display: flex;
  flex-direction: column;
  align-items: center;
}

#search-feature-div {
  width: 90%
}

div > h1 {
  padding-bottom: 1.5rem;
}
</style>