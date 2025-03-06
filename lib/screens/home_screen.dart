import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/items/categories_section.dart';
import 'package:news/items/news_widget.dart';
import 'package:news/items/taps_section.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/model/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("General",style: Theme.of(context).textTheme.titleLarge,),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 27),
          child: Image(image: AssetImage("assets/images/search.png"),color: Theme.of(context).cardColor,),
        ),],
      ),
      body: CategoriesSection(),
    );
  }
}
