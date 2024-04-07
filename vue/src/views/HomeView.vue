<template>
  <div>
    <div v-if="isLoading">
    </div>
    <div v-else>
      <h1>National Park Service Sites</h1>
      <SearchForm />
      <SiteList v-bind:sites="sites" />
    </div>
  </div>
</template>

<script >
import SearchForm from '../components/SearchForm.vue';
import SiteList from '../components/SiteList.vue';
import siteService from '../services/SiteService';



export default {
  components: {
    SearchForm,
    SiteList,
},
  data() {
    return {
      sites: [],
      isLoading: true
    };
  },
  methods: {
    async retrieveSites() {
      const response = await siteService.getSites();
      this.sites = response.data;
      this.isLoading = false;
    }
  },

  async created() {
    await this.retrieveSites();
  }
}
</script>

