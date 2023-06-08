import 'package:flutter/material.dart';

class GourmetWidget extends StatefulWidget {
  @override
  State<GourmetWidget> createState() => _GourmetWidgetState();
}

class _GourmetWidgetState extends State<GourmetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 140,
        width: double.infinity,
        color: Colors.grey,
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/gourmentposter.jpeg"),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              left: 60,
              top: 20,
              child: Text(
                "GOURMENT SALAD",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
