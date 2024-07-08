import { createStore as _createStore } from 'vuex';
const NOTIFICATION_TIMEOUT = 3000;

export function createStore() {
  return _createStore({
    state: {
      designationSearch: '',
      stateSearch: '',
      hasCampingPreference: '',
      hasJuniorRangerPreference: '',
    },

    mutations: {
      SET_NOTIFICATION(state, notification) {
        // Clear the current notification if one exists
        if (state.notification) {
          this.commit('CLEAR_NOTIFICATION');
        }

        if (typeof notification === 'string') {
          // If only a string was sent, create a notification object with defaults
          notification = {
            message: notification,
            type: 'error',
            timeout: NOTIFICATION_TIMEOUT
          }
        } else {
          // Else add default values if needed
          notification.type = notification.type || 'error';
          notification.timeout = notification.timeout || NOTIFICATION_TIMEOUT;
        }

        // Set the notification in state
        state.notification = notification;

        // Clear the message after timeout (see https://developer.mozilla.org/en-US/docs/Web/API/setTimeout)
        notification.timer = window.setTimeout(() => {
          this.commit('CLEAR_NOTIFICATION');
        }, notification.timeout);
      },

      CLEAR_NOTIFICATION(state) {
        if (state.notification && state.notification.timer) {
          window.clearTimeout(state.notification.timer);
        }
        state.notification = null;
      },

      // Clear the search preferences that may have been previously saved
      CLEAR_SEARCH(state) {
        state.designationSearch = '';
        state.stateSearch = '';
        state.hasCampingPreference = '';
        state.hasJuniorRangerPreference = '';
      },

      SET_DESIGNATION_SEARCH(state,term) {
        state.designationSearch = term;
      }, 

      SET_STATE_SEARCH(state,term) {
        state.stateSearch = term;
      },

      SET_HAS_CAMPING_PREFERENCE(state,term) {
        state.hasCampingPreference = term;
      },

      SET_HAS_JUNIOR_RANGER_PREFERENCE(state,term) {
        state.hasJuniorRangerPreference = term;
      }
    },
  });
}