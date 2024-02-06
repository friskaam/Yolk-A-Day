import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/screen/login.dart';
import 'package:yolk_a_day/authentication/screen/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 276,
                padding: const EdgeInsets.only(bottom: 40),
                child: const Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 244,
                      child: Text(
                        'Crack the Health Code Everyday !',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 24.0,
                            fontFamily: 'Outfit',
                            decoration: TextDecoration.none),
                      ),
                    ))),
            SizedBox(
              width: double.infinity,
              height: 507,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  OverflowBox(
                    maxWidth: 600,
                    maxHeight: 507,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(300),
                              topRight: Radius.circular(300)),
                          color: Color.fromARGB(255, 248, 192, 56)),
                    ),
                  ),
                  Positioned(
                      bottom: 160,
                      child: SizedBox(
                        width: 196,
                        height: 99,
                        child: Column(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 38),
                                  foregroundColor:
                                  const Color.fromARGB(255, 248, 192, 56),
                                  backgroundColor: Colors.white),
                              onPressed: () => Get.to(() => const Login()),
                              child: const Text('Log In'),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 38),
                                  side:
                                  const BorderSide(color: Colors.white, width: 3),
                                  foregroundColor: Colors.white),
                              onPressed: () => Get.to(() => const Register()),
                              child: const Text('Register'),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}