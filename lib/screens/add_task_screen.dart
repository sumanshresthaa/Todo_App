import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final  myController= TextEditingController();
    String newTaskTitle;
    return Expanded(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical:20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only( topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          ),

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Add Task ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30.0
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: TextField(
                     autofocus: true,
                      textAlign: TextAlign.center,
                      controller: myController,


                      onChanged: (newText){
                        newTaskTitle = newText;


                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                    ),
                      onPressed: (){
                      newTaskTitle = myController.text;
                        print(newTaskTitle);
                      Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                      Navigator.pop(context);
                      },


                    child: Text(
                        'ADD',
                      style: TextStyle(
                        color: Colors.white,

                      ),
                      ),


                  )
                ]
              ),
            ),

        )
      ),
    );
  }
}
