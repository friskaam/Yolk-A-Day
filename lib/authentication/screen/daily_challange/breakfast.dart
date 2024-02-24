import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yolk_a_day/component/custom_progress_bar.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({super.key});

  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  late double progressGrains = 0.0;
  late double progressProtein = 0.0;
  late double progressVegetables = 0.0;
  late double progressFruits = 0.0;
  late double progressDairy = 0.0;
  late double progressWater = 0.0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              "Breakfast",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 75, 75, 75)),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/grains.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Grains",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressGrains)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/protein.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Protein",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressProtein)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/vegetable.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Vegetables",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressVegetables)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/fruit.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Fruits",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressFruits)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/dairy.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Dairy",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressDairy)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
            SizedBox(
              height: 24,
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SvgPicture.asset(
                  'assets/nutrition-details-icons/water.svg',
                  width: 50,
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Water",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    CustomProgressBar(
                        width: 107,
                        height: 9,
                        //to change progress we need to change progress properties using setState
                        progress: progressWater)
                  ],
                ),
                SizedBox(
                  width: 34,
                ),
                Container(
                    width: 75,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black),
                        onPressed: () =>
                            {}, //TODO: Need to add when the button clicked app will show dialog to claim corn
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("200"),
                            SvgPicture.asset(
                              'assets/currency.svg',
                              width: 15,
                              height: 15,
                            ),
                          ],
                        )))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
