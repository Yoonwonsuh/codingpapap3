import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({Key? key, required this.recipes}) : super(key: key);

  static const _gridPadding = 16.0;
  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(_gridPadding),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: _gridPadding,
        mainAxisSpacing: _gridPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecipeThumbnail(
          recipe: recipes[index],
        );
      },
      itemCount: recipes.length,
    );
  }
}
