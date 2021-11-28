import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraficosPage extends StatefulWidget {
  const GraficosPage({Key? key}) : super(key: key);

  @override
  _GraficosPageState createState() => _GraficosPageState();
}

class _GraficosPageState extends State<GraficosPage> {
  late List<GDPData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff9056ab),
                boxShadow: [
                  BoxShadow(color: Colors.white38, spreadRadius: 10, blurRadius: 3)
                ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 25, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "FinControl",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.black12, spreadRadius: 10, blurRadius: 3)
              ]),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Entradas/Saídas",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+ R\$ 500",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 150,
                          child: SfCartesianChart(
                            series: <ChartSeries>[
                              BarSeries<GDPData, String>(
                                  dataSource: _chartData,
                                  xValueMapper: (GDPData gdp, _) =>
                                      gdp.continent,
                                  yValueMapper: (GDPData gdp, _) => gdp.gdp)
                            ],
                            primaryXAxis: CategoryAxis(),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 20,
            children: [
              Container(
                width: (size.width - 60) / 2,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white38,
                        spreadRadius: 10,
                        blurRadius: 3,
                        // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Saídas",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.white,
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "R\$ 500",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: (size.width - 60) / 2,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white38,
                        spreadRadius: 10,
                        blurRadius: 3,
                        // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Entradas",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.white,
                            ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "R\$ 1000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Entrada', 1000),
      GDPData('Saída', 500),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);

  final String continent;
  final double gdp;
}
