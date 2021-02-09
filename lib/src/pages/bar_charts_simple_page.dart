/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BarChartsSimplePage extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  BarChartsSimplePage(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory BarChartsSimplePage.withSampleData() {
    return new BarChartsSimplePage(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new charts.BarChart(
        seriesList,
        animate: animate,
        behaviors: [
          charts.InitialHintBehavior(maxHintTranslate: 4.0),
          charts.PanAndZoomBehavior(),
          charts.ChartTitle("Titulo"),
          charts.SeriesLegend(),
        ],
      ),
      appBar: AppBar(
        title: Text('Bar Charts - Simple'),
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
