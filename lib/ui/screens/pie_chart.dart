import 'package:cognizflutter/constants/ui_constants.dart';
import 'package:cognizflutter/model/legend/legend_model.dart';
import 'package:cognizflutter/utils/color_to_hex.dart';
import 'package:cognizflutter/utils/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieScreen extends StatelessWidget {
  const PieScreen({Key? key, required this.legendModel}) : super(key: key);
  final LegendModel? legendModel;

  @override
  Widget build(BuildContext context) {
    List<int> totalCount = legendModel!.legends!.map((e) => e.count!).toList();
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          pieWidget(context, legendModel),
          Positioned(
              bottom: UiConstants(context).height / 2.5,
              left: UiConstants(context).width / 6,
              child: Column(
                children: [
                  Text(
                    totalCount.reduce((a, b) => a + b).toString(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(legendModel!.inner_title!),
                ],
              ))
        ],
      ),
      //  )
    );
  }

  Row pieWidget(BuildContext context, LegendModel? legendModel) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                legendModel!.title!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .merge(const TextStyle(fontSize: 24)),
              ),
              SizedBox(
                height: UiConstants(context).height / 3,
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: UiConstants(context).width / 5,
                    sections: showingSections(legendModel.legends),
                  ),
                ),
              ),
            ],
          ),

          //  ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (Legends legend in legendModel.legends!)
                Column(
                  children: [
                    legendMethod(context,
                        color: HexColor(legend.color!),
                        legendCount: legend.count,
                        legendName: legend.name,
                        percentage: '${(100 * legend.count! ~/ 100)}%'),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  Row legendMethod(BuildContext context,
      {String? legendName,
      Color? color,
      int? legendCount,
      String? percentage}) {
    return Row(
      children: [
        Expanded(
          child: Indicator(
            color: color!,
            text: legendName!,
            isSquare: false,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                legendCount.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .merge(const TextStyle(fontSize: 16)),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(percentage!)
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections(List<Legends>? legendList) {
    return List<PieChartSectionData>.generate(legendList!.length, (index) {
      const fontSize = 25.0;
      const radius = 10.0;
      const shadows = [Shadow(color: Colors.transparent, blurRadius: 2)];

      return PieChartSectionData(
        color: HexColor(legendList[index].color!),
        value: legendList[index].count!.toDouble(),
        // title: '40%',
        showTitle: false,
        radius: radius,
        titleStyle: const TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          shadows: shadows,
        ),
      );
    });
  }
}
