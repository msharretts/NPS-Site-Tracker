<template>
  <div class="container">
    <div>
    </div>
    <div id="nav">
      <router-link v-bind:to="{ name: 'home-view' }">Home</router-link>
    </div>
    <router-view />
  </div>
</template>