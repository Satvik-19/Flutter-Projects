class Recipe {
  final String name;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> instructions;

  Recipe({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
  });
}

final List<Recipe> recipes = [
  Recipe(
    name: 'Margherita Pizza',
    description: 'A classic Italian pizza with fresh basil, tomatoes, and mozzarella cheese.',
    imageUrl: 'assets/images/margherita_pizza.jpeg',
    ingredients: [
      '1 pound pizza dough',
      '1 cup tomato sauce',
      '8 ounces fresh mozzarella cheese, sliced',
      '1/4 cup fresh basil leaves',
      '2 tablespoons olive oil',
      'Salt and pepper to taste',
    ],
    instructions: [
      'Preheat your oven to 450°F (230°C).',
      'Roll or stretch the pizza dough into a 12-inch circle and place it on a pizza pan or baking sheet.',
      'Spread the tomato sauce evenly over the dough, leaving a 1/2-inch border.',
      'Arrange the sliced mozzarella cheese over the sauce.',
      'Drizzle with olive oil and season with salt and pepper.',
      'Bake for 12-15 minutes, or until the crust is golden brown and the cheese is melted and bubbly.',
      'Remove from the oven and top with fresh basil leaves.',
      'Slice and serve hot.',
    ],
  ),

  Recipe(
    name: 'Chocolate Chip Cookies',
    description: 'Delicious and classic chocolate chip cookies, perfect for any occasion.',
    imageUrl: 'assets/images/chocolate_chip_cookies.jpg',
    ingredients: [
      '1 cup unsalted butter, softened',
      '1 cup granulated sugar',
      '1/2 cup brown sugar',
      '2 large eggs',
      '2 teaspoons vanilla extract',
      '2 1/4 cups all-purpose flour',
      '1 teaspoon baking soda',
      '1 teaspoon salt',
      '2 cups semisweet chocolate chips',
    ],
    instructions: [
      'Preheat your oven to 375°F (190°C).',
      'In a large bowl, cream together the butter and both sugars until light and fluffy.',
      'Beat in the eggs one at a time, then stir in the vanilla extract.',
      'In a separate bowl, whisk together the flour, baking soda, and salt.',
      'Gradually add the dry ingredients to the wet ingredients and mix until just combined.',
      'Fold in the chocolate chips.',
      'Scoop dough balls onto a baking sheet lined with parchment paper, spacing them about 2 inches apart.',
      'Bake for 8-10 minutes, or until the edges are golden brown.',
      'Remove from the oven and let cool on the baking sheet for a few minutes before transferring to a wire rack.',
    ],
  ),
];