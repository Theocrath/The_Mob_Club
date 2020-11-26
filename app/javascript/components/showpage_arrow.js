const arrowToChart = () => {
  const arrowDownC = document.querySelector('#chart-arrow-dwn');
  const chartSect = document.querySelector('.cht-cont-1');
  if (arrowDownC) {
    console.log('umas merdas');
    arrowDownC.addEventListener('click', () => {
      chartSect.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  };
};

export { arrowToChart };
