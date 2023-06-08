import 'package:flutter/material.dart';

class AppSpecialityDetails extends StatefulWidget {
  @override
  State<AppSpecialityDetails> createState() => _AppSpecialityDetailsState();
}

class _AppSpecialityDetailsState extends State<AppSpecialityDetails> {
  var iconPics = [
    "assets/images/Clock.png",
    "assets/images/tracing.png",
    "assets/images/localSourcing.png"
  ];

  var iconText = ["30 MINUTE POLICY", "TRACEABILITY", "LOCAL SOURCING"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 241, 245, 241),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Color.fromARGB(255, 183, 182, 182))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: Image(
                    image: AssetImage(iconPics[index]),
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
                Text(
                  iconText[index],
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
