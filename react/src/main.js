import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import SurgeryGroupList from './components/SurgeryGroupList';

$(function() {
  if (document.getElementById('main-app')) {
    ReactDOM.render(
      <SurgeryGroupList />,
      document.getElementById('main-app')
    );
  }
});
