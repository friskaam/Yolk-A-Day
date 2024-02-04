import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/controllers/register_controller.dart';

import '/../../../navigation_menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    final controller = ;
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 56),
            child: Column(
              children: [
                SizedBox(
                  height: 318,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      OverflowBox(
                        maxWidth: 600,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(300),
                                  bottomRight: Radius.circular(300)),
                              color: Color.fromARGB(255, 248, 192, 56)),
                        ),
                      ),
                      const Positioned(
                        bottom: 132,
                        child: Text(
                          "One step closer",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Outfit',
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 149,
                ),
                Form(
                    key: ,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.emailUsername,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 248, 192, 56),
                                      width: 3,
                                      style: BorderStyle.solid)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 248, 192, 56),
                                      width: 3,
                                      style: BorderStyle.solid)),
                              labelText: 'Username/Email',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.normal)),
                          style: const TextStyle(),
                          validator: ,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: ,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 248, 192, 56),
                                      width: 3,
                                      style: BorderStyle.solid)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 248, 192, 56),
                                      width: 3,
                                      style: BorderStyle.solid)),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.normal)),
                          style: const TextStyle(),
                          validator: ,
                        ),
                        const SizedBox(
                          height: 47,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  const Color.fromARGB(255, 248, 192, 56)),
                              onPressed: () => Get.to(() => const NavigationMenu()),
                              child: const Text('Log In')),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}