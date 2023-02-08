import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({Key? key}) : super(key: key);

  final mockFooderlichSevice = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SimpleRecipe>>(
        future: mockFooderlichSevice.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final recipes = snapshot.data ?? [];
              return RecipesGridView(recipes: recipes);
            } else {
              return Text('please add some data!!');
            }
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.amberAccent,
            ));
          }
        });
  }
}
