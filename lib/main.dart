import 'package:flutter/material.dart';

void main() {
  runApp(const CalCulator());
}

class CalCulator extends StatelessWidget {
  const CalCulator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalCulator',
    );
  }
}
