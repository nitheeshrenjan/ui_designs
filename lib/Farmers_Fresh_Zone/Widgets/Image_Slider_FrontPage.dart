import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class Image_Slider_FrontPage extends StatelessWidget {
  var images = [
    "https://images.unsplash.com/photo-1619566636858-adf3ef46400b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1467453678174-768ec283a940?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=844&q=80",
    "https://images.unsplash.com/photo-1589010588553-46e8e7c21788?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=960&q=80",
    "https://images.unsplash.com/photo-1542990253-a781e04c0082?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=794&q=80"
  ];
  @override
  Widget build(context) {
    return CarouselSlider(
        items: List.generate(
          5,
          (index) => Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(images[index]))),
          ),
        ),
        options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(seconds: 3)));
  }
}
