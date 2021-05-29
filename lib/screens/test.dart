import 'package:flutter/material.dart';

class TestTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    final  myController= TextEditingController();
    return Scaffold(
      body: Container(
          color: Color(0xff757575),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical:50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
            ),

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


                      // onChanged: (newText){
                      //   newTaskTitle = newText;
                      //   print(newTaskTitle);
                      //
                      // },
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
                      //addTaskCallback(newTaskTitle);
                    },


                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white,

                      ),
                    ),


                  )
                ],
              ),

          )
      ),
    );
  }
}
