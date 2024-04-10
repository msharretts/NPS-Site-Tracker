<template>
  <div class="container">
    <div>
    </div>
    <div id="nav">
      <div><router-link v-bind:to="{ name: 'home-view' }">Home</router-link></div>
      <div><router-link v-bind:to="{ name: 'site-list-view' }">Sites</router-link></div>
      
      
    </div>
    <router-view />
  </div>
</template>