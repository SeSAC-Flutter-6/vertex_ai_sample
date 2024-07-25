import 'dart:typed_data';

import 'package:vertexai_sample/core/result.dart';
import 'package:vertexai_sample/data/model/recipe.dart';
import 'package:vertexai_sample/data/repository/recipe_repository.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  @override
  Future<Result<Recipe>> getRecipeFromFoodName(String foodName) async {
    return const Result.success(Recipe(title: '라면', procedures: [
      '물을 넣는다',
      '면을 넣는다',
      '먹는다',
    ]));
  }

  @override
  Future<Result<Recipe>> getRecipeFromPicture(Uint8List foodPicture) async {
    return const Result.success(Recipe(title: '짜장면', procedures: [
      '물을 넣는다',
      '면을 넣는다',
      '먹는다',
    ]));
  }
}
