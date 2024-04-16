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

  getSitesByState(stateAbbreviation) {
    return http.get(`/sites/states/${stateAbbreviation}`);
  },

  getSitesByStateAndDesignation(stateAbbreviation, designation) {
     return http.get(`/sites/states/${stateAbbreviation}/designation/${designation}`)
  },
 
  getSiteById(siteId) {
    return http.get(`/sites/${siteId}`);
  },

  getState(stateName) {
    return http.get(`/states/${stateName}`);
  }

}