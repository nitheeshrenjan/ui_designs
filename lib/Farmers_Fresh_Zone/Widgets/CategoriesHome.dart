import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var categoryNames = [
    "Offers",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors",
    "Gourmet Salads",
    "Juices",
  ];

  var categoryFoodPics = [
    "assets/images/Offers.png",
    "assets/images/fruits.png",
    "assets/images/Exotic.png",
    "assets/images/freshcut.png",
    "assets/images/nutritionChargers.png",
    "assets/images/packedFlavors.png",
    "assets/images/gourmetSalads.png",
    "assets/images/juices.png",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      childAspectRatio: .9,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                //color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 243, 245, 243)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image(
                    image: AssetImage(categoryFoodPics[index]),
                    width: double.infinity,
                    height: 95,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    categoryNames[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
