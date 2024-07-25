import 'dart:convert';
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
      final prompt = [Content.text('$foodName 레시피를 단계별(steps)로 알려줘')];

      final response = await _model.generateContent(prompt);

      if (response.text == null) {
        return const Result.error('null 임!!!');
      }

      final jsonString = response.text!;
      final steps = jsonDecode(jsonString)['steps'] as List;

      return Result.success(
        Recipe(
          title: foodName,
          procedures: steps.map((e) => e as String).toList(),
        ),
      );
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
