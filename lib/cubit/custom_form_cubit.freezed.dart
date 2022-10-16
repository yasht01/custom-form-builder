// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContainerData> containersList) listChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContainerData> containersList)? listChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContainerData> containersList)? listChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListChanged value)? listChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomFormStateCopyWith<$Res> {
  factory $CustomFormStateCopyWith(
          CustomFormState value, $Res Function(CustomFormState) then) =
      _$CustomFormStateCopyWithImpl<$Res, CustomFormState>;
}

/// @nodoc
class _$CustomFormStateCopyWithImpl<$Res, $Val extends CustomFormState>
    implements $CustomFormStateCopyWith<$Res> {
  _$CustomFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CustomFormStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CustomFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContainerData> containersList) listChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContainerData> containersList)? listChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContainerData> containersList)? listChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListChanged value)? listChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ListChangedCopyWith<$Res> {
  factory _$$_ListChangedCopyWith(
          _$_ListChanged value, $Res Function(_$_ListChanged) then) =
      __$$_ListChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContainerData> containersList});
}

/// @nodoc
class __$$_ListChangedCopyWithImpl<$Res>
    extends _$CustomFormStateCopyWithImpl<$Res, _$_ListChanged>
    implements _$$_ListChangedCopyWith<$Res> {
  __$$_ListChangedCopyWithImpl(
      _$_ListChanged _value, $Res Function(_$_ListChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containersList = null,
  }) {
    return _then(_$_ListChanged(
      containersList: null == containersList
          ? _value._containersList
          : containersList // ignore: cast_nullable_to_non_nullable
              as List<ContainerData>,
    ));
  }
}

/// @nodoc

class _$_ListChanged implements _ListChanged {
  const _$_ListChanged({required final List<ContainerData> containersList})
      : _containersList = containersList;

  final List<ContainerData> _containersList;
  @override
  List<ContainerData> get containersList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_containersList);
  }

  @override
  String toString() {
    return 'CustomFormState.listChanged(containersList: $containersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListChanged &&
            const DeepCollectionEquality()
                .equals(other._containersList, _containersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_containersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListChangedCopyWith<_$_ListChanged> get copyWith =>
      __$$_ListChangedCopyWithImpl<_$_ListChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ContainerData> containersList) listChanged,
  }) {
    return listChanged(containersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ContainerData> containersList)? listChanged,
  }) {
    return listChanged?.call(containersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ContainerData> containersList)? listChanged,
    required TResult orElse(),
  }) {
    if (listChanged != null) {
      return listChanged(containersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
  }) {
    return listChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListChanged value)? listChanged,
  }) {
    return listChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    required TResult orElse(),
  }) {
    if (listChanged != null) {
      return listChanged(this);
    }
    return orElse();
  }
}

abstract class _ListChanged implements CustomFormState {
  const factory _ListChanged(
      {required final List<ContainerData> containersList}) = _$_ListChanged;

  List<ContainerData> get containersList;
  @JsonKey(ignore: true)
  _$$_ListChangedCopyWith<_$_ListChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
