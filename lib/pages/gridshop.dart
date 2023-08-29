import 'package:flutter/material.dart';

class ShopGred extends StatelessWidget {
  const ShopGred({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 16,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding:const EdgeInsets.all(2),
          child: Container(
            color: Colors.blueGrey[200],
          ),
          );
      },
    );
  }
}