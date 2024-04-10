import axios from 'axios';

const http = axios.create({
  baseURL: "http://localhost:9000"
});

export default {
  
  getAllSites() {
    return http.get('/sites');
  },

  getSitesByDesignation(designation) {
    return http.get(`/sites/designation/${designation}`);
  },

  getSitesByState(stateName) {
    return http.get(`/sites/states/${stateName}`);
  },

  getSiteById(siteId) {
    return http.get(`/sites/${siteId}`);
  },

  getStates() {
    return http.get('/states');
  },

  getState(stateName) {
    return http.get(`/states/${stateName}`);
  }

}