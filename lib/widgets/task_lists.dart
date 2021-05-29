import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';


class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();

}

class _TasksListState extends State<TasksList> {







  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
              taskTitle:task.name,
              isChecked:task.isDone,
              checkboxCallback: (checkBoxState){
             taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
          },
          );

        },
          itemCount: taskData.taskCount,
        );
  },


    );

}
}