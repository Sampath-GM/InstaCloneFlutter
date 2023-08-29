import 'package:flutter/material.dart';

class User_post extends StatelessWidget {
  const User_post({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
             Row(
              children: [       
                 Container(
                  
                 width: 40,
                height: 40,
                decoration:const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle), 
              ),
              const SizedBox(width: 6.0),
              const Text("_Sampath_Sam",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
             ),
             const SizedBox(height:4.0),
             const  Icon(Icons.menu),
              
            ],
            
          ),
        ),
        
        Column(
          children: [
            Container(
              height: 300,
              
              color: Colors.grey,
            ),
          ],
        ),
        const Padding(
          padding:  EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:16.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                  
                ],
              ),
              Icon(Icons.bookmark)
            ],
            
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(left:16.0),
          child: Row(
            children: [
              Text("Liked by"),
            
              Padding(padding: EdgeInsets.all(4.0)),
              Text("Antony_M",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  
                ),
              ),
              Text("  and  "),
              Text(" others ",style:TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        )

      ],
    );
  }
}