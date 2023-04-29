import 'package:dask/app/features/profile/components/chart_data/data.dart';
import 'package:dask/app/features/profile/components/charts/line_charts.dart';
import 'package:flutter/material.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({Key? key}) : super(key: key);

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  const Text(
                    'Line Chart',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //MyLineChart(chartData),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
