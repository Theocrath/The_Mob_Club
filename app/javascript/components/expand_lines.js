var toggle = false,
hrs = $('hr');
console.log(hrs)

const expandLines = () => {
  $(document).ready(function () {
  $.map(hrs, function (val, i) {
    if (toggle === false) {
      $(val).addClass('grow');
        // .addClass('line-color-change');

    } else {
      $(val).removeClass('grow');
        // .removeClass('line-color-change');
    }

  });
  toggle = !toggle;
});
}

export  { expandLines };