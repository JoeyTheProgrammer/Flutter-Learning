import 'package:flutter/material.dart';
import 'package:may_19/models/meal.dart';
import 'package:may_19/widgets/meal_item.dart';

class FavortiesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavortiesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('The Favorites'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favoriteMeals![index].id,
            title: favoriteMeals![index].title,
            imageUrl: favoriteMeals![index].imageUrl,
            duration: favoriteMeals![index].duration,
            complexity: favoriteMeals![index].complexity,
            affordability: favoriteMeals![index].affordability,
          );
        },
        itemCount: favoriteMeals!.length,
      );
    }
  }
}
