var svg = dimple.newSvg("#chartContainer", 590, 400);
    d3.csv("data/PassengerData.csv", function (data) {
      var myChart = new dimple.chart(svg, data);
      myChart.setBounds(60, 30, 510, 305)
      var x = myChart.addCategoryAxis("x", "Month");
      //x.addOrderRule("Date");
      myChart.addMeasureAxis("y", "TotalPassengers");
      myChart.addSeries(null, dimple.plot.bar);
      myChart.draw();
    });