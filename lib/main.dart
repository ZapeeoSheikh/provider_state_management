import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/view/practice%2001/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ClockProvider(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CounterScreen()
        )
      ) ;
  }
}
