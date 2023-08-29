import 'package:flutter/material.dart';

class Mycolumn extends StatelessWidget {
  const Mycolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            height: 400,
           width: 390,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}