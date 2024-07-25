// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainUiState {
  Recipe? get recipe => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUiStateCopyWith<MainUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUiStateCopyWith<$Res> {
  factory $MainUiStateCopyWith(
          MainUiState value, $Res Function(MainUiState) then) =
      _$MainUiStateCopyWithImpl<$Res, MainUiState>;
  @useResult
  $Res call({Recipe? recipe, String errorMessage, bool isLoading});

  $RecipeCopyWith<$Res>? get recipe;
}

/// @nodoc
class _$MainUiStateCopyWithImpl<$Res, $Val extends MainUiState>
    implements $MainUiStateCopyWith<$Res> {
  _$MainUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? errorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainUiStateImplCopyWith<$Res>
    implements $MainUiStateCopyWith<$Res> {
  factory _$$MainUiStateImplCopyWith(
          _$MainUiStateImpl value, $Res Function(_$MainUiStateImpl) then) =
      __$$MainUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe? recipe, String errorMessage, bool isLoading});

  @override
  $RecipeCopyWith<$Res>? get recipe;
}

/// @nodoc
class __$$MainUiStateImplCopyWithImpl<$Res>
    extends _$MainUiStateCopyWithImpl<$Res, _$MainUiStateImpl>
    implements _$$MainUiStateImplCopyWith<$Res> {
  __$$MainUiStateImplCopyWithImpl(
      _$MainUiStateImpl _value, $Res Function(_$MainUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? errorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_$MainUiStateImpl(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainUiStateImpl implements _MainUiState {
  const _$MainUiStateImpl(
      {this.recipe, this.errorMessage = '', this.isLoading = false});

  @override
  final Recipe? recipe;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MainUiState(recipe: $recipe, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUiStateImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, errorMessage, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUiStateImplCopyWith<_$MainUiStateImpl> get copyWith =>
      __$$MainUiStateImplCopyWithImpl<_$MainUiStateImpl>(this, _$identity);
}

abstract class _MainUiState implements MainUiState {
  const factory _MainUiState(
      {final Recipe? recipe,
      final String errorMessage,
      final bool isLoading}) = _$MainUiStateImpl;

  @override
  Recipe? get recipe;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MainUiStateImplCopyWith<_$MainUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
