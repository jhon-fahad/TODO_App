import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {


  DialogBox({super.key, required this.Taskcontroller, required this.save});

  VoidCallback save;


  TextEditingController Taskcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      content: Container(
        //color: Theme.of(context).primaryColor,
        height: 120.0 ,
        child: Column(
          children: [
             TextField(
              controller: Taskcontroller,
              decoration: const InputDecoration(
                focusColor: Colors.black,
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(),
                hintText: 'Add task'
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){
                  save();
                  Taskcontroller.clear();
                  Navigator.pop(context);
                },
                  color: Theme.of(context).primaryColor,
                  child: const Text('Add'),

                ),

                MaterialButton(onPressed: (){
                  Taskcontroller.clear();
                  Navigator.pop(context);

                },
                  color: Theme.of(context).primaryColor,
                  child: const Text('Cancel'),
                ),
              ],
            ),



          ],



        ),



      ),

    );
      

  }
}
