import 'package:flutter/material.dart';

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 16, bottom: 8),
          child: Text(
            "Shop By Category",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}

class BestSellProductHeading extends StatelessWidget {
  const BestSellProductHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 16, bottom: 8),
          child: Text(
            "Best Selling Products",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}

class BlogPostsHeading extends StatelessWidget {
  const BlogPostsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 16, bottom: 8),
          child: Text(
            "Our Blog Posts",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
