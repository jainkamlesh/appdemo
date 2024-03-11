import 'package:appdemo/views/calculator_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text('Calculator')),
        backgroundColor: Color.fromARGB(178, 33, 130, 241),

      ),
        body: SafeArea(
        child: Container(color: Color.fromARGB(94, 14, 120, 226),
        child: const CalculatorView()),
      ));
  }
}