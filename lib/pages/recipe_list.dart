// recipe_list.dart
import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/data/recipes.dart';
import 'package:recipe_app/pages/recipe_details.dart';

class RecipeList extends StatefulWidget {
  @override
  _RecipeListState createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
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
    );
  }
}