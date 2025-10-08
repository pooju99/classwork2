import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Recipe> recipes = [
    // 🌍 International Specials
    Recipe(
      title: "Spaghetti",
      ingredients: ["200g spaghetti pasta", "2 tbsp olive oil", "3 garlic cloves", "1 cup tomato puree", "1 tsp chili flakes", "Salt", "Basil leaves"],
      steps: [
        "Boil spaghetti in salted water until al dente. Drain and keep aside.",
        "Heat olive oil in a pan, sauté garlic until fragrant.",
        "Add tomato puree, chili flakes, and salt. Cook for 10 minutes.",
        "Toss in the spaghetti and mix well.",
        "Garnish with basil leaves and serve hot."
      ],
      category: "International",
      isSpecial: true,
    ),
    Recipe(
      title: "Matcha Latte",
      ingredients: ["1 tsp matcha powder", "2 tsp hot water", "1 cup plant milk", "1 tsp maple syrup"],
      steps: [
        "Whisk matcha with hot water until smooth.",
        "Heat the milk, pour into matcha mixture, stir.",
        "Sweeten with maple syrup and serve warm."
      ],
      category: "International",
      isSpecial: true,
    ),

    // 🇮🇳 Indian Specials
    Recipe(
      title: "Indian Laddoo",
      ingredients: ["2 cups besan", "1 cup ghee", "1 1/2 cups powdered sugar", "1 tsp cardamom powder", "2 tbsp chopped nuts"],
      steps: [
        "Roast besan in ghee until golden.",
        "Cool slightly, mix in sugar and cardamom.",
        "Add nuts, shape into laddoos, store in airtight container."
      ],
      category: "Indian",
      isSpecial: true,
    ),

    // 🌱 International
    Recipe(
      title: "Vegan Pancakes",
      ingredients: ["Flour", "Baking powder", "Plant milk", "Maple syrup"],
      steps: [
        "Mix all ingredients into batter.",
        "Cook on a skillet until golden.",
        "Serve with syrup."
      ],
      category: "International",
    ),
    Recipe(
      title: "Quinoa Salad",
      ingredients: ["Quinoa", "Veggies", "Lemon dressing"],
      steps: [
        "Cook quinoa, mix with veggies and dressing.",
        "Serve chilled."
      ],
      category: "International",
    ),

    // 🌱 Indian
    Recipe(
      title: "Kurma",
      ingredients: ["Mixed vegetables", "Coconut paste", "Spices"],
      steps: [
        "Sauté vegetables, add coconut paste and spices.",
        "Cook for 10 minutes and serve."
      ],
      category: "Indian",
    ),
    Recipe(
      title: "Chana Masala",
      ingredients: ["Chickpeas", "Onion", "Tomato", "Spices"],
      steps: [
        "Cook chickpeas, sauté onion and tomato with spices.",
        "Add chickpeas, simmer for 10-15 mins.",
        "Serve hot."
      ],
      category: "Indian",
    ),
    // Add more recipes here as needed...
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Recipe> displayedRecipes;

    switch (_selectedIndex) {
      case 0:
        displayedRecipes = recipes; // All Recipes
        break;
      case 1:
        displayedRecipes = recipes.where((r) => r.isSpecial && r.category == "International").toList();
        break;
      case 2:
        displayedRecipes = recipes.where((r) => r.isSpecial && r.category == "Indian").toList();
        break;
      case 3:
        displayedRecipes = recipes.where((r) => !r.isSpecial && r.category == "International").toList();
        break;
      case 4:
        displayedRecipes = recipes.where((r) => !r.isSpecial && r.category == "Indian").toList();
        break;
      case 5:
        displayedRecipes = recipes.where((r) => r.isFavorite).toList();
        break;
      default:
        displayedRecipes = recipes;
    }

    return Scaffold(
      appBar: AppBar(title: Text("Priya's Vegan Kitchen")),
      body: ListView.builder(
        itemCount: displayedRecipes.length,
        itemBuilder: (context, index) {
          final recipe = displayedRecipes[index];
          return ListTile(
            title: Text(recipe.title),
            subtitle: Text(recipe.ingredients.join(", ")),
            trailing: Icon(
              recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: recipe.isFavorite ? Colors.red : null,
            ),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(recipe: recipe),
                ),
              );
              if (result != null && result is bool) {
                setState(() {
                  recipe.isFavorite = result;
                });
              }
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Recipes"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Int. Specials"),
          BottomNavigationBarItem(icon: Icon(Icons.star_half), label: "Indian Specials"),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: "International"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Indian"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
        ],
      ),
    );
  }
}
