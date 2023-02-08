import 'package:flutter/material.dart';

import '../models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  const RecipeThumbnail({Key? key, required this.recipe}) : super(key: key);
  final SimpleRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                recipe.dishImage,
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 8),
        Text(recipe.title, style: Theme.of(context).textTheme.bodyText1),
        Text(recipe.duration, style: Theme.of(context).textTheme.bodyText1)
      ],
    );
  }
}
