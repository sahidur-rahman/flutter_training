import 'package:flutter/material.dart';

import 'date_time_control.dart';
import 'model.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  late TextEditingController _titleController;
  late TextEditingController _dateController;
  late TextEditingController _timeController;

  @override
  void initState() {
    DateTimeControl dtc = DateTimeControl();
    _titleController = TextEditingController();
    _dateController = TextEditingController(text: dtc.currentDate());
    _timeController = TextEditingController(text: dtc.currentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 20),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: _titleController,
                decoration: InputDecoration(
                  //Close Icon button show to clear the inputs
                  suffixIcon: _titleController.text.isEmpty
                      ? Text('')
                      : GestureDetector(
                          onTap: () {
                            _titleController.clear();
                            setState(() {});
                          },
                          child: Icon(Icons.close),
                        ),
                  labelText: 'Enter your task',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.red, width: 1),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    pickDate();
                  },
                  child: Text(_dateController.text.toString()),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    pickTime();
                  },
                  child: Text(_timeController.text.toString()),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        saveTask();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrangeAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pickDate() async {
    DateTimeControl dtc = DateTimeControl();

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2040),
    );

    if (pickedDate == null) return;

    _dateController =
        TextEditingController(text: dtc.formattedDate(pickedDate));
    setState(() {});
  }

  void pickTime() async {
    DateTimeControl dtc = DateTimeControl();

    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime == null) return;

    _timeController =
        TextEditingController(text: dtc.formattedTime(pickedTime));
    setState(() {});
  }

  saveTask() {
    Model model = Model(
        title: _titleController.text,
        date: _dateController.text,
        time: _timeController.text);
    Model.taskList.add(model);
  }
}
