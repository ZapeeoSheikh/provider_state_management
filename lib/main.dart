import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/provider/favriote_provider.dart';
import 'package:provider_state_management/view/practice%2002/items_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ClockProvider(),),
      ChangeNotifierProvider(create: (_) => FavrioteProvider(),),
    ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            // home: CounterScreen()
            home: ItemsListScreen()
        ),
    );
  }
}
