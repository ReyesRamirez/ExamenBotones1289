import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.purple, // Cambiado a morado
      ),
      body: Column(
        children: [
          // instagram stories
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink, // Cambiado a rosa
                    ),
                    child: Center(
                      child: Text(
                        _stories[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color:
                                Colors.white), // Letra blanca para las stories
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[100], // Cambiado a morado más claro
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(_post[
                          index]), // Letra negra para los posts (por defecto)
                    ),
                    height: 150,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
