import 'package:cw4/food.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<foodMenu> menu = [
    foodMenu("กุ้งเผา", "500"),
    foodMenu("กะเพรา", "50"),
    foodMenu("ผัดไท", "500"),
    foodMenu("ก๋วยเตี๋ยว", "4000"),
    foodMenu("หมูกระทะ", "700"),
    foodMenu("เนื้อย่าง", "500"),
  ];
  @override
  Widget build(BuildContext context) {
    // List<Widget> data = getData();

    return Scaffold(
      appBar: AppBar(
        title: Text("CW4"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // body: Center(child: ListView(children: getData())),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          foodMenu food = menu[index];
          return ListTile(
            title: Text("เมนูที่ ${index + 1} "),
            subtitle: Text(food.foodname + "ราคา" + food.foodprice + "บาท"),
          );
        },
      ),
    );
  }

  // List<Widget> getData() {
  //   List<Widget> data = [];
  //   for (var i = 1; i <= 30; i++) {
  //     var menu = ListTile(
  //       title: Text("เมนูที่ $i"),
  //       subtitle: Text("ราคาของเมนูที่ $i"),
  //     );
  //     data.add(menu);
  //   }
  //   return data;
  // }
}
