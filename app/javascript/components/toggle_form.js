const toggleForm = () => {
  if ($('.description-btn')) {
    $('.description-btn').click( function(e) {
      e.preventDefault();
      $('.description-edit-form').slideToggle();
    });
  };
}

export { toggleForm };