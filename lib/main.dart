import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:sampat/pages/Home.dart';
import 'package:sampat/login.dart';
import "package:sampat/utils/route.dart";
  
void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: LoginPage(),
     theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily:GoogleFonts.lato().fontFamily, 
      appBarTheme:const AppBarTheme(
      // color: Colors.white,
      // elevation: 0.0,
      iconTheme:  IconThemeData (color: Colors.black),
      ),
      
     ),
     
     debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeroute:(context) => const Home(),
         MyRoutes.loginroute:(context) =>  LoginPage(),
      },
    );
  }
}























// import 'package:flutter/material.dart';
// void main() {
//   runApp( MyApp());

// }
//  class MyApp extends StatelessWidget {
//   //  MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Material(
//         child: Center(
//           child: Container(
//             child: const Text("Demo page"),
//           ),
//         ),
//       ),
//     );
//   }
//   }

// class MyApp extends StatelessWidget {
//   int sa=21;
//   String name="sampath";
//   // const MyApp ({Key key}) : super(key:key);
// @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Material(
//         appBar:AppBar(
//           title: Text("HOME PAGE"),
//         ),
        
//         child: Center(
//           // child: Container(
//             child: Text("$name your lucky number is $sa"),
//           ),
//           ),
//         );
//   }
// }

