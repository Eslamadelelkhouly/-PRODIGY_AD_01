import 'package:calculator/controller/data_controller.dart';
import 'package:calculator/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CalCulator());
}

class CalCulator extends StatelessWidget {
  const CalCulator({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X size as base
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return ChangeNotifierProvider(
          create: (context) => DataController(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CalCulator',
            home: const HomeScreen(),
          ),
        );
      },
    );
  }
}
