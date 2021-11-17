import React from 'react';
import ReactDOM from 'react-dom';
import ChartistGraph from 'react-chartist';

class Gauge extends React.Component {
  render() {

    var data = {
      // labels: ['W1', 'W2', 'W3', 'W4', 'W5', 'W6', 'W7', 'W8', 'W9', 'W10'],
      series: [130]   //   [1, 2, 4, 8, 6, -2, -1, -4, -6, -2]
    };

    var options = {
      donut: true,
      donutWidth: 20,
      startAngle: 230,
      total: 360,
      showLabel: false
    };

    var type = 'Pie'

    return (
      <div>
        <ChartistGraph className={'ct-chart'} data={data} options={options} type={type} />
      </div>
    )
  }
}


export default Gauge;