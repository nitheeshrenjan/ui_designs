import 'package:flutter/material.dart';

class ProductsBestSelling extends StatefulWidget {
  @override
  State<ProductsBestSelling> createState() => _ProductsBestSellingState();
}

class _ProductsBestSellingState extends State<ProductsBestSelling> {
  var bsProductname = [
    "Carrot",
    "Banana - Semi Ripe",
    "Broccoli 200gm",
    "Potato"
  ];

  var bsProductPrice = ["Rs 34", "Rs 40", "Rs 120", "Rs 23"];
  var bsQuantity = ["0.50 Kg", "1 Kg", "1 NOS", "0.50 Kg"];
  var bsProductPics = [
    "assets/images/carrot.jpeg",
    "assets/images/banana.jpeg",
    "assets/images/broccoli.jpeg",
    "assets/images/potato.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      childAspectRatio: .8,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
        4,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 12.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 2  horizontally
                  2.0, // Move to bottom 2 Vertically
                ),
              )
            ], color: Color.fromARGB(255, 243, 245, 243)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(bsProductPics[index]),
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 12),
                  child: Text(bsProductname[index]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 8),
                  child: Text(bsProductPrice[index]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(bsQuantity[index]),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("ADD"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
