import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.opacityValue = 1.0});

  final double opacityValue;

  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: opacityValue > 0.5
          ? Colors.teal.withOpacity(opacityValue)
          : Colors.pinkAccent.withOpacity(1 - opacityValue),
      leading: opacityValue > 0.5
          ? const Icon(Icons.sunny, color: Colors.white,)
          : const Icon(Icons.nightlight_round, color: Colors.white,),
      title: const Text(
        "Provider State Management",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "#3",
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
        )
      ],
    );
  }
}
