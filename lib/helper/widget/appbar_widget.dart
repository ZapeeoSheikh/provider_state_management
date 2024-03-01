import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      title: const Text(
        "Provider State Management",
        style: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),
      ),
    );
  }
}
