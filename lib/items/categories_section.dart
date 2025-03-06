import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text("Good Morning \nHere is Some News For You",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),)
        ],
      ),
    );
  }
}
