const toggleFormCard = () => {
  $('.crime-form-btn').click(function (e) {
    e.preventDefault();
    $('#crime-form-1').toggle();
    $('#crime-form-2').toggle();
  });
}

export { toggleFormCard };