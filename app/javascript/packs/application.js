// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { homeToLogin, homeToP2, p2toHome, p2ToP3, p3ToP2, p3ToP4, p4ToP3, p4ToP5 } from "../components/scroll_home";
import { expandLines } from '../components/expand_lines';
import { userChart } from '../components/user_chart';
import { crimeChart } from '../components/comparison_chart';
import { toggleDashboard, toggleNewEventPage } from '../components/show_page';
import { toggleTabs, activateTab } from '../components/toggle_tabs';
import { toggleCrimeFormCard, toggleSkillsetFormCard } from "../components/form_progression";
import { initChatroomCable } from "../channels/chatroom_channel";
import { toggleForm } from "../components/toggle_form";


// let paramsId = document.getElementById("paramsId").innerHTML;

document.addEventListener('turbolinks:load', () => {
  initChatroomCable();
  homeToLogin();
  expandLines();
  toggleForm();
  userChart();
  toggleTabs();
  activateTab();
  toggleNewEventPage();
  toggleDashboard();
  toggleCrimeFormCard();
  toggleSkillsetFormCard();
  crimeChart();
  homeToP2();
  p2toHome();
  p2ToP3();
  p3ToP2();
  p3ToP4();
  p4ToP3();
  p4ToP5();
});
