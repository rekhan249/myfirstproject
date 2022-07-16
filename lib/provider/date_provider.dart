import 'package:flutter/material.dart';

class DateProvider with ChangeNotifier {
  DateTime? _selectedDate;
  final controllerDate = TextEditingController();

  DateTime? get selectedDate {
    return _selectedDate;
  }

  void pickDateDialog(
      BuildContext context, TextEditingController dateOfBirthController) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate != null) {
        _selectedDate = pickedDate;
        // notifyListeners();
        dateOfBirthController.text = _selectedDate.toString();
      }
    });
  }
}
