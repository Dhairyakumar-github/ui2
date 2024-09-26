import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  final int selectedCountryIndex;
  const CountryScreen({super.key, required this.selectedCountryIndex});

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

  late int selectedCountryIndex; // Initialize selectedIndex

  @override
  void initState() {
    super.initState();
    // Set selectedIndex to the value passed from the previous screen
    selectedCountryIndex = widget.selectedCountryIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              "Country",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
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
            const SizedBox(height: 20),
            // ListView to show the languages
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final data = countryList[index];
                  return GestureDetector(
                    onTap: () {
                      // Update selected index and pass the value back
                      setState(() {
                        selectedCountryIndex = index;
                      });
                      // Pass the selected language and index back to the previous screen
                      Navigator.pop(context,
                          {'country': data, 'index2': selectedCountryIndex});
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        data,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          color: selectedCountryIndex == index
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : const Color.fromARGB(255, 122, 119, 119),
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
  }
}
