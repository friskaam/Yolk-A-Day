import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/daily_challange.dart';

class Challange extends StatefulWidget {
  const Challange({super.key});

  State<Challange> createState() => _ChallangeState();
}

class _ChallangeState extends State<Challange> {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 31),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/currency.svg',
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    "200",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(75, 75, 75, .7)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 44,
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
            width: double.infinity,
            height: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(221, 221, 221, 0.25),
                      blurRadius: 10),
                  BoxShadow(
                      color: Color.fromRGBO(221, 221, 221, 0.50),
                      blurRadius: 10)
                ]),
            child: ElevatedButton(
              onPressed: () => {Get.to(DailyChallange())},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Colors.black),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SvgPicture.asset(
                  'assets/daily-challange.svg',
                  width: 113,
                ),
                Text(
                  "Daily Challange",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
            width: double.infinity,
            height: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(221, 221, 221, 0.25),
                      blurRadius: 10),
                  BoxShadow(
                      color: Color.fromRGBO(221, 221, 221, 0.50),
                      blurRadius: 10)
                ]),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Colors.black),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SvgPicture.asset(
                  'assets/special-challange.svg',
                  width: 113,
                ),
                Text(
                  "Special Challange",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
