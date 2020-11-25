const toggleCrimeFormCard = () => {
  if ($('.crime-form-btn')) {
    $('.crime-form-btn').click(function (e) {
      e.preventDefault();
      $('#crime-form-1').toggle();
      $('#crime-form-2').toggle();
    });
  };
};

const toggleSkillsetFormCard = () => {
  if ($('.skillset-form-btn')) {
    $('.skillset-form-btn').click(function (e) {
      e.preventDefault();
      $('#crime-form-2').toggle();
      $('#crime-form-skillset').toggle();
    });
  };
};

export { toggleCrimeFormCard, toggleSkillsetFormCard };