const toggleTabs = () => {
  if ($(".nav a")) {
    $(".nav a").click(function (e) {
      e.preventDefault();
      $(".toggle").hide();
      const toShow = $(this).attr('href');
      $(toShow).show();
    });
  };
};

const activateTab = () => {
  if ($(".tab")) {
    $(document).ready(function () {
      $(".tab").click(function () {
        $(".tab").removeClass("active");
        $(this).addClass("active");
      });
    });
  };
};

export { toggleTabs, activateTab };
