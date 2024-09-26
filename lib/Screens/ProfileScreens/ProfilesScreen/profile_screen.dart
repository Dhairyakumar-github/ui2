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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Profile",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfileScreen())),
                            child: const Text(
                              "Edit",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xff7D37FB),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Theodore Handle",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Washington Jackson, Pennsylvania",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "theodore@gmail.com",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: const Text(
                                  "Language",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              GestureDetector(
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
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: Text(
                                        "$selectedLanguage",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                      child: const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LocationScreen()));
                                },
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: const Text(
                                    "Location",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 35,
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
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: const Text(
                                  "Notification",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                                // width: ,
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
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: const Text(
                                  "Country",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              GestureDetector(
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
                                    Container(
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: Text(
                                        "$selectedCountry",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text(
                                  "Privacy Policy",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
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
