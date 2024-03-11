import 'package:appdemo/views/home_view.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "flutter demo",
    theme:ThemeData(primarySwatch: Colors.pink),
    home: const HomeView(),
    );
  }
}