import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Database extends HiveObject{

  final box = Hive.box('TODOAPP');

  List Tasks = [
    ['Make a Tutorial', false],
    ['Sign up for a marathon',true]

  ];



  void write()
  {

    box!.put('List', Tasks);

  }

  void read()
  {

    //box!.('List');


  }






}