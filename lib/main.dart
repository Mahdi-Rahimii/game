import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game-Net Mork'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter PCS number",
                        labelText: "PC number",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10.0)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add_rounded,
                      size: 40,
                      color: Colors.white,
                      weight: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              )),
            ],
          ),
          Container(
            height: 450,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 500,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.amber],
                      ),
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 300,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 400,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
