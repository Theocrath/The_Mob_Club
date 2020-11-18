const toggleNewEventPage = () => {
  $('#create-event-btn').click(function(e) {
    e.preventDefault();
    $('#create-event-page').toggle();
  });
}

export { toggleNewEventPage };