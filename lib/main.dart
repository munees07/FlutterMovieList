import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favorite Movies List',
      home: MovieListScreen(),
    );
  }
}

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  var movies = [
    'John Wick',
    'Hangover',
    'Avengers',
    'Infinity War',
    'End Game',
    'Spider Man',
    'Batman',
    'One piece',
    'Game of Thrones',
    'Vikings',
    'Breaking Bad',
    'Money Heist',
    'Iron Man',
    'Captain America',
    'Ant Man',
    'DareDevil'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title:
            const Text('Favorite Movies List', style: TextStyle(fontSize: 25)),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.separated(
          itemCount: movies.length,
          separatorBuilder: (context, index) {
            return const Divider(
              indent: 20,
              endIndent: 20,
              height: 20,
              thickness: 1,
              color: Colors.black54,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(
                Icons.movie,
                color: Colors.black54,
              ),
              title: Text(
                movies[index],
                style: const TextStyle(color: Colors.black87),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget listItem(String message) {
    return Card(
      child: SizedBox(
          height: 80,
          child: Center(
              child: Text(
            message,
            style: const TextStyle(fontSize: 20),
          ))),
    );
  }
}
