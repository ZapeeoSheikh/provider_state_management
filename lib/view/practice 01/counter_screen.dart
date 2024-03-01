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
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Clock Time",
              style: TextStyle(fontSize: 25, color: Colors.teal, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Consumer<ClockProvider>(builder: (context, value, child) {
              return Text(
                "${value.timeNow}\n${value.dateNow}",
                style: const TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              );
            }),
            const Text(
              "in Pakistan",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
