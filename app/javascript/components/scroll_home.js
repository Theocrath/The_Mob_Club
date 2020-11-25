const homeToP2 = () => {
  const homeArrow = document.querySelector('#arrow-dwn');
  const page2 = document.querySelector('.prp-value');
  if (homeArrow) {
    homeArrow.addEventListener('click', () => {
      page2.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p2toHome = () => {
  const page2TopArrow = document.querySelector('#page2TopArrow');
  const homePage = document.querySelector('.hero-banner');
  if (page2TopArrow) {
    page2TopArrow.addEventListener('click', () => {
      homePage.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p2ToP3 = () => {
  const page2BottomArrow = document.querySelector('#page2BottomArrow');
  const page3 = document.querySelector('.prp-value2');
  if (page2BottomArrow) {
    page2BottomArrow.addEventListener('click', () => {
      page3.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p3ToP2 = () => {
  const page3TopArrow = document.querySelector('#page3TopArrow');
  const page2 = document.querySelector('.prp-value');
  if (page3TopArrow) {
    page3TopArrow.addEventListener('click', () => {
      page2.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p3ToP4 = () => {
  const page3BottomArrow = document.querySelector('#page3BottomArrow');
  const page4 = document.querySelector('.prp-value3');
  if (page3TopArrow) {
    page3BottomArrow.addEventListener('click', () => {
      page4.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p4ToP3 = () => {
  const page4TopArrow = document.querySelector('#page4TopArrow');
  const page3 = document.querySelector('.prp-value2');
  if (page4TopArrow) {
    page4TopArrow.addEventListener('click', () => {
      page3.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p4ToP5 = () => {
  const page4BottomArrow = document.querySelector('#page4BottomArrow');
  const carroussel = document.querySelector('.carroussel');
  if (page4BottomArrow) {
    page4BottomArrow.addEventListener('click', () => {
      carroussel.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

const p5ToP4 = () => {
  const page5TopArrow = document.querySelector('#page5TopArrow');
  const page4 = document.querySelector('.prp-value3');
  if (page5TopArrow) {
    page5TopArrow.addEventListener('click', () => {
      page4.scrollIntoView({
        behavior: 'smooth',
        block: 'end',
        inline: 'nearest'
      });
    });
  }
};

// const scrollHome = () => {

// };

export { homeToP2, p2toHome, p2ToP3, p3ToP2, p3ToP4, p4ToP3, p4ToP5, p5ToP4 };