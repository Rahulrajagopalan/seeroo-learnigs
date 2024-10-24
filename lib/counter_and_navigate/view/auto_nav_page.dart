import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AutoNavPage extends StatelessWidget {
  String? name;
  AutoNavPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto Nav page $name"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          context.back();
        }, child: Text("Auto Nav back")),
      ),
    );
  }
}