
import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {


  Todotile({super.key, required this.Taskname,required this.Taskcompleted,required this.onChanged});

  final String Taskname;
  final bool Taskcompleted;
  Function (bool?)? onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(

        height: 100.0,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.yellow,


        ),
        child: Row(
          children: [

            Checkbox(value: Taskcompleted, onChanged: onChanged),

            Text(Taskname,
            style: TextStyle(
              decoration: Taskcompleted ?  TextDecoration.lineThrough : TextDecoration.none
            ),

            ),

          ],



        ),



      ),
    );
  }
}
