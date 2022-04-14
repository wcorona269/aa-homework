import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
  JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  
  // Phase 1: Logging
  //store.dispatch  = addLoggingToDispatch(store);

  // phase 2
  store = applyMiddlewares(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});


// Phase 1: Logging
const addLoggingToDispatch = store => next => action => {
    console.log(store.getState());
    console.log(action);
    next (action);
    console.log(store.getState());
}

const applyMiddlewares = (store, ...middlewares) => {
  let dispatch = store.dispatch;
  middlewares.forEach(mid => {
    dispatch = mid(store)(dispatch)
  })
  return Object.assign({}, store, { dispatch } )
}