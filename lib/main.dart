import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Body.dart';

void main() async{
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final themedate = GetStorage();
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   bool darkmode = themedate.read('Darkmode');
   bool darkmod = false;
    return GetMaterialApp(
      title: 'Flutter Demo',
       theme:darkmod
       ?ThemeData.dark()
       :ThemeData.light(),
     // darkTheme: ThemeData.light(),
      home: const IconBody(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        heroTag: 'ss',
        child: const Icon(Icons.add),
      ), 
    );
    
    
  }
}
