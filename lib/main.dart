import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
  @override
  Widget build(BuildContext context) {

    var arrNames = ['Xander', 'Aditya', 'Jessica', 'Raman', 'Rajan', 'Harsh'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Dynamic ListVsiew'),
      ),
      body:/* Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(itemBuilder: (context, index){
            return Text(arrNames[index], style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),);
        },
          itemCount: arrNames.length,
          itemExtent: 130,
          scrollDirection: Axis.horizontal,
        ),
      )
        */
        ListView.separated(itemBuilder: (context, index){
          return Text(arrNames[index], style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500));
        },
          itemCount: arrNames.length,
          separatorBuilder: (context, index){
          return Divider(height: 50, thickness: 4,);
        },
        )
    );
  }
}
