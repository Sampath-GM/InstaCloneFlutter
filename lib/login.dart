import "package:flutter/material.dart";
import "package:sampat/utils/route.dart";
class LoginPage  extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  final _formkey=GlobalKey<FormState>();
  bool changebutton=false;
  moveToHome(BuildContext context) async{
    // if(_formkey.currentState.validate()){
    setState(() {
      changebutton=true;
    });
      Future.delayed (const Duration(seconds: 0));
                        
      await  Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
      changebutton=false;
      });
  // }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,
            
            ),
            const SizedBox(
               height: 8.0,
            ), 
           Text(
            "Welcome $name",
          style:const TextStyle(
            fontSize: 30.0,
            fontWeight:FontWeight.bold,
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 30.0),
            child: Column(
                children: [
                   TextFormField(
                    decoration:const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator:(value) {
                      if(name.isEmpty){
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged:(value){ 
                      name=value;
                      setState(() {});           
                    }, 
                   ),
                   TextFormField(
                    obscureText: true,
                    decoration:const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ), 
                     validator: (value) {
                      if(name.isEmpty){
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                   ),
                   const SizedBox(
                    height: 42.0,
                   ),
                   Material(
                    borderRadius: BorderRadius.circular(changebutton?20:8),
                    color: Colors.deepPurple,                   
                     child: InkWell(                 
                      onTap: ()=>moveToHome(context),
                       child: AnimatedContainer(
                        duration:const Duration(seconds: 1),
                        height: 50,
                        width:changebutton?50:150,
                        alignment: Alignment.center,
                        child:changebutton?const Icon(Icons.done,
                        color: Colors.white,
                        ):const Text("login",
                        
                        style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        ),
                        ),
                        
                        ),
                                       ),
                     ),
                 
                ],
              ),
          ),
          ], 
        ),
      ),
    );
     
  }
}