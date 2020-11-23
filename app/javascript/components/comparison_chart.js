const crimeC = (userStats, crimeStats) => {
  Chart.defaults.global.defaultFontColor = 'rgba(232, 205, 162, 1)';
  Chart.defaults.global.defaultFontSize = 14;
  let ctx = document.querySelector('#myCrimeChart');
  new Chart(ctx, {
    type: 'radar',
    data: {
      labels: ['Close Combat', 'Long Range Weapons', 'Mid Range Weapons', 'Explosives', 'Infiltration', 'Hacking', 'Lockpicking', 'Seduction'],

      datasets: [{
        label: 'Your stats',
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
        backgroundColor: ['rgba(219, 159, 61, 0.5)'],
        borderColor: ['rgba(219, 159, 61, 1)'],
        borderWidth: 1
      },
      {
        label: 'Crime Stats',
        data: [
          crimeStats.close_combat,
          crimeStats.long_range_weapons,
          crimeStats.mid_range_weapons,
          crimeStats.explosives,
          crimeStats.infiltration,
          crimeStats.hacking,
          crimeStats.lockpicking,
          crimeStats.seduction
        ],
        backgroundColor: ['rgba(222, 54, 2, 0.7)'],
        borderColor: ['rgba(222, 54, 2, 1)'],
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
          backdropColor: ['rgba(211, 171, 106, 0)'],
          stepSize: 25
        },
        pointLabels: {
          fontSize: 14
        }
      },
      legend: { display: true },
    }
  });
};

const crimeChart = () => {
  let paramsId = document.getElementById("paramsId")
  if (paramsId) {
    paramsId = paramsId.innerHTML;

    $.get(`/crimes/${paramsId}/crime_json`, function (crimeStats) {
      $.get('/current_user_json', function (userStats) {
        console.log('user in join chart', userStats.hacking);
        console.log('crime in join chart', crimeStats.hacking);
        crimeC(userStats, crimeStats);
      });
    });
  }
}

export { crimeChart };
