// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext) removeTask;
  TodoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
    required this.removeTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(onPressed: removeTask,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(20),
            icon: Icons.delete,
            ),

          ],
          ),
        child: Container(
          padding: const EdgeInsets.all(24),
          // ignore: sort_child_properties_last
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged,
              activeColor: Colors.black,
              ),
               Text(taskName, style: TextStyle(
                decoration: taskCompleted ?  TextDecoration.lineThrough
               : TextDecoration.none),),
            ],
          ),
          decoration: BoxDecoration(color: Colors.blue.shade200, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
