import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'commonWidgets/formNum.dart';
import 'commonWidgets/lButton.dart';
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

  double average = 0.0;
  double sI = 0.0;
  double rI = 0.0;
  double sII = 0.0;
  double rII = 0.0;


  calcu(){
    String highControl = _highController.text;
    String lowControl = _lowController.text;
    String closeControl = _closeController.text;
    double high = double.parse(highControl);
    double low = double.parse(lowControl);
    double close = double.parse(closeControl);



    double pivA = high + low + close;
    double pivAS = pivA /3;
    String pivS = pivAS.toStringAsFixed(5);
    double piv = double.parse(pivS);

    double supp1 = 2 * piv;
    double sup1 = supp1 - high;
    double res1 = (2 * piv) - low;
    double sup2 = piv -(res1 - sup1);
    double res2 = (piv - sup1) + res1;

    debugPrint('supp===========$sup1');
    debugPrint('res1===========$res1');
    debugPrint('sup2===========$sup2');
    debugPrint('piv===========$piv');
    debugPrint('res2===========$res2');

    setState(() {
      average = piv;
      sI = sup1;
      rI = res1;
      sII = sup2;
      rII = res2;
    });
  }


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
              GestureDetector(
                onTap: (){
                  calcu();
                },
                  child: LoginB(text: Strings.calc, style: kLoginButton,)),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(Strings.s1,style: kFirstN,),
                      Text('$sI',style: kFirstN,),
                    ],
                  ),
                  SizedBox(width: 10.w,),
                  Row(
                    children: [
                      Text(Strings.s2, style: kFirstN,),
                      Text('$sII', style: kFirstN,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(Strings.r1,style: kFirstN,),
                      Text('$rI',style: kFirstN,),
                    ],
                  ),
                  SizedBox(width: 10.w,),
                  Row(
                    children: [
                      Text(Strings.r2,style: kFirstN,),
                      Text('$rII',style: kFirstN,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Strings.pivot,style: kFirstN,),
                  Text('$average',style: kFirstN,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
