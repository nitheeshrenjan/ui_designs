import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EndingOfHome extends StatefulWidget {
  const EndingOfHome({super.key});

  @override
  State<EndingOfHome> createState() => _EndingOfHomeState();
}

class _EndingOfHomeState extends State<EndingOfHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/juices.png"),
            ),
            title: Text(
              "Prince P",
              style: TextStyle(
                  color: Colors.green[700], fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Online digital Marketing business",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Text(
                "Very fast dispatch, I was really surprised at how fast it came. The glass products were packaged very safely in bubble wrap and arrived intact. Perishable goods also packed very well and were still cold on arrival. They offer high quality products with a good selection of different products and varieties. Very reasonable prices as well compared to other similar platforms. Highly recommend this platform for all your goods :) I certainly will be back for more in the near future.",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(
            width: 270,
            height: 90,
            child: Text(
              "This Kochi- based -farm-to-fork- online marketplace is connecting farmers directly to customers",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/malayalaManorama.jpeg",
                    fit: BoxFit.fill,
                    width: 60,
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/timesofIndia.jpeg",
                    fit: BoxFit.fill,
                    width: 60,
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/mathrubhumi.png",
                    fit: BoxFit.fill,
                    width: 60,
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/deshabhimani.jpeg",
                    fit: BoxFit.fill,
                    width: 60,
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
            child: Row(
              children: [
                Text(
                  "Get To Know Us",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20),
            child: Row(
              children: [
                Text(
                  "About Us  |",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                Text(
                  "  Our Farmers  |",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                Text(
                  "  Blog   ",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Useful Links",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Privacy Policy  |",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                Text(
                  "  Return & Refund Policy  |",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                Text(
                  "  Terms and Conditions   ",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.black54,
              ),
              FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.black54,
              ),
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.black54,
              ),
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.black54,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
          )
        ],
      ),
    );
  }
}
