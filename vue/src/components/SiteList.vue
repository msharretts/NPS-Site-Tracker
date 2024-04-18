<template>
  <div class="sites" v-if="sites.length">
    <h2 class="title is-3">Search Results</h2>
    <h4 class="title is-5">{{ numberOfSites }} Result{{ sOnResults }} Found:</h4>
    <!-- <div class="skeleton-lines">  -->
    <div class="fixed-grid">
      <div class="grid">
        <router-link :to="{ name: 'site-details-view', params: { id: site.siteId } }" v-for="site in sites"
          :key="site.siteId">
          <div class="siteCardList cell">
            <span class="bulma-fa-mixin"><i class="fas fa-hiking"></i></span>
            &nbsp;&nbsp;
            <SiteCard :site="site" class="bulma-block-mixin has-text-black" />
          </div>
        </router-link>
      </div>

    </div>

  </div>
</template>
  
<script>
import SiteCard from '../components/SiteCard.vue'

export default {
  props: ['sites'],

  components: {
    SiteCard,
  },

  computed: {

    numberOfSites() {
      return this.sites.length;
    },

    sOnResults() {
      if (this.sites.length == 1) {
        return '';
      } else {
        return 's';
      }
    }
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
  color: rgb(89, 18, 18);
  text-decoration: none;
}

.siteCardList {
  display: flex;

}

.fa-hiking {
  color: #046a1a;
}

div.sites {
  padding: 1rem 0 0 8rem ;
}

</style>

