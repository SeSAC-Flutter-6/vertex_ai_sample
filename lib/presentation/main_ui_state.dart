import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vertexai_sample/data/model/recipe.dart';

part 'main_ui_state.freezed.dart';

@freezed
class MainUiState with _$MainUiState {
  const factory MainUiState({
    Recipe? recipe,
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
  }) = _MainUiState;
}