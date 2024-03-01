import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/helper/widget/appbar_widget.dart';
import '../../provider/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  @override
  void initState() {
    // TODO: implement initState
    final clockProvider = Provider.of<ClockProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      clockProvider.clock();
    });
  }

  Widget build(BuildContext context) {
    return Consumer<ClockProvider>(builder: (context, value, child) {
      return Scaffold(
        backgroundColor: Colors.white.withOpacity(value.brightness),
        appBar: AppBarWidget(
          opacityValue: value.brightness,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Clock Time",
                style: TextStyle(
                    fontSize: 25,
                    color: value.brightness > 0.5
                        ? Colors.teal.withOpacity(value.brightness)
                        : Colors.pinkAccent.withOpacity(1 - value.brightness),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "${value.timeNow}\n${value.dateNow}",
                style: TextStyle(
                    fontSize: 30,
                    color: value.brightness > 0.5
                        ? Colors.black87.withOpacity(value.brightness)
                        : Colors.white.withOpacity(1 - value.brightness)),
                textAlign: TextAlign.center,
              ),
              Text(
                "in Pakistan",
                style: TextStyle(
                    fontSize: 18,
                    color: value.brightness > 0.5
                        ? Colors.black87.withOpacity(value.brightness)
                        : Colors.white.withOpacity(1 - value.brightness)),
                textAlign: TextAlign.center,
              ),
              Slider(
                  activeColor: Colors.teal,
                  value: value.brightness,
                  onChanged: (val) {
                    value.changeBrightness(val);
                  }),
            ],
          ),
        ),
      );
    });
  }
}
