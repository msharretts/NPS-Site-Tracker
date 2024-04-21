<template >
  <div>
    <div>
    </div>
    <nav id="nav-breadcrumb" class="breadcrumb is-right">
      <ul>
        <li>
          <router-link @click="goToSearch" v-bind:to="{ name: 'home-view' }"><i class="fas fa-home"></i>&nbsp;Home</router-link>
        </li>
        <li>
          <router-link v-bind:to="{ name: 'oddities-view' }"><i class="fas fa-question-circle"></i>&nbsp; Oddities</router-link>
        </li>
        <li>
          <router-link v-bind:to="{ name: 'about-view' }"><i class="fas fa-info-circle"></i>&nbsp; About</router-link>
        </li>
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
      this.$router.push({ name: 'home-view' });
    }
  },




}

</script>