const toggleNewEventPage = () => {
  $('#create-event-btn').click(function(e) {
    e.preventDefault();
    $('#profile-container').toggle();
    $('#create-event-page').toggle();
  });
}

const toggleDashboard = () => {
  $('#dashboard-btn').click(function (e) {
    e.preventDefault();
    if ($('.chart')[0]) {
      $('.chart').toggle();
      $('#dashboard-main').slideToggle();
    } else {
      $('.user-skillset-form').toggle();
      $('#dashboard-main').toggle();
    }
  });
}

export { toggleNewEventPage, toggleDashboard };