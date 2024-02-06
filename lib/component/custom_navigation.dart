import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(125)),
            boxShadow: [BoxShadow(color: Color.fromRGBO(75, 75, 75, 0.5))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(children: [
                SvgPicture.asset(
                  'assets/navigation-icons/home.svg',
                  width: 70,
                ),
                Text('Home')
              ]),
            )
          ],
        ),
      ),
    );
  }
}
