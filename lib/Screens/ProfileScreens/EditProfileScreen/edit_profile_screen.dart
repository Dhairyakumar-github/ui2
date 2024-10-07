import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Flexible(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "Edit Profile",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.person_add_alt_1,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Change Profile Picture",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // const Text(
                //   "Full Name*",
                //   maxLines: 1,
                //   textAlign: TextAlign.start,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //     height: 1,
                //       fontSize: 12,
                //       color: Colors.white,
                //       fontWeight: FontWeight.w300),
                // ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Full Name*",
                      labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // const Text(
                //   "Email ID*",
                //   maxLines: 1,
                //   textAlign: TextAlign.start,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //       fontSize: 14,
                //       color: Colors.white,
                //       fontWeight: FontWeight.w300),
                // ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Email ID*",
                      labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // const Text(
                //   "Address*",
                //   maxLines: 1,
                //   textAlign: TextAlign.start,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //       fontSize: 14,
                //       color: Colors.white,
                //       fontWeight: FontWeight.w300),
                // ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Address*",
                    suffixIcon: Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // const Text(
                //   "Country*",
                //   maxLines: 1,
                //   textAlign: TextAlign.start,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //       fontSize: 14,
                //       color: Colors.white,
                //       fontWeight: FontWeight.w300),
                // ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Country*",
                      labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 188, 168, 168),
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffFB6E37),
                            Color(0xff7D37FB),
                          ],
                        )),
                    child: const Text(
                      "Save Changes",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
