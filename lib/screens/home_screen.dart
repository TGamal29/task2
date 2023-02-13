import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {  
  @override
  Widget build(BuildContext context) {
     //const Text("Find Products",style: TextStyle(color: Colors.black),),
    return Scaffold(
       appBar: AppBar(
        bottom:PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
           child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(
              color: Color.fromARGB(255, 236, 236, 236)
          )]),
                height: 48.0,
                alignment: Alignment.center,
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text(' Search Store',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
          ),
  
        centerTitle: true,
      title: const Text("Find Products",style: TextStyle(color: Colors.black),),
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),  
    ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ,crossAxisSpacing: 10.0,mainAxisSpacing: 10.0),
        children: [
          card(const Color.fromARGB(255, 228, 255, 229),Colors.green, 'Frash Fruits & Vegetable', 'assets/vegetable and fruits.png'),
          card(const Color.fromARGB(255, 246, 242, 208), Colors.yellow,'Cooking Oil & Ghee','assets/Oil.png'),
          card(const Color.fromARGB(255, 248, 228, 252), Colors.purple,'Meat','assets/meat.png'),
          card(const Color.fromARGB(255, 243, 227, 204), Colors.orange,'Bakery and Snacks','assets/bakery.png'),
          card(const Color.fromARGB(255, 228, 255, 229),Colors.green, 'Frash Fruits & Vegetable', 'assets/vegetable and fruits.png'),
          card(const Color.fromARGB(255, 246, 242, 208), Colors.yellow,'Cooking Oil & Ghee','assets/Oil.png'),
          card(const Color.fromARGB(255, 248, 228, 252), Colors.purple,'Meat','assets/meat.png'),
          card(const Color.fromARGB(255, 243, 227, 204), Colors.orange,'Bakery and Snacks','assets/bakery.png'),
          card(const Color.fromARGB(255, 246, 242, 208), Colors.yellow,'Cooking Oil & Ghee','assets/Oil.png'),
          card(const Color.fromARGB(255, 248, 228, 252), Colors.purple,'Meat','assets/meat.png'),
          card(const Color.fromARGB(255, 243, 227, 204), Colors.orange,'Bakery and Snacks','assets/bakery.png'),
        ],
        ),
      ),
    );
  }
}



Widget card(Color colors ,Color colorBorder, String label , String image){
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
    border: Border.all(color: colorBorder, width: 2),
  boxShadow: [BoxShadow(color: colors,)],
   ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(image),
        flex: 3,
        ),
        const Expanded(child: SizedBox(),
        flex: 1,
        ),
        Expanded(child: Text(label,style: const TextStyle(fontWeight: FontWeight.bold),),
        flex: 1,
        )
      ],
    ),
  );
}