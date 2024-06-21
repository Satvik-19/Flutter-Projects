// recipe_details.dart
import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/data/recipes.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  RecipeDetails({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(
          recipe.name,
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: kNeumorphicBoxDecoration,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: AssetImage(recipe.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                recipe.description,
                style: TextStyle(
                  fontSize: 18.0,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: kNeumorphicInset,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: recipe.ingredients.map((ingredient) {
                    return Text(
                      '- $ingredient',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Instructions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: kNeumorphicInset,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: recipe.instructions.map((instruction) {
                    return Text(
                      '- $instruction',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}