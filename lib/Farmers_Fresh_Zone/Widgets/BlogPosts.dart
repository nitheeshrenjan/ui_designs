import 'package:flutter/material.dart';

class BlogPosts extends StatefulWidget {
  const BlogPosts({super.key});

  @override
  State<BlogPosts> createState() => _BlogPostsState();
}

class _BlogPostsState extends State<BlogPosts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              5,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 190,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/fruits.png"),
                            fit: BoxFit.cover,
                            height: 110,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 35,
                                width: 110,
                                child: Text(
                                  "Control Blood Pressure, the right way to",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 65, 66, 65),
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: SizedBox(
                                    width: 110, child: Text("5 months ago")),
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.green[700],
                                  size: 20,
                                ),
                                onTap: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
