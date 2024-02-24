import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/daily_challange/breakfast.dart';
import 'package:yolk_a_day/authentication/screen/daily_challange/dinner.dart';
import 'package:yolk_a_day/authentication/screen/daily_challange/lunch.dart';

class DailyChallange extends StatefulWidget {
  const DailyChallange({super.key});

  State<DailyChallange> createState() => _DailyChallangeState();
}

class _DailyChallangeState extends State<DailyChallange> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 31),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {Get.back()},
                  icon: SvgPicture.asset(
                    'assets/back.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
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
            SvgPicture.asset('assets/24.svg'),
            Text(
              "Daily Challange",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 75, 75, 75)),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
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
                onPressed: () => {Get.to(() => Breakfast())},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.black),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/breakfast.svg',
                        width: 65,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Breakfast",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
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
                onPressed: () => {Get.to(() => Lunch())},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.black),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/lunch.svg',
                        width: 65,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Lunch",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
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
                onPressed: () => {Get.to(() => Dinner())},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.black),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/dinner.svg',
                        width: 65,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Dinner",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/drink.svg',
                        width: 65,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Drink Enough",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
