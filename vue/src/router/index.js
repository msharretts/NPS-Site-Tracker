import { createRouter as _createRouter, createWebHistory } from 'vue-router';

import HomeView from '@/views/HomeView.vue';

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */
const routes = [
  {
    name: 'home-view',
    path: '/',
    component: HomeView,

  },
  // {
  //   path: 
  // }
];

export function createRouter () {
  return _createRouter({
    history: createWebHistory(),
    routes: routes
  })
}