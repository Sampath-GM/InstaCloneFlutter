import 'package:flutter/material.dart';
import 'package:sampat/pages/stories.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                    
                  ),
                  const Column(
                    children: [
                      Text("0",
                      style: TextStyle(
                        fontSize: 30,
                
                      ),),
                      Text("Posts")
                    ],
                  ),
          
                 const Column(
                    children: [
                      Text("999",
                      style: TextStyle(
                        fontSize: 30,
                
                      ),),
                      Text("Follwers")
                    ],
                  ),
          
                  const Column(
                    children: [
                      Text("100",
                      style: TextStyle(
                        fontSize: 27,    
                      ),),
                      Text("Follwing")
                    ],
                  ),
                ],
            ),
          ),
           const Padding(
             padding:  EdgeInsets.all(8.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SAMPATH",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("I create a apps and websites"),
                Text("https://www.youtube.com/watch?v=Ez8F0nW6S-w&t=4033s",
                style:TextStyle(color: Colors.blue) ,),
              ],
                     ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              children: [
                 Container(
                  height: 30,
                  width: 150,
                  color: Colors.grey[400],
                  child:const Padding(
                    padding:  EdgeInsets.only(top:5.0),
                    child: Text("Edit profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),                    
                        textAlign: TextAlign.center,),
                  ),
                  
                ),
                const SizedBox(width: 6.0,),
                Container(
                  height: 30,
                  width: 150,
                  color: Colors.grey[400],
                  child:const Padding(
                    padding:  EdgeInsets.only(top:5.0),
                    child: Text("Share profile",
                    
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),                    
                        textAlign: TextAlign.center,),
                  ),
                )
              ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
              children: [
                Stories(text: "Sampath"),
                Stories(text: "Arjun"),
                Stories(text: "Ram"),
                Stories(text: "Bhim"),
              ],
             ),
           ),
          const TabBar(
              tabs:[
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon:Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
               ),
        ],
      ),
    );
  }
}