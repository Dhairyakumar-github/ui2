import 'package:flutter/material.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({super.key});

  @override
  _MovieSearchScreenState createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> movieList = [
    'Justice League 2008',
    'Super-Man Far From Home 2019',
    'Fast & Furious Hobbs & Shaw',
    'Toy Story 04',
    'How to Train Your Dragon',
    'The Dark Knight',
    'Avengers: Endgame',
    'Inception',
    'Spider-Man: No Way Home',
    'Iron Man',
    'Thor: Ragnarok',
    'Black Panther',
    'Guardians of the Galaxy',
    'Captain America: The Winter Soldier',
    'Deadpool',
    'Wonder Woman',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Text(
                        "Movie",
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
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _searchController,
              onChanged: _filterMovies,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                hintText: "Search Movies...",
                hintStyle: const TextStyle(color: Colors.white),
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
                                  fontSize: 18,
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
    );
  }
}
