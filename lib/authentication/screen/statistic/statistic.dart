import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 56,
          ),
          SvgPicture.asset('assets/statistic.svg'),
          Text(
            'Your Statistic',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 75, 75, 75)),
          ),
          SizedBox(
            height: 35,
          ),
          //TODO: add statistic into container below.
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Container(
                width: 220,
                height: 50,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
