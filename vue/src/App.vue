<template>
  <div class="container">
    <div>
    </div>
    <nav id="nav-breadcrumb" class="breadcrumb">
      <ul>
        <li @click="goToSearch">Home</li>&nbsp;&nbsp;
        <li><router-link v-bind:to="{ name: 'about-view' }">About</router-link></li>

      </ul>

    </nav>
    <router-view />
  </div>
</template>

<script>

export default {
  methods: {
    goToSearch() {
      this.$store.commit('CLEAR_SEARCH');
      this.$router.push({name: 'home-view'});
    }
  }


}

</script>