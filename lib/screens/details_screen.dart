import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;

  DetailsScreen({required this.recipe});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.recipe.isFavorite;
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      widget.recipe.isFavorite = isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),  // ✅ Fixed
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(       // ✅ Added scroll
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ingredients:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.recipe.ingredients.join('\n'),  // ✅ Convert List<String> to String
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Instructions:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.recipe.steps.join('\n'),        // ✅ Convert List<String> to String
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: toggleFavorite,
                icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                label: Text(isFavorite ? "Unmark Favorite" : "Mark Favorite"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
