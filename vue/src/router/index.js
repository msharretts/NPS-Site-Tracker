import { createRouter as _createRouter, createWebHistory } from 'vue-router';

import HomeView from '@/views/HomeView.vue';
import SiteListView from '@/views/SiteListView.vue';
import SiteDetailsView from '../views/SiteDetailsView.vue';
import AboutView from '../views/AboutView.vue';

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
  {
    name: 'site-list-view',
    path: '/sites',
    component: SiteListView,
  },
  {
    name: 'site-details-view',
    path: '/site/:id',
    component: SiteDetailsView
  },

  {
    name: 'about-view',
    path: '/about',
    component: AboutView
  }
];

export function createRouter () {
  return _createRouter({
    history: createWebHistory(),
    routes: routes
  })
}