const userC = (userStats) => {
  Chart.defaults.global.defaultFontColor = 'rgba(232, 205, 162, 1)';
  Chart.defaults.global.defaultFontSize = 14;
  let ctx = document.querySelector('#userChart');
  new Chart(ctx, {
    type: 'radar',
    data: {
      labels: ['Close Combat', 'Long Range Weapons', 'Mid Range Weapons', 'Explosives', 'Infiltration', 'Hacking', 'Lockpicking', 'Seduction'],

      datasets: [{
        label: 'Skillset',
        data: [
          userStats.close_combat,
          userStats.long_range_weapons,
          userStats.mid_range_weapons,
          userStats.explosives,
          userStats.infiltration,
          userStats.hacking,
          userStats.lockpicking,
          userStats.seduction
        ],
        backgroundColor: ['rgba(159, 7, 4, 0.7)'],
        borderColor: ['rgba(159, 7, 4, 1)'],
        borderWidth: 1
      }],
    },
    options: {
      scale: {
        angleLines: {
          color: 'rgba(232, 205, 162, 0.4)'
        },
        gridLines: {
          color: 'rgba(232, 205, 162, 0.4)'
        },
        ticks: {
          beginAtZero: true,
          max: 100,
          backdropColor: 'rgba(211, 171, 106, 0)',
          stepSize: 25
        },
        pointLabels: {
          fontSize: 14
        }
      },
      legend: { display: false }
    }
  });
};

const userChart = () => {
  let ctx = document.querySelector('#userChart');
  if (ctx) {
  $.get('/current_user_json', function (userStats) {
    console.log('testing current_user_json response', userStats.close_combat);
    userC(userStats);
  });
  };
};

export { userChart };
