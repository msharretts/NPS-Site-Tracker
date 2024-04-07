<template>
    <div class="sites">
      <router-link v-for="site in sites" v-bind:key="site.id"
        v-bind:to="{ name: 'SiteView', params: { id: site.id } }">
        <div class="site">{{ site.name }}</div>
      </router-link>
    </div>
  </template>
  
  <script>
  export default {
    props: ['sites'],
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