const chart = (result) => {
  let ctx = document.getElementById('myChart');
  // ctx.style.width = '200px';
  // ctx.style.height = '200px';
  new Chart(ctx, {
    type: 'radar',
    data: {
      labels: ['Close Combat', 'Long Range Weapons', 'Mid Range Weapons', 'Explosives', 'Infiltration', 'Hacking', 'Lockpicking', 'Seduction'],
      datasets: [{
        label: 'Skillset',
        data: [
          result.close_combat,
          result.long_range_weapons,
          result.mid_range_weapons,
          result.explosives,
          result.infiltration,
          result.hacking,
          result.lockpicking,
          result.seduction
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
          stepSize: 10
        }
      }
    }
  });
};


const userChart = () => {
  $.get('/current_user_json', function (result) {
    console.log(result.martial_arts);
    chart(result);
  });
}
export { userChart };