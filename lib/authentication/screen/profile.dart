import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        SizedBox(
          height: 55,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/edit.svg',
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              'assets/setting.svg',
              height: 30,
              width: 30,
            )
          ],
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        ),
        SizedBox(
          height: 22,
        ),
        Text("User5576")
      ]),
    );
  }
}
