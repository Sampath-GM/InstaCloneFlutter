import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
// import "package:sampat/Home.dart";
// import "package:sampat/login.dart";
import "package:sampat/utils/route.dart";

class MyDrawer extends StatelessWidget {
 const MyDrawer({super.key});
  final imageUrl="https://tse2.mm.bing.net/th?id=OIP.mY6iW1P3aCjrI1ObVLWBcgHaFj&pid=Api&P=0&h=220";
  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      child: ListView(
        children:  [
           DrawerHeader(
            padding:EdgeInsets.zero ,
             margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              
              accountName: const Text("Sampath",style: 
              TextStyle(fontSize: 20),),
              accountEmail:const Text("Sampath@gmail.com",style:
                 TextStyle(fontSize: 20),),
                 currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                 ),      
              ),
            ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeroute);
            },
            leading:const Icon(CupertinoIcons.home),
            title:const Text("Home",
            textScaleFactor: 1.3,),
            iconColor: Colors.black,
          ),
             const ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile",
            textScaleFactor: 1.3,),
            iconColor: Colors.black,
          ),
             const ListTile(
            leading: Icon(CupertinoIcons.memories),
            title: Text("Services",
            textScaleFactor: 1.3,),
            iconColor: Colors.black,
          ),
            const ListTile(
            leading: Icon(CupertinoIcons.control),
            title: Text("Contact Us",
            textScaleFactor: 1.3,),
            iconColor: Colors.black,
          ),
             ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
            leading:const Icon(CupertinoIcons.lock),
            title:const Text("Logout",
            textScaleFactor: 1.3,),
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}