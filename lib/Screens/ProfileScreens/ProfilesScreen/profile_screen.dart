import 'package:flutter/material.dart';
import 'package:ui2/Screens/ProfileScreens/CountryScreen/country_screen.dart';
import 'package:ui2/Screens/ProfileScreens/EditProfileScreen/edit_profile_screen.dart';
import 'package:ui2/Screens/ProfileScreens/LanguageScreen.dart/language_screen.dart';
import 'package:ui2/Screens/ProfileScreens/LocationScreen/location_screen.dart';
import 'package:ui2/Screens/ProfileScreens/ProfilesScreen/widgits/switchClass.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool locationvalue = true;
  bool notificationvalue = true;
  String selectedLanguage = 'English';
  int selectedIndex = 0;
  int selectedCountryIndex = 0;
  String selectedCountry = "Australia";
  bool status = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: GestureDetector(
                          // onTap: () => Navigator.pop(context),
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
                                  "Profile",
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
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EditProfileScreen())),
                        child: const Text(
                          "Edit",
                          style:
                              TextStyle(color: Color(0xff7d37fb), fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: w * 0.6,
                          child: const Flexible(
                            child: Text(
                              "Theodore Handle",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_rounded,
                              size: 14,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: w * 0.55,
                              child: const Flexible(
                                child: Text(
                                  "Washington Jackson, Pennsylvania",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.email,
                              size: 14,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: w * 0.55,
                              child: const Flexible(
                                child: Text(
                                  "theodore@gmail.com",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              "Language",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LanguageScreen(
                                      selectedIndex: selectedIndex,
                                    ),
                                  ),
                                );

                                // If a language is selected, update the selectedLanguage
                                if (result != null) {
                                  setState(() {
                                    selectedLanguage = result[
                                        'language']; // Update selected language
                                    selectedIndex = result[
                                        'index']; // Update selected index
                                  });
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Text(
                                      "$selectedLanguage",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xff53596e),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LocationScreen()));
                              },
                              child: const Flexible(
                                // width: MediaQuery.of(context).size.width * 0.3,
                                child: Text(
                                  "Location",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 70),
                            height: 30,
                            width: w * 0.15 + 2,
                            child: CustomSwitch(
                              activeColor: Colors.pinkAccent,
                              value: status,
                              onChanged: (value) {
                                print("VALUE : $value");
                                setState(() {
                                  status = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xff53596e),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              "Notification",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 70),
                            height: 30,
                            width: w * 0.15 + 2,
                            child: CustomSwitch(
                              activeColor: Colors.pinkAccent,
                              value: status2,
                              onChanged: (value2) {
                                print("VALUE : $value2");
                                setState(() {
                                  status2 = value2;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xff53596e),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            // width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              "Country",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () async {
                                final countryResult = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CountryScreen(
                                      selectedCountryIndex:
                                          selectedCountryIndex,
                                    ),
                                  ),
                                );

                                // If a language is selected, update the selectedLanguage
                                if (countryResult != null) {
                                  setState(
                                    () {
                                      selectedCountry = countryResult[
                                          'country']; // Update selected language
                                      selectedCountryIndex = countryResult[
                                          'index2']; // Update selected index
                                    },
                                  );
                                }
                              },
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "$selectedCountry",
                                        textAlign: TextAlign.end,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xff53596e),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              "Privacy Policy",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xff53596e),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
