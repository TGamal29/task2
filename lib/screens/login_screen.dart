import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar/screens/home_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
         Padding(
           padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
           child: Column(
              children: [
                Image.asset('assets/login.png'),
                const SizedBox( height: 70,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Get your groceries                              with nectar',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Color.fromARGB(239, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntlPhoneField(
                    
                  ),
                ),
                const SizedBox(height: 30,),
                const Text('Or connect with social media',
                style: TextStyle(color: Colors.grey ,
                fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20),
                     child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset('assets/google.png'),
                          height: 20,
                          width: 20,
                          ),
                          const SizedBox(width: 50,),
                        const Text('Continue with Google',
                        style: TextStyle(color: Color.fromARGB(233, 255, 255, 255),fontSize: 20),)
                  ],),
                   )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MaterialButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen())); 
                  },
                  color: const Color.fromARGB(255, 32, 85, 192),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20),
                     child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset('assets/facebook.png'),
                          height: 20,
                          width: 20,
                          ),
                          const SizedBox(width: 50,),
                        const Text('Continue with Facebook',
                        style: TextStyle(color: Color.fromARGB(233, 255, 255, 255),fontSize: 20),)
                  ],),
                   )),
                ),
              ],
            ),
         ),
    );
  }
}