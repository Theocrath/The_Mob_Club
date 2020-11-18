const toggleNewEventPage = () => {
  $('#create-event-btn').click(function(e) {
    e.preventDefault();
    $('#profile-dashboard-container').toggle();
    $('#create-event-page').toggle();
  });
}

export { toggleNewEventPage };