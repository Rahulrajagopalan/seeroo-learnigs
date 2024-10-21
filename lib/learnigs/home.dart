import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rahul_test_file/learnigs/destructure.dart';
import 'package:rahul_test_file/learnigs/learn_list_fun.dart';
import 'package:rahul_test_file/learnigs/learn_records.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var rec = RecordLearn();
    var res = Success;
    (int, int) record = (555, 0);
    // 
    List<Product> products = [
    Product('Laptop', true),
    Product('Phone', false),
    Product('Tablet', true),
  ];

  var outOfStockProduct = products.lastOrNull!.name;
    // 
    var destructureEg= DestructureExample2();
    // 
    var destructureFromVideo= DestructureFromVideo();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Record test"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${outOfStockProduct}"),
              ElevatedButton(
                  onPressed: () {
                    res.toString();
                  },
                  child: const Text("Print record")),
              ElevatedButton(
                  onPressed: () {
                    var rec1 = rec.swap(record);
                    log(rec1.toString());
                  },
                  child: const Text("Swap numbers")),
              ElevatedButton(
                  onPressed: () {
                    print(rec.get());
                    rec.set("My Name");
                    print(rec.get());
                  },
                  child: const Text("Set num")),
              ElevatedButton(
                  onPressed: () {
                    log("${destructureFromVideo.goRecord().second}");
                  },
                  child: const Text("Destructure")),
                  buildStatusIcon(UserStatus.busy)
            ],
          ),
        ),
      ),
    );
  }
}

enum UserStatus { online, offline, busy }

Widget buildStatusIcon(UserStatus status) {
  return switch (status) {
    UserStatus.online => Icon(Icons.check_circle, color: Colors.green),
    UserStatus.offline => Icon(Icons.cancel, color: Colors.red),
    UserStatus.busy => Icon(Icons.timer, color: Colors.orange),
  };
}
