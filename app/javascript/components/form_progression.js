const toggleCrimeFormCard = () => {
  $('.crime-form-btn').click(function (e) {
    e.preventDefault();
    $('#submit-crime').submit();
    $('#crime-form-1').toggle();
    $('#crime-form-2').toggle();
  });
}

const toggleSkillsetFormCard = () => {
  $('.skillset-form-btn').click(function (e) {
    e.preventDefault();
    $('#crime-form-2').toggle();
    $('#crime-form-skillset').toggle();
  });
}

export { toggleCrimeFormCard, toggleSkillsetFormCard };