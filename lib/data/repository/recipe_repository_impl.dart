import 'dart:typed_data';

import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:vertexai_sample/core/result.dart';
import 'package:vertexai_sample/data/model/recipe.dart';
import 'package:vertexai_sample/data/repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final GenerativeModel _model;

  const RecipeRepositoryImpl({
    required GenerativeModel model,
  }) : _model = model;

  @override
  Future<Result<Recipe>> getRecipeFromFoodName(String foodName) async {
    try {
      final prompt = [Content.text('Write a story about a magic backpack.')];

      final response = _model.generateContentStream(prompt);
      await for (final chunk in response) {
        print(chunk.text);
      }

      return const Result.success(
        Recipe(title: 'test', procedures: ['성공'],),);
    } catch (e) {
      return const Result.error('알 수 없는 에러');
    }
  }

  @override
  Future<Result<Recipe>> getRecipeFromPicture(Uint8List foodPicture) {
    // TODO: implement getRecipeFromPicture
    throw UnimplementedError();
  }

}
