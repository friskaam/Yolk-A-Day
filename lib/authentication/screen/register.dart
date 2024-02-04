import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yolk_a_day/authentication/controllers/register_controller.dart';
import 'package:yolk_a_day/authentication/validators/validator.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 56),
        child: Column(
          children: [
            SizedBox(
              height: 269,
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
                    bottom: 60,
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
              height: 29,
            ),
            Form(
                key: controller.registerFormKey,
                child: Column(
                  children: [

                    // username
                    TextFormField(
                      controller: controller.username,
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
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.normal)),
                      style: const TextStyle(),
                      validator: (value) => FormValidator.validateUsername(value),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    // email
                    TextFormField(
                      controller: controller.email,
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
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.normal)),
                      style: const TextStyle(),
                      validator: (value) => FormValidator.validateEmail(value),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    // password
                    TextFormField(
                      controller: controller.password,
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
                      validator: (value) => FormValidator.validatePassword(value),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    // confirm password
                    TextFormField(
                      controller: controller.confirmPassword,
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
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.normal)),
                      style: const TextStyle(),
                      validator: (value) => FormValidator.validateConfirmPassword(controller.password.text, controller.confirmPassword.text),
                    ),
                    const SizedBox(
                      height: 47,
                    ),

                    // register button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 248, 192, 56)),
                          onPressed: () => controller.register(),
                          child: const Text('Register')),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    ));
  }
}
