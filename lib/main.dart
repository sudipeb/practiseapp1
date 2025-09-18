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
          title: const Text("Weather App"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: const Center(
            child: Text("Hello World", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red) ),
            
          ),
        ),
      ),
      
    );
    
  }
}