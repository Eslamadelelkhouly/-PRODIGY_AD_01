import 'package:calculator/constant/style.dart';
import 'package:calculator/controller/data_controller.dart';
import 'package:calculator/home/container_number.dart';
import 'package:calculator/home/container_three.dart';
import 'package:calculator/home/contianer_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Consumer<DataController>(
      builder: (context, controller, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Text('Calculator',
                    style: Style.publicStyle.copyWith(color: Colors.black)),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 100.h,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(
                    child: Text(Provider.of<DataController>(context).data,
                        style: Style.publicStyle),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    ContainerNumber(
                      text: 'x',
                      onPressed: () {
                        controller.clear(controller.data);
                      },
                    ),
                    ContainerNumber(
                      text: '^',
                      onPressed: () {
                        controller.setOprand('^');
                        controller.set('^');
                      },
                    ),
                    ContainerNumber(
                      text: '%',
                      onPressed: () {
                        controller.setOprand('%');
                        controller.set('%');
                      },
                    ),
                    ContainerNumber(
                      text: '/',
                      onPressed: () {
                        controller.setOprand('/');
                        controller.set('/');
                      },
                    ),
                    ContainerNumber(
                      text: '*',
                      onPressed: () {
                        controller.setOprand('*');
                        controller.set('*');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    ContainerNumber(
                      text: '1',
                      onPressed: () {
                        controller.set('1');
                      },
                    ),
                    ContainerNumber(
                      text: '2',
                      onPressed: () {
                        controller.set('2');
                      },
                    ),
                    ContainerNumber(
                      text: '3',
                      onPressed: () {
                        controller.set('3');
                      },
                    ),
                    ContainerNumber(
                      text: '4',
                      onPressed: () {
                        controller.set('4');
                      },
                    ),
                    ContainerNumber(
                      text: '5',
                      onPressed: () {
                        controller.set('5');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    ContainerNumber(
                      text: '6',
                      onPressed: () {
                        controller.set('6');
                      },
                    ),
                    ContainerNumber(
                      text: '7',
                      onPressed: () {
                        controller.set('7');
                      },
                    ),
                    ContainerNumber(
                      text: '8',
                      onPressed: () {
                        controller.set('8');
                      },
                    ),
                    ContainerNumber(
                      text: '9',
                      onPressed: () {
                        controller.set('9');
                      },
                    ),
                    ContainerNumber(
                      text: '0',
                      onPressed: () {
                        controller.set('0');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    ContianerTwo(
                      text: '+',
                      onPressed: () {
                        controller.setOprand('+');
                        controller.set('+');
                      },
                    ),
                    ContianerTwo(
                      text: '-',
                      onPressed: () {
                        controller.setOprand('-');
                        controller.set('-');
                      },
                    ),
                    ContainerNumber(
                      text: '.',
                      onPressed: () {
                        controller.set('.');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ContainerThree(
                  text: '=',
                  onPressed: () {
                    controller.setEqual();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
