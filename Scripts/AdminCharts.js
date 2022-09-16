const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
  ];

  const data = {
    labels: labels,
    datasets: [{
      label: 'Πλήθος Επισκέψεων Ανα Ημέρα',
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',
      data: [0, 10, 5, 2, 20, 30, 45],
    },

    {
        label: 'Πλήθος Επισκέψεων Κρουσμάτων Ανα Ημέρα',
        backgroundColor: 'blue',
        borderColor: 'blue',
        data: [2, 12, 3, 9, 12, 54, 48],
      }]
  };

  const config = {
    type: 'line',
    data: data,
    options: {}
  };

  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );