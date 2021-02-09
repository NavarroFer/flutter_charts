import 'package:charts/src/pages/bar_charts_simple_page.dart';
import 'package:charts/src/pages/home_page.dart';
import 'package:charts/src/pages/legends_simple_page.dart';
import 'package:charts/src/pages/pie_auto_page.dart';
import 'package:charts/src/pages/pie_outside_page.dart';
import 'package:charts/src/pages/pie_simple_page.dart';
import 'package:charts/src/pages/time_series_simple_page.dart';
import 'package:flutter/material.dart';
import './src/utils/utils.dart' as Utils;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charts',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'bar-charts-simple': (BuildContext context) =>
            BarChartsSimplePage.withSampleData(),
        'time-series-simple': (BuildContext context) =>
            TimeSeriesSimplePage.withSampleData(),
        'pie-simple': (BuildContext context) => PieSimplePage.withSampleData(),
        'pie-outside': (BuildContext context) =>
            PieOutsidePage.withSampleData(),
        'pie-auto-label': (BuildContext context) =>
            PieAutoPage.withSampleData(),
        'lengeds-label': (BuildContext context) =>
            LegendsSimplePage.withSampleData(),
      },
      theme: ThemeData(
        primaryColor: Utils.hexaToColor("C1403D"),
      ),
    );
  }
}
