import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'commonWidgets/formNum.dart';
import 'const/strings.dart';
import 'const/styles.dart';

class PivotPoints extends StatefulWidget {
  const PivotPoints({Key? key}) : super(key: key);

  @override
  State<PivotPoints> createState() => _PivotPointsState();
}

class _PivotPointsState extends State<PivotPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLoanCard,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r, top: 30.r),
          child: Column(
            children: [
              Center(child: Text(Strings.pivotP)),
              SizedBox(height: 20.h,),
              const FormNum(text: Strings.s1, hText: Strings.s1,),
              SizedBox(height: 10.h,),
              const FormNum(text: Strings.s1, hText: Strings.s1,),
              SizedBox(height: 10.h,),
              const FormNum(text: Strings.r1, hText: Strings.r1,),
              SizedBox(height: 10.h,),
              const FormNum(text: Strings.r2, hText: Strings.r2,)
            ],
          ),
        ),
      ),
    );
  }
}
