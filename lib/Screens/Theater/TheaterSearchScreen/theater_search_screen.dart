import 'package:flutter/material.dart';

class TheaterSearchScreen extends StatefulWidget {
  const TheaterSearchScreen({super.key});

  @override
  _TheaterSearchScreenState createState() => _TheaterSearchScreenState();
}

class _TheaterSearchScreenState extends State<TheaterSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> movieList = [
    "Divyam Talkies Brijgunj",
    "Priyam Talkies Brijgunj",
    "INOX SRMT MALL - 1",
    "Army Cinema Basant Auditorium-1",
    "Natraj Theatre Rudravaram-1",
    "Sri Venkateswara Picture Palace-Tangaturu-1",
    "M/S Nawaz Mahal",
    "Ramakrishna Theater",
    "Astor Theatre",
    "Palais Garnier"
  ];

  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList = movieList; // Initially display all movies
  }

  void _filterMovies(String query) {
    final filtered = movieList.where((movie) {
      final movieLower = movie.toLowerCase();
      final queryLower = query.toLowerCase();

      return movieLower.contains(queryLower);
    }).toList();

    setState(() {
      filteredList = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
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
                            // width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              "Theater Search",
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
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _searchController,
                style: TextStyle(color: Colors.white),
                onChanged: _filterMovies,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  hintText: "Search Theaters...",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filteredList.length,
                  itemBuilder: (context, index) {
                    final movie = filteredList[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  movie,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
