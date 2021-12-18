import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeControl {
  final DateFormat _dateFormatter = DateFormat('d/M/y');
  final DateFormat _timeFormatter = DateFormat('jms');

  String currentDate() {
    return formattedDate(DateTime.now());
  }

  String currentTime() {
    return formattedTime(TimeOfDay.now());
  }

  String formattedDate(DateTime date) {
    return _dateFormatter.format(date);
  }

  String formattedTime(TimeOfDay timeOfDay) {
    int hour = timeOfDay.hour > 12
        ? timeOfDay.hour - 12
        : timeOfDay.hour == 0
            ? 12
            : timeOfDay.hour;
    int minute = timeOfDay.minute;
    String area = timeOfDay.hour <= 12 ? 'AM' : 'PM';

    return '$hour : $minute  $area';
  }
}
