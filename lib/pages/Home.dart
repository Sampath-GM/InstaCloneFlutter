import "package:flutter/material.dart";
import "package:sampat/pages/homepage.dart";
import "package:sampat/pages/profile.dart";
import "package:sampat/pages/search.dart";
import "package:sampat/pages/shop.dart";
import "package:sampat/widgets/drawer.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectindex=0;

void _navigationbard(int index){
  setState(() {
    _selectindex=index;
  });
}

final List<Widget> _children = [
 const Userhome() ,
const UserSearch(),
const Center(child: Text("reels")),
const Usershop(),
const MyProfile(),

];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _children[_selectindex],

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectindex,
      onTap: _navigationbard,
      type: BottomNavigationBarType.fixed,
       items:const[
      
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
        BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
      ],),
      
      drawer: const MyDrawer(),
    );
  }
}