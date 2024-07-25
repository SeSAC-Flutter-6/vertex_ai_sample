import 'dart:typed_data';

import 'package:vertexai_sample/core/result.dart';
import 'package:vertexai_sample/data/model/recipe.dart';

abstract interface class RecipeRepository {
  Future<Result<Recipe>> getRecipeFromFoodName(String foodName);

  Future<Result<Recipe>> getRecipeFromPicture(Uint8List foodPicture);
}
