import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pivot_point/pivotPoint.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(360, 690),
      builder: (BuildContext context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: const PivotPoints(),
        );
      }
    );
  }
}


