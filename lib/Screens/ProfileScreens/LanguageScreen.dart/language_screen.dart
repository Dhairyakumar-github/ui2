import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  final int selectedIndex; // Accept the current selected index as a parameter

  const LanguageScreen({super.key, required this.selectedIndex});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> _languageList = [
    "English",
    "Spanish",
    "Mandarin",
    "Hindi",
    "Arabic",
    "Bengali",
    "Portuguese",
    "Russian",
    "Japanese",
    "Punjabi",
    "German",
    "French",
    "Korean",
    "Turkish",
    "Vietnamese",
    "Italian",
    "Thai",
    "Persian",
    "Dutch",
    "Swahili",
    "Hebrew"
  ];

  late int selectedIndex; // Initialize selectedIndex

  @override
  void initState() {
    super.initState();
    // Set selectedIndex to the value passed from the previous screen
    selectedIndex = widget.selectedIndex;
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
                                "Language",
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
                    final data = _languageList[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Update selected index and pass the value back
                            setState(() {
                              selectedIndex = index;
                            });
                            // Pass the selected language and index back to the previous screen
                            Navigator.pop(context,
                                {'language': data, 'index': selectedIndex});
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
                                color: selectedIndex == index
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : const Color.fromARGB(255, 122, 119, 119),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.join_right_rounded,
                          color: selectedIndex == index
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : const Color.fromARGB(255, 122, 119, 119),
                          size: 14,
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: _languageList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
