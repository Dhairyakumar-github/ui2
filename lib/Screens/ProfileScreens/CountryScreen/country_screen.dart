import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  List countryList = [
    "Argentina",
    "Australia",
    "Austria",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Bermuda",
    "Bhutan",
    "Botswana",
    "Brazil",
    "Brunei Darussalam",
    "Bulgaria",
    "Cambodia",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "China",
    "Cuba"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Row(
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
                            "Language",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 168, 168),
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffFB6E37),
                              Color(0xff7D37FB),
                            ],
                          ),
                        ),
                        height: 35,
                        width: 35,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ListView to show the languages
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final data = countryList[index];
                  return GestureDetector(
                    onTap: () {
                      // Update selected index and pass the value back
                      setState(() {
                        selectedIndex = index;
                      });
                      // Pass the selected language back to the previous screen
                      Navigator.pop(context, data);
                    },
                    child: SizedBox(
                      height: 40,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: selectedIndex == index
                                ? Colors.blue // Highlight selected language
                                : const Color.fromARGB(
                                    255, 122, 119, 119), // Default color
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: countryList.length,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
