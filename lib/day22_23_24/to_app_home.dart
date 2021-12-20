import 'package:flutter/material.dart';

import 'add_task.dart';
import 'cart.dart';
import 'model.dart';

class ToDoAppHome extends StatefulWidget {
  const ToDoAppHome({Key? key}) : super(key: key);

  @override
  _ToDoAppHomeState createState() => _ToDoAppHomeState();
}

class _ToDoAppHomeState extends State<ToDoAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo Application'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Pending Tasks',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Model.taskList.isEmpty
                  ? Center(
                      child: Text(
                        'There is no pending tasks!',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: Model.taskList.length,
                      itemBuilder: (context, index) {
                        return Cart(
                          index: index,
                        );
                      }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddTask(title: 'Add Task');
              },
            ),
          );
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
