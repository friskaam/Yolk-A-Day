import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 56),
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(300),
                              bottomRight: Radius.circular(300)),
                          color: Color.fromARGB(255, 248, 192, 56)),
                    ),
                  ),
                  Positioned(
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
            SizedBox(
              height: 29,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
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
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
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
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
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
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
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
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 47,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 248, 192, 56)),
                          onPressed: () {},
                          child: Text('Register')),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
