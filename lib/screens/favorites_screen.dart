import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  FavoritesScreen({required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Recipes"),
      ),
      body: recipes.isEmpty
          ? Center(child: Text("No favorite recipes yet!"))
          : ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    title: Text(recipe.title),
                    trailing: Icon(Icons.favorite, color: Colors.red),
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(recipe: recipe),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
