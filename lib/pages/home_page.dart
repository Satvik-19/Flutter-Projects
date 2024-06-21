import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/pages/recipe_list.dart';
import 'package:recipe_app/pages/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(
          'Recipe App',
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: kTextColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: kNeumorphicBoxDecoration,
        child: RecipeList(),
      ),
    );
  }
}