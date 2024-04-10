<template>
  <div class="sites">
    <h2>Search Results</h2>
    <div>
      <router-link :to="{ name: 'site-details-view', params: { id: site.siteId }}" v-for="site in sites" :key="site.siteId">
        <div class="siteCardList">
          <SiteCard :site="site" />
        </div>
      </router-link>
    </div>

  </div>
</template>
  
<script>
import SiteCard from '../components/SiteCard.vue'

export default {
  props: ['sites'],

  components: {
    SiteCard,
  }
};
</script>
  
<style scoped>
.boards {
  display: flex;
  margin: 0 20px;
  flex-wrap: wrap;
  column-gap: 20px;
  row-gap: 25px;
  justify-content: flex-start;
  align-items: center;
}

.board {
  min-width: 150px;
  border-radius: 10px;
  padding: 40px;
  text-align: center;
}

a:link,
a:visited {
  color: rgb(243, 243, 243);
  text-decoration: none;
}
</style>