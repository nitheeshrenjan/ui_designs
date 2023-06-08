import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Dropdown_location.dart';

class AppBarSliver extends StatelessWidget {
  @override
  Widget build(context) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      actions: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: 18,
            ),
            // For selecting the location
            DropdownLocation()
          ],
        )
      ],
      backgroundColor: Colors.green[700],
      title: Text(
        "FARMERS FRESH ZONE",
        style: GoogleFonts.capriola(
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      bottom: AppBar(
        backgroundColor: Colors.green[700],
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for vegetables, fruits..',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
