import 'package:farmers_freshzone/Widgets/GourmetWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/AppSpecialityDetails.dart';
import 'Widgets/BlogPosts.dart';
import 'Widgets/BottomBarConvex.dart';
import 'Widgets/CategoriesHome.dart';
import 'Widgets/CertificationDetails.dart';
import 'Widgets/Dropdown_location.dart';
import 'Widgets/EndingOfHome.dart';
import 'Widgets/Headings.dart';
import 'Widgets/Image_Slider_FrontPage.dart';
import 'Widgets/Options_Row_Top.dart';
import 'Widgets/ProductsBestSelling.dart';
import 'Widgets/ViewMoreButtons.dart';

void main() {
  runApp(MaterialApp(
    home: Farmers_Freshzone(),
  ));
}

class Farmers_Freshzone extends StatefulWidget {
  @override
  State<Farmers_Freshzone> createState() => _Farmers_FreshzoneState();
}

class _Farmers_FreshzoneState extends State<Farmers_Freshzone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarConvex(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
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
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                    border: InputBorder.none,
                    hintText: 'Search for vegetables, fruits..',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Main page starts from here
                Options_Row(),
                Image_Slider_FrontPage(),
                AppSpecialityDetails(),
                CategoryHeading(),
                Categories(),
                GourmetWidget(),
                BestSellProductHeading(),
                ProductsBestSelling(),
                ViewMoreProducts(),
                CertificationDetails(),
                BlogPostsHeading(),
                BlogPosts(),
                ViewMoreBlogs(),
                CustomersHeading(),
                EndingOfHome()
              ],
            ),
          )
       
        ],
      ),
    );
  }
}
