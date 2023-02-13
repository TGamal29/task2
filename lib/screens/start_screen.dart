import 'package:flutter/material.dart';
import 'package:nectar/screens/login_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({ Key? key }) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/startScreen.jpg",),fit: BoxFit.cover,)),

            ),
          Center(
            child: Column(
              
              verticalDirection: VerticalDirection.up,
              children: [
                const SizedBox(
                  height: 60,),
              MaterialButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,vertical: 20,
                  ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>const LoginScreen(),
                  )
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14),),
                color: const Color.fromARGB(255, 99, 205, 129),
                child: const Text('Get Stared',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 20,),
                const Text('Get your groceries in as fast as one houre',
                  style: TextStyle(
                    color: Color.fromARGB(209, 255, 255, 255)),
                    ),
                const Text(
                  'to our store',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 40,fontWeight: FontWeight.w500),),
                const Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w500),),
                Image.asset('assets/carrot.png',scale: 25,)
            ],),
          )  
        ],
      ),
    );
  }
}