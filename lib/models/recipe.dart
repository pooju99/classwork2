class Recipe {
  final String title;                  // Recipe name
  final List<String> ingredients;      // Ingredients list
  final List<String> steps;            // Steps list
  final String category;               // Indian / International / Specials
  bool isFavorite;                     // Favorite toggle
  final bool isSpecial;                // Special recipe toggle

  Recipe({
    required this.title,
    required this.ingredients,
    required this.steps,
    required this.category,
    this.isFavorite = false,
    this.isSpecial = false,
  });
}

final List<Recipe> recipes = [

  // 🌍 International Specials
  Recipe(
    title: "Spaghetti",
    category: "International Specials",
    ingredients: [
      "200g spaghetti pasta",
      "2 tbsp olive oil",
      "3 garlic cloves, minced",
      "1 cup tomato puree",
      "1 tsp chili flakes",
      "Salt to taste",
      "Fresh basil leaves",
    ],
    steps: [
      "Boil spaghetti in salted water until al dente. Drain and keep aside.",
      "Heat olive oil in a pan, sauté garlic until fragrant.",
      "Add tomato puree, chili flakes, and salt. Cook for 10 minutes.",
      "Toss in the spaghetti and mix well.",
      "Garnish with basil leaves and serve hot."
    ],
    isSpecial: true,
  ),

  Recipe(
    title: "Matcha Latte",
    category: "International Specials",
    ingredients: [
      "1 tsp matcha green tea powder",
      "2 tsp hot water",
      "1 cup plant-based milk (almond/soy/oat)",
      "1 tsp maple syrup or sugar (optional)",
    ],
    steps: [
      "Whisk matcha powder with hot water until smooth and no lumps.",
      "Heat the milk in a saucepan but don’t boil.",
      "Pour milk into the matcha mixture and stir.",
      "Sweeten with maple syrup if desired.",
      "Serve warm with a frothy top."
    ],
    isSpecial: true,
  ),

  // 🇮🇳 Indian Specials
  Recipe(
    title: "Indian Laddoo",
    category: "Indian Specials",
    ingredients: [
      "2 cups besan (gram flour)",
      "1 cup ghee",
      "1 1/2 cups powdered sugar",
      "1 tsp cardamom powder",
      "2 tbsp chopped nuts (cashews, almonds)",
    ],
    steps: [
      "Roast besan in ghee on low flame until golden and fragrant.",
      "Remove from heat and let it cool slightly.",
      "Add powdered sugar and cardamom powder, mix well.",
      "Add nuts and mix evenly.",
      "Shape into small round laddoos. Store in an airtight container."
    ],
    isSpecial: true,
  ),

  // 🇮🇳 Indian Dishes
  Recipe(
    title: "Vegetable Biryani",
    category: "Indian",
    ingredients: [
      "1 cup basmati rice",
      "2 tbsp oil",
      "1 onion, sliced",
      "1 cup mixed vegetables (carrot, beans, peas)",
      "2 tbsp biryani masala",
      "1/2 cup yogurt (plant-based optional)",
      "Coriander & mint leaves",
    ],
    steps: [
      "Wash and soak basmati rice for 30 minutes.",
      "Cook rice until 70% done, drain and keep aside.",
      "Heat oil, fry onions until golden.",
      "Add vegetables, biryani masala, and yogurt. Cook well.",
      "Layer rice and vegetable masala in a pot. Add coriander & mint leaves.",
      "Cover and cook on low heat for 20 minutes. Serve hot."
    ],
  ),

  Recipe(
    title: "Kurma",
    category: "Indian",
    ingredients: [
      "1 cup mixed vegetables (carrot, beans, peas, potato)",
      "1 onion, chopped",
      "1 tomato, chopped",
      "2 tbsp coconut paste",
      "1 tsp garam masala",
      "2 tbsp oil",
      "Coriander leaves for garnish",
    ],
    steps: [
      "Heat oil, sauté onion and tomato.",
      "Add vegetables and little water, cook until soft.",
      "Add coconut paste and garam masala, simmer for 10 minutes.",
      "Garnish with coriander and serve with chapati or rice."
    ],
  ),

  Recipe(
    title: "Chole Masala",
    category: "Indian",
    ingredients: [
      "1 cup chickpeas (soaked overnight)",
      "2 onions, chopped",
      "2 tomatoes, pureed",
      "2 tbsp chole masala powder",
      "2 tbsp oil",
      "Coriander leaves",
    ],
    steps: [
      "Cook chickpeas until soft (pressure cook recommended).",
      "Heat oil, sauté onion until golden.",
      "Add tomato puree and chole masala, cook till oil separates.",
      "Add chickpeas, simmer for 15 minutes.",
      "Garnish with coriander and serve with puri or rice."
    ],
  ),

  Recipe(
    title: "Aloo Gobi",
    category: "Indian",
    ingredients: [
      "2 potatoes, diced",
      "1 cup cauliflower florets",
      "1 onion, chopped",
      "2 tomatoes, chopped",
      "1 tsp turmeric",
      "1 tsp cumin seeds",
      "1 tbsp oil",
    ],
    steps: [
      "Heat oil, add cumin seeds.",
      "Add onion and tomatoes, cook until soft.",
      "Add potatoes, cauliflower, turmeric, and salt.",
      "Cover and cook until tender. Serve hot."
    ],
  ),

  Recipe(
    title: "Dal Tadka",
    category: "Indian",
    ingredients: [
      "1 cup toor dal (pigeon pea lentils)",
      "1 onion, chopped",
      "1 tomato, chopped",
      "2 green chilies",
      "2 garlic cloves",
      "1 tsp cumin seeds",
      "2 tbsp ghee or oil",
    ],
    steps: [
      "Cook dal with turmeric until soft, mash well.",
      "Heat oil/ghee, add cumin, garlic, and green chilies.",
      "Add onion, tomato, sauté well.",
      "Pour over dal and simmer for 10 minutes.",
      "Serve with rice or roti."
    ],
  ),

  Recipe(
    title: "Masoor Dal",
    category: "Indian",
    ingredients: [
      "1 cup masoor dal (red lentils)",
      "1 onion, chopped",
      "1 tomato, chopped",
      "1 tsp turmeric",
      "2 garlic cloves",
      "1 tbsp oil",
    ],
    steps: [
      "Cook masoor dal with turmeric until soft.",
      "Heat oil, sauté garlic, onion, and tomato.",
      "Mix with dal, simmer 5 minutes.",
      "Serve hot with rice."
    ],
  ),

  Recipe(
    title: "Bhindi Fry",
    category: "Indian",
    ingredients: [
      "250g bhindi (okra), chopped",
      "1 onion, sliced",
      "1 tsp turmeric",
      "1 tsp chili powder",
      "2 tbsp oil",
    ],
    steps: [
      "Heat oil, fry onions until golden.",
      "Add bhindi, turmeric, chili powder, and salt.",
      "Cook until soft and slightly crispy.",
      "Serve as a side with chapati."
    ],
  ),

  Recipe(
    title: "Jeera Rice",
    category: "Indian",
    ingredients: [
      "1 cup basmati rice",
      "2 cups water",
      "1 tbsp ghee or oil",
      "1 tsp cumin seeds",
      "Salt to taste",
    ],
    steps: [
      "Wash and soak rice for 20 minutes.",
      "Heat ghee, add cumin seeds.",
      "Add rice and water, bring to boil.",
      "Cover and cook until rice is fluffy.",
      "Serve with curry or dal."
    ],
  ),

  Recipe(
    title: "Vegetable Pulao",
    category: "Indian",
    ingredients: [
      "1 cup basmati rice",
      "1 cup mixed vegetables",
      "1 onion, sliced",
      "2 cloves, 1 bay leaf",
      "1 tsp garam masala",
      "2 cups water",
    ],
    steps: [
      "Heat oil, add whole spices and onion.",
      "Add vegetables and sauté.",
      "Add rice and water, cook until done.",
      "Serve hot with raita."
    ],
  ),

  Recipe(
    title: "Vegetable Sambar",
    category: "Indian",
    ingredients: [
      "1 cup toor dal",
      "1/2 cup tamarind extract",
      "1 cup mixed vegetables",
      "2 tbsp sambar powder",
      "2 tbsp oil",
      "Mustard seeds & curry leaves",
    ],
    steps: [
      "Cook dal until soft and mash well.",
      "Cook vegetables with tamarind extract and sambar powder.",
      "Add dal and simmer.",
      "Heat oil, add mustard seeds and curry leaves, temper into sambar.",
      "Serve with rice or idli."
    ],
  ),
];
