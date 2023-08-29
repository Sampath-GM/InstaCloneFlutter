import 'package:flutter/material.dart';
import 'package:sampat/pages/User_post.dart';

import 'package:sampat/pages/stories.dart';

class Userhome extends StatelessWidget {
  const Userhome({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(8.0),
                child: Icon(Icons.favorite)),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stories(text: "_Sampath_Sam",),
                Stories(text: "_Shubang_Cs",),
                Stories(text: "_Sumith_Ks",),
                Stories(text: "_Gowtham_Gowth",),
                Stories(text: "_Akshay_antony",),
          
              ],
            ),
          ),
            // ListView.builder(
            //   itemBuilder: ((context, index) {
                
            //   }
            Expanded(
              child:ListView(
                scrollDirection: Axis.vertical,
                children:const [
                User_post(),
                User_post(),
                User_post(),
                User_post(),
                User_post()
                ],
              )) 
        ],
      ),
    );
  }
}