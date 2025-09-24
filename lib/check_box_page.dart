import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:demoapp/routes/app_routes.dart';
import 'package:flutter/material.dart';


@RoutePage()

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  // for mapping the options from the list
  final Map<String, bool> options = {
    'option 1': false,
    'option 2': false,
    'option 3': false,
    'option 4': true,
  };
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("CheckBox Practise"),
    
      ),
      body: Column(
        children: options.keys.map((String key) {
          return CheckboxListTile(
            title: Text(key),
            value: options[key],
            onChanged: (bool? value) {
              setState(() {
                options[key] = value!;
              });
            },
          );
        }).toList(),
      ),
      floatingActionButton: Column(
        children: [
          ElevatedButton(onPressed: (){
            context.router.push(const SudipDaiRoute());
          }, child: Text("Go to Sudip Dai Page")),
          SizedBox(height: 300,),
          FloatingActionButton(onPressed: (){
            final selected = options.entries
                  .where((entry) => entry.value)
                  .map((entry) => entry.key)
                  .toList(); 
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Selected: ${selected.join(", ")}")),
              );
              
          }, child: Icon(Icons.add),),
        ],
      ),
    ));
  }
}