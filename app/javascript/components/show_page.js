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
    $('.chart').toggle();
    $('#dashboard-main').slideToggle();
  });
}

export { toggleNewEventPage, toggleDashboard };