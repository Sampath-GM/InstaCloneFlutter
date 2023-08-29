import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  // const Stories({super.key});
  final String text;

   Stories({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color:Colors.grey
                      )
                  ),
                Text(text)
                ],
              ),
               
              );
  }
}