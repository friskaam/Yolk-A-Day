import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/upload_manual.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
          ),
          Text(
            'Hi, User!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 28,
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
          ),
          SizedBox(
            height: 28,
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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                'assets/daily-challange.svg',
                width: 65,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Challange',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 75, 75, 75)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 190,
                    height: 15,
                    color: Color.fromRGBO(166, 166, 166, 100),
                  )
                ],
              )
            ]),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            width: 140,
            height: 123,
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
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Colors.black),
              onPressed: () => {Get.to(UploadManual())},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/upload.svg',
                    width: 75,
                  ),
                  Text(
                    'Upload',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 75, 75, 75)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
