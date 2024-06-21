// search_page.dart
import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/data/recipes.dart';
import 'package:recipe_app/pages/recipe_details.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchQuery = '';
  List<Recipe> _filteredRecipes = recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search recipes',
            hintStyle: TextStyle(color: kTextColor.withOpacity(0.5)),
            border: InputBorder.none,
          ),
          style: TextStyle(color: kTextColor),
          onChanged: (query) {
            setState(() {
              _searchQuery = query;
              _filteredRecipes = recipes
                  .where((recipe) =>
                  recipe.name.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            });
          },
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        decoration: kNeumorphicBoxDecoration,
        child: ListView.builder(
          itemCount: _filteredRecipes.length,
          itemBuilder: (context, index) {
            final recipe = _filteredRecipes[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetails(recipe: recipe),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(16.0),
                decoration: kNeumorphicBoxDecoration,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: AssetImage(recipe.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recipe.name,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            recipe.description,
                            style: TextStyle(
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}