import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class SudipDaiPage extends StatelessWidget {
  const SudipDaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Sudip Dai Page"),),
      body: Center(child: Text("This is Sudip Dai Page"),),
    ));
  }
}