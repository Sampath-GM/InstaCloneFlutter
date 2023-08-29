import 'package:flutter/material.dart';

class GridSearch extends StatelessWidget {
  const GridSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 21,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.grey[400],
          ),
          );
      },
    );
  }
}