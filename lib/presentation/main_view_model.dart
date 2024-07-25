import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:vertexai_sample/core/result.dart';
import 'package:vertexai_sample/data/model/recipe.dart';
import 'package:vertexai_sample/data/repository/recipe_repository.dart';
import 'package:vertexai_sample/presentation/main_ui_state.dart';

class MainViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  MainUiState _state = const MainUiState();

  MainUiState get state => _state;

  MainViewModel({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  void requestRecipeByText(String text) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _recipeRepository.getRecipeFromFoodName(text);

    switch (result) {
      case Success<Recipe>():
        _state = state.copyWith(
          recipe: result.data,
          errorMessage: '',
          isLoading: false,
        );
        notifyListeners();
      case Error<Recipe>():
        _state = state.copyWith(
          errorMessage: result.message,
          isLoading: false,
        );
        notifyListeners();
    }
  }

  void requestRecipeByImage(Uint8List image) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _recipeRepository.getRecipeFromPicture(image);

    switch (result) {
      case Success<Recipe>():
        _state = state.copyWith(
          recipe: result.data,
          errorMessage: '',
          isLoading: false,
        );
        notifyListeners();
      case Error<Recipe>():
        _state = state.copyWith(
          errorMessage: result.message,
          isLoading: false,
        );
        notifyListeners();
    }
  }
}
