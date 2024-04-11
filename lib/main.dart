import 'package:flutter/material.dart';
import 'package:rodriguezdiseno/AllContainers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Mis contenedores"),
          ),
          body: const AllContainers()),
    );
  }
}
