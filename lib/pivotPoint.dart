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
  final TextEditingController _highController = TextEditingController();
  final TextEditingController _lowController = TextEditingController();
  final TextEditingController _closeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLoanCard,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r, top: 30.r),
          child: Column(
            children: [
              Center(child: Text(Strings.pivotP, style: kFirstN,)),
              SizedBox(height: 20.h,),
              FormNum(text: Strings.high, hText: Strings.high, controller: _highController),
              SizedBox(height: 10.h,),
              FormNum(text: Strings.low, hText: Strings.low, controller: _lowController,),
              SizedBox(height: 10.h,),
              FormNum(text: Strings.close, hText: Strings.close, controller: _closeController,),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Strings.s1,style: kFirstN,),
                  SizedBox(width: 10.w,),
                  Text(Strings.s2,style: kFirstN,)
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Strings.r1,style: kFirstN,),
                  SizedBox(width: 10.w,),
                  Text(Strings.r2,style: kFirstN,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
