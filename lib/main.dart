 import 'package:hive/hive.dart';
 import 'package:flutter/material.dart';
 import 'package:hive_flutter/adapters.dart';

 import 'Homepage.dart';

  void main() async{
    WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();

   var box = await Hive.openBox('TODOAPP');

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

        primarySwatch: Colors.yellow,
      ),
      home: Homepage(),
    );
  }
}
