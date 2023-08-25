import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class SearchFinalPage extends StatefulWidget {
  const SearchFinalPage({super.key});

  @override
  State<SearchFinalPage> createState() => _SearchFinalPageState();
}

class _SearchFinalPageState extends State<SearchFinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(0),
          child: OutlineSearchBar(
            borderRadius: BorderRadius.circular(30),
            borderColor: const Color.fromARGB(255, 237, 237, 237),
            padding: EdgeInsets.symmetric(horizontal: 10),
            backgroundColor: Colors.white,
            hintText: 'Ask Medipal',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            textStyle: TextStyle(
              color: Colors.black,
            ),
            searchButtonIconColor: Colors.grey,
            clearButtonIconColor: Colors.grey,
            onSearchButtonPressed: (value) {
              print(value);
            },
          ),
        ),
        toolbarHeight: 80,
      ),
      body: Container(
        child: Column(children: [Text("Search Results")]),
      ),
    );
  }
}
