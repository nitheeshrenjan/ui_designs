import 'package:flutter/material.dart';

class Options_Row extends StatefulWidget {
  @override
  State<Options_Row> createState() => _Options_RowState();
}

class _Options_RowState extends State<Options_Row> {
  var chooseCategory = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nuts",
    "Packed"
  ];

  @override
  Widget build(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            6,
            (index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color.fromARGB(200, 232, 246, 231)),
                    onPressed: () {},
                    child: Text(
                      chooseCategory[index],
                      style: TextStyle(color: Colors.green[700]),
                    ),
                  ),
                )),
      ),
    );
  }
}
