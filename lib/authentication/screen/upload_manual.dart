import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/upload_camera.dart';

class UploadManual extends StatefulWidget {
  const UploadManual({super.key});

  @override
  State<UploadManual> createState() => _UploadManualState();
}

class _UploadManualState extends State<UploadManual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 60,
          ),
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              'assets/back.svg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(221, 221, 221, 0.25),
                            blurRadius: 10),
                        BoxShadow(
                            color: Color.fromRGBO(221, 221, 221, 0.50),
                            blurRadius: 10)
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: IconButton(
                          onPressed: () {
                            Get.to(UploadCamera());
                          },
                          icon: SvgPicture.asset(
                            'assets/camera.svg',
                          ),
                          iconSize: 30,
                        )),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: SvgPicture.asset('assets/search.svg'),
                    onPressed: () {},
                    iconSize: 30,
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
