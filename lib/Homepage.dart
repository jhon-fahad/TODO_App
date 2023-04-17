
import 'package:flutter/material.dart';
 import 'package:flutter_todo/Todotile.dart';
 import 'package:hive/hive.dart';
 import 'package:hive_flutter/hive_flutter.dart';

 import 'DialogBox.dart';
 import 'Database.dart';
class Homepage extends StatefulWidget {
   Homepage({Key? key}) : super(key: key);

  @override

  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller = TextEditingController();

/*  List Tasks = [
    ['Make a Tutorial', false],
    ['Sign up for a marathon',true]

  ];*/

  void changecheckbox(bool? value, index)
  {
    setState(() {

     Tasks[index][1] = !Tasks[index][1];

    });
  }

  void onsave()
  {

    setState(() {
      Tasks.add([controller.text,false]);
    });

  }


  void createnewTask()
  {
        showDialog(context: context,
        builder: (context) => DialogBox(
          Taskcontroller: controller,
          save: onsave,

        )

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],

      appBar: AppBar(
        title: const Text('TODO APP'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
        createnewTask();
        },
        child: const Icon(Icons.add),


      ),

      body: ListView.builder(

        itemCount: Tasks.length,
        itemBuilder: (BuildContext context, int index) {

          return Todotile(

              Taskname: Tasks[index][0],
              Taskcompleted: Tasks[index][1],
              onChanged: (value) => changecheckbox(value, index),

          );


        },
      )

    );
  }
}
