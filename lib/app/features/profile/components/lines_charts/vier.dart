import 'package:dask/app/features/profile/components/lines_charts/line_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({super.key});

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    final Color colorblack2 = Color.fromRGBO(35, 36, 41, 1);
    final Color colorBlack1 = Color.fromRGBO(10, 11, 13, 1);
    final Color colorGreen = Color.fromRGBO(35, 217, 183, 1);

    return Scaffold(
      appBar: AppBar(
        title: Text('Dask Investing'),
      ),
      backgroundColor: Color.fromRGBO(10, 11, 13, 1),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              const SizedBox(
                height: 37,
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(35, 36, 41, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Container(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 170,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(190, 180, 41, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Container(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                ),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 36, 41, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: LineChartCustom(
                    isShowingMainData: isShowingMainData,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
            ),
            onPressed: () {
              setState(
                () {
                  isShowingMainData = !isShowingMainData;
                },
              );
            },
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: Colors.red,
      ),
    );
  }
}
