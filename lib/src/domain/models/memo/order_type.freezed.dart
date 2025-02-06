// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() desc,
    required TResult Function() asc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? desc,
    TResult? Function()? asc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? desc,
    TResult Function()? asc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Desc value) desc,
    required TResult Function(Asc value) asc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Desc value)? desc,
    TResult? Function(Asc value)? asc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Desc value)? desc,
    TResult Function(Asc value)? asc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeCopyWith<$Res> {
  factory $OrderTypeCopyWith(OrderType value, $Res Function(OrderType) then) =
      _$OrderTypeCopyWithImpl<$Res, OrderType>;
}

/// @nodoc
class _$OrderTypeCopyWithImpl<$Res, $Val extends OrderType>
    implements $OrderTypeCopyWith<$Res> {
  _$OrderTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DescImplCopyWith<$Res> {
  factory _$$DescImplCopyWith(
          _$DescImpl value, $Res Function(_$DescImpl) then) =
      __$$DescImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DescImplCopyWithImpl<$Res>
    extends _$OrderTypeCopyWithImpl<$Res, _$DescImpl>
    implements _$$DescImplCopyWith<$Res> {
  __$$DescImplCopyWithImpl(_$DescImpl _value, $Res Function(_$DescImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DescImpl implements Desc {
  const _$DescImpl();

  @override
  String toString() {
    return 'OrderType.desc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DescImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() desc,
    required TResult Function() asc,
  }) {
    return desc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? desc,
    TResult? Function()? asc,
  }) {
    return desc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? desc,
    TResult Function()? asc,
    required TResult orElse(),
  }) {
    if (desc != null) {
      return desc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Desc value) desc,
    required TResult Function(Asc value) asc,
  }) {
    return desc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Desc value)? desc,
    TResult? Function(Asc value)? asc,
  }) {
    return desc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Desc value)? desc,
    TResult Function(Asc value)? asc,
    required TResult orElse(),
  }) {
    if (desc != null) {
      return desc(this);
    }
    return orElse();
  }
}

abstract class Desc implements OrderType {
  const factory Desc() = _$DescImpl;
}

/// @nodoc
abstract class _$$AscImplCopyWith<$Res> {
  factory _$$AscImplCopyWith(_$AscImpl value, $Res Function(_$AscImpl) then) =
      __$$AscImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AscImplCopyWithImpl<$Res>
    extends _$OrderTypeCopyWithImpl<$Res, _$AscImpl>
    implements _$$AscImplCopyWith<$Res> {
  __$$AscImplCopyWithImpl(_$AscImpl _value, $Res Function(_$AscImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AscImpl implements Asc {
  const _$AscImpl();

  @override
  String toString() {
    return 'OrderType.asc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AscImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() desc,
    required TResult Function() asc,
  }) {
    return asc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? desc,
    TResult? Function()? asc,
  }) {
    return asc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? desc,
    TResult Function()? asc,
    required TResult orElse(),
  }) {
    if (asc != null) {
      return asc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Desc value) desc,
    required TResult Function(Asc value) asc,
  }) {
    return asc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Desc value)? desc,
    TResult? Function(Asc value)? asc,
  }) {
    return asc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Desc value)? desc,
    TResult Function(Asc value)? asc,
    required TResult orElse(),
  }) {
    if (asc != null) {
      return asc(this);
    }
    return orElse();
  }
}

abstract class Asc implements OrderType {
  const factory Asc() = _$AscImpl;
}
