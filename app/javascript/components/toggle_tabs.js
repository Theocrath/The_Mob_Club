const toggleTabs = () => {
  $("#nav a").click(function (e) {
    e.preventDefault();
    $(".toggle").hide();
    var toShow = $(this).attr('href');
    $(toShow).show();
  });
};

const activateTab = () => {
  $(document).ready(function () {
    $(".tab").click(function () {
      $(".tab").removeClass("active");
      $(this).addClass("active");
    });
  });
};

export { toggleTabs, activateTab };