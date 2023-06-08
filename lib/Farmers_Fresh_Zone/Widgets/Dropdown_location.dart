import 'package:flutter/material.dart';

class DropdownLocation extends StatefulWidget {
  const DropdownLocation({super.key});

  @override
  State<DropdownLocation> createState() => _DropdownLocationState();
}

class _DropdownLocationState extends State<DropdownLocation> {
  var dropdownValue = "Kochi";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        iconDisabledColor: Colors.white,
        iconEnabledColor: Colors.white,
        dropdownColor: Colors.green[700],
        items: [
          DropdownMenuItem(
            child: Text(
              "Kochi",
              style: TextStyle(color: Colors.white),
            ),
            value: "Kochi",
          ),
          DropdownMenuItem(
            child: Text(
              "Trivandrum",
              style: TextStyle(color: Colors.white),
            ),
            value: "Trivandrum",
          ),
          DropdownMenuItem(
            child: Text(
              "Alapuzha",
              style: TextStyle(color: Colors.white),
            ),
            value: "Alapuzha",
          ),
          DropdownMenuItem(
            child: Text(
              "Kottayam",
              style: TextStyle(color: Colors.white),
            ),
            value: "Kottayam",
          ),
          DropdownMenuItem(
            child: Text(
              "Kollam",
              style: TextStyle(color: Colors.white),
            ),
            value: "Kollam",
          ),
          DropdownMenuItem(
            child: Text(
              "Kozhikode",
              style: TextStyle(color: Colors.white),
            ),
            value: "Kozhikode",
          ),
        ],
        value: dropdownValue,
        onChanged: dropdownCallback);
  }

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropdownValue = selectedValue;
      });
    }
  }
}
