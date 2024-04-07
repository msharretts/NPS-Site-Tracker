import axios from 'axios';

const http = axios.create({
  baseURL: "http://localhost:9000"
});

export default {
  
  getSites() {
    return http.get('/sites');
  },

  getSite(siteId) {
    return http.get(`/sites/${siteId}`);
  },

  getStates() {
    return http.get('/states');
  },

  getState(stateName) {
    return http.get(`/states/${stateName}`);
  }

}