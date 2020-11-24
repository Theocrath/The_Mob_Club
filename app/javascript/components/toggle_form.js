const toggleForm = () => {
  $('.description-btn').click( function(e) {
    e.preventDefault();
    $('.description-edit-form').slideToggle();
  })
}

export { toggleForm };