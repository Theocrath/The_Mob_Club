const toggleForm = () => {
  $('.description-btn').click( function(e) {
    e.preventDefault();
    $('.description-edit-form').toggle();
  })
}

export { toggleForm };