import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shadowColor: Color.fromRGBO(75, 75, 75, 0.5),
      child: Row(children: [
        SizedBox(
          child: SvgPicture.asset(
            'assets/navigation-icons/home.svg',
            width: 30,
            height: 30,
          ),
        )
      ]),
    );
  }
}
