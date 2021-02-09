import 'package:charts/src/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts'),
      ),
      body: ListView(
        children: [
          _rowBtns(context, "Bar Charts Simple", "bar-charts-simple",
              "Time Series Simple", "time-series-simple"),
          _rowBtns(context, "Pie Simple", "pie-simple", "Pie Outside",
              "pie-outside"),
          _rowBtns(context, "Pie Auto Label", "pie-auto-label",
              "Legends Simple", "lengeds-label"),
          _rowBtns(context, "Other", "fl-chart", "Another", "fl-chart"),
        ],
      ),
    );
  }

  _rowBtns(context, text1, route1, text2, route2) {
    return Row(children: [
      _btnGrafico(context, text1, route1),
      _btnGrafico(context, text2, route2),
    ]);
  }

  _btnGrafico(context, text, route) {
    return Container(
      child: RaisedButton(
        onPressed: () =>
            route != null ? Navigator.pushNamed(context, route) : null,
        color: hexaToColor("0294A5"),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      margin: EdgeInsets.all(1),
      height: MediaQuery.of(context).size.width * 0.49,
      width: MediaQuery.of(context).size.width * 0.49,
    );
  }
}
