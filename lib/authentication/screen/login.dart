import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yolk_a_day/authentication/controllers/login_controller.dart';
import 'package:yolk_a_day/authentication/validators/validator.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
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
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.emailUsername,
                      validator: (value) => FormValidator.validateEmail(value),
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 248, 192, 56),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 248, 192, 56),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                        labelText: 'Username/Email',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      style: const TextStyle(),
                      // validator: ,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: controller.password,
                        obscureText: controller.hidePassword.value,
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 248, 192, 56),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 248, 192, 56),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => controller.hidePassword.value =
                                !controller.hidePassword.value,
                            icon: Icon(controller.hidePassword.value
                                ? Iconsax.eye_slash
                                : Iconsax.eye),
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        style: const TextStyle(),
                        // validator: ,
                      ),
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
                          onPressed: () => controller.login(),
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
