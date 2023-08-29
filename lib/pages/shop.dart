import 'package:flutter/material.dart';
import 'package:sampat/pages/gridshop.dart';

class Usershop extends StatelessWidget {
  const Usershop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation:0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            
            color: Colors.grey[300],
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  color: Colors.grey[300],
                  child: Text("Search",
                  style: TextStyle(color: Colors.grey[700]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body:const ShopGred(),
    );
  }
}