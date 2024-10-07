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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                "Country",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      // onTap: () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const MovieSearchScreen())),
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
                            fontSize: 14,
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
      ),
    );
  }
}
