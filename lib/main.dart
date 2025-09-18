import 'package:flutter/material.dart';
 void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.yellow,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { },),
          title: const Text("Weather App"),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () { },),
        ]),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blueAccent, Colors.pink]
              )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset(  "assets/images/flutter.png", height: 100, width: 100,)),
                  SizedBox(height: 20,),
                  Text("Welcome to Flutter", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () { }, child: Text("Get Started"), ),
                ],
              ),
            ),
        ),
      ),
      
    ));  
    
  }
}