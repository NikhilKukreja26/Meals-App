import 'package:flutter/material.dart';

import '../models/meal_model.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<MealModel> favoriteMeals;

  FavoritesScreen({this.favoriteMeals}); 

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty) {
       return Center(
      child: Text('You have no favorites yet - start adding some'),
    );
    }
    else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (BuildContext ctx, int index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability,
          );
        },
      );
    }
   
  }
}
