import 'package:cognizflutter/constants/navConstants.dart';
import 'package:cognizflutter/constants/uiConstants.dart';
import 'package:cognizflutter/model/legend/legendModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Legends>? legends = [
      const Legends(name: 'Hot', color: UiConstants.hotColor, count: 35),
      const Legends(name: 'Warm', color: UiConstants.warmColor, count: 35),
      const Legends(name: 'Cold', color: UiConstants.coldColor, count: 90)
    ];
    return Scaffold(
      body: Container(
        width: UiConstants(context).width,
        //color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: UiConstants(context).width / 2,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      NavConstants.login,
                    );
                  },
                  child: const Text('Go To Login')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: UiConstants(context).width / 2,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NavConstants.pie,
                        arguments: LegendModel(
                            title: "Prospect By Status",
                            inner_title: "Total Prospects",
                            legends: legends));
                  },
                  child: const Text('Go To Custom Widget')),
            ),
          ],
        ),
      ),
    );
  }
}
