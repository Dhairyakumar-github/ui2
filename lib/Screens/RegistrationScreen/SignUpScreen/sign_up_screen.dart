import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui2/Screens/NavigationBar.dart/customNavigationBar.dart';
import 'package:ui2/Screens/RegistrationScreen/SignInScreen/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isCheckBoxEnabled = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // const Text(
                      //   "HELLO...!",
                      //   maxLines: 1,
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.w700,
                      //       color: Colors.white),
                      // ),
                      const Text(
                        "Create your Account ",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          wordSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter UserName';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: "User Name*",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffb0b6ba),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Email address';
                                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: "Email ID*",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffb0b6ba),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Password';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: "Password*",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffb0b6ba),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                    width: 20,
                                    child: Checkbox(
                                        // checkColor: Colors.white,
                                        value: isCheckBoxEnabled,
                                        // visualDensity: VisualDensity(
                                        //     horizontal: 0.1, vertical: 0.5),
                                        onChanged: (value) {
                                          setState(() {
                                            isCheckBoxEnabled =
                                                !isCheckBoxEnabled;
                                          });
                                        }),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Flexible(
                                    // flex: 2,
                                    child: Text(
                                      "I Read and agree to ",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Flexible(
                                    child: Text(
                                      "Terms & Conditions",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffEA6751),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CustomNavigationBar(),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  // height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 188, 168, 168),
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xffFB6E37),
                                        Color(0xff7D37FB),
                                      ],
                                    ),
                                  ),
                                  child: const Text(
                                    "Register Now",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Text(
                                  maxLines: 1,
                                  "Or Register using Social Media",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/facebook.png",
                                    height: MediaQuery.of(context).size.width *
                                        0.08,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset(
                                    "assets/images/twitter.png",
                                    height: MediaQuery.of(context).size.width *
                                        0.06,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account? ",
                                style: TextStyle(
                                    fontSize: 13,
                                    // fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen())),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 205, 70, 228),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
