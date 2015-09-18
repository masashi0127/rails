c3.generate({
  bindto: '#OrderTransition',
  data: {
    x: 'x',
    columns: [
      ['x', '2013-01-01', '2013-01-02', '2013-01-03', '2013-01-04', '2013-01-05', '2013-01-06',
      '2013-01-07', '2013-01-08', '2013-01-09', '2013-01-10', '2013-01-11', '2013-01-12'],
      ['2014', 30, 200, 100, 400, 150, 250, 30, 200, 100, 400, 150, 250],
      ['2015', 130, 340, 200, 500, 250, 350, 130, 340, 200, 500, 250, 350]
    ]
  },
  axis: {
    x: {
      type: 'timeseries',
      tick: {
        format: '%d'
      }
    }
  },
  size: {
    height: 300
  },
  color: {
    pattern: ['#79BAD9', '#FFDE88', '#FFA188']
  }
});

c3.generate({
  bindto: '#MonthlyAchievementRateChart',
  data: {
    columns: [
        ['data', 91.4]
    ],
    type: 'gauge',
    onclick: function (d, i) { console.log("onclick", d, i); },
    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    onmouseout: function (d, i) { console.log("onmouseout", d, i); }
  },
  color: {
    pattern: ['#79BAD9', '#FFDE88', '#FFA188', '#DBF1FB'], // the three color levels for the percentage values.
    threshold: {
      values: [30, 60, 90, 100]
    }
  },
  size: {
      width: 150
  }
});

c3.generate({
  bindto: '#DailyAchievementRateChart',
  data: {
    columns: [
        ['data', 81.4]
    ],
    type: 'gauge',
    onclick: function (d, i) { console.log("onclick", d, i); },
    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    onmouseout: function (d, i) { console.log("onmouseout", d, i); }
  },
  color: {
    pattern: ['#79BAD9', '#FFDE88', '#FFA188', '#DBF1FB'], // the three color levels for the percentage values.
    threshold: {
      values: [30, 60, 90, 100]
    }
  },
  size: {
      width: 150
  }
});


c3.generate({
  bindto: '#CategoryOrderChart',
  data: {
    x: 'x',
    columns: [
      ['x', '2013-01-01', '2013-01-02', '2013-01-03', '2013-01-04', '2013-01-05', '2013-01-06',
      '2013-01-07', '2013-01-08', '2013-01-09', '2013-01-10', '2013-01-11', '2013-01-12'],
      ['2014', 30, 200, 100, 400, 150, 250, 30, 200, 100, 400, 150, 250],
      ['2015', 130, 340, 200, 500, 250, 350, 130, 340, 200, 500, 250, 350]
    ],
    type: 'bar'
  },
  bar: {
    width: {
      ratio: 0.5 // this makes bar width 50% of length between ticks
    }
    // or
    //width: 100 // this makes bar width 100px
  },
  axis: {
    x: {
      type: 'timeseries',
      tick: {
        format: '%d'
      }
    }
  },
  size: {
    height: 300
  },
  color: {
    pattern: ['#79BAD9', '#FFDE88', '#FFA188']
  }
});

c3.generate({
  bindto: '#CustomerRankChart',
  data: {
    columns: [
      ['A', 10],
      ['B', 30],
      ['C', 90],
      ['D', 120],
    ],
    type : 'donut',
    onclick: function (d, i) { console.log("onclick", d, i); },
    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    onmouseout: function (d, i) { console.log("onmouseout", d, i); }
  },
  donut: {
    title: "Iris Petal Width"
  },
  size: {
    height: 300
  },
  color: {
    pattern: ['#79BAD9', '#FFDE88', '#FFA188', '#DBF1FB']
  }
});
