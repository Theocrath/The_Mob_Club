const chart = (userStats) => {
  let ctx = document.getElementById('myChart');
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
        backgroundColor: ['rgba(218,165,32, 0.4)'],
        borderColor: ['rgba(218,165,32, 1)'],
        borderWidth: 1
      }]
    },
    options: {
      scale: {
        ticks: {
          beginAtZero: true,
          max: 100,
          backdropColor: ['rgba(218,165,32, 0)'],
          stepSize: 25
        }
      },
      legend: { display: false }
      //   labels: {
      //     fontColor: 'rgb(255, 99, 132)' // legend on top
      //   }
      // }
    }
  });
};

const userChart = () => {
  $.get('/current_user_json', function (userStats) {
    console.log('testing json response', userStats.close_combat);
    chart(userStats);
  });
}

const crimeC = (crimeStats) => {
  let crimectx = document.getElementById('myCrimeChart');
  new Chart(crimectx, {
    type: 'radar',
    data: {
      labels: ['Close Combat', 'Long Range Weapons', 'Mid Range Weapons', 'Explosives', 'Infiltration', 'Hacking', 'Lockpicking', 'Seduction'],

      datasets: [{
        label: 'Skillset',
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
        backgroundColor: ['rgba(218,165,32, 0.4)'],
        borderColor: ['rgba(218,165,32, 1)'],
        borderWidth: 1
      }]
    },
    options: {
      scale: {
        ticks: {
          beginAtZero: true,
          max: 100,
          backdropColor: ['rgba(218,165,32, 0)'],
          stepSize: 25
        }
      },
      legend: { display: false }
      //   labels: {
      //     fontColor: 'rgb(255, 99, 132)' // legend on top
      //   }
      // }
    }
  });
};

const crimeChart = () => {
  $.get('/crime_json', function (crimeStats) {
    crimeC(crimeStats);
  });
}

export { userChart, crimeChart };
