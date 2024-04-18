<template>
  <div class="container">
    <div>
    </div>
    <nav id="nav-breadcrumb" class="breadcrumb">
      <ul>
        <li><router-link v-bind:to="{ name: 'home-view' }">Home</router-link></li>
        <li><router-link v-bind:to="{ name: 'about-view' }">About</router-link></li>
        <li></li>

      </ul>

    </nav>
    <router-view />
  </div>
</template>