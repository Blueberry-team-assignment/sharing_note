// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemoOrder {
  OrderType get orderType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) time,
    required TResult Function(OrderType orderType) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? time,
    TResult? Function(OrderType orderType)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? time,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoOrderByTitle value) title,
    required TResult Function(MemoOrderByTime value) time,
    required TResult Function(MemoOrderByColor value) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemoOrderByTitle value)? title,
    TResult? Function(MemoOrderByTime value)? time,
    TResult? Function(MemoOrderByColor value)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoOrderByTitle value)? title,
    TResult Function(MemoOrderByTime value)? time,
    TResult Function(MemoOrderByColor value)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoOrderCopyWith<MemoOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoOrderCopyWith<$Res> {
  factory $MemoOrderCopyWith(MemoOrder value, $Res Function(MemoOrder) then) =
      _$MemoOrderCopyWithImpl<$Res, MemoOrder>;
  @useResult
  $Res call({OrderType orderType});

  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$MemoOrderCopyWithImpl<$Res, $Val extends MemoOrder>
    implements $MemoOrderCopyWith<$Res> {
  _$MemoOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_value.copyWith(
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ) as $Val);
  }

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<$Res> get orderType {
    return $OrderTypeCopyWith<$Res>(_value.orderType, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoOrderByTitleImplCopyWith<$Res>
    implements $MemoOrderCopyWith<$Res> {
  factory _$$MemoOrderByTitleImplCopyWith(_$MemoOrderByTitleImpl value,
          $Res Function(_$MemoOrderByTitleImpl) then) =
      __$$MemoOrderByTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$MemoOrderByTitleImplCopyWithImpl<$Res>
    extends _$MemoOrderCopyWithImpl<$Res, _$MemoOrderByTitleImpl>
    implements _$$MemoOrderByTitleImplCopyWith<$Res> {
  __$$MemoOrderByTitleImplCopyWithImpl(_$MemoOrderByTitleImpl _value,
      $Res Function(_$MemoOrderByTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$MemoOrderByTitleImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$MemoOrderByTitleImpl implements MemoOrderByTitle {
  const _$MemoOrderByTitleImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'MemoOrder.title(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoOrderByTitleImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoOrderByTitleImplCopyWith<_$MemoOrderByTitleImpl> get copyWith =>
      __$$MemoOrderByTitleImplCopyWithImpl<_$MemoOrderByTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) time,
    required TResult Function(OrderType orderType) color,
  }) {
    return title(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? time,
    TResult? Function(OrderType orderType)? color,
  }) {
    return title?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? time,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoOrderByTitle value) title,
    required TResult Function(MemoOrderByTime value) time,
    required TResult Function(MemoOrderByColor value) color,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemoOrderByTitle value)? title,
    TResult? Function(MemoOrderByTime value)? time,
    TResult? Function(MemoOrderByColor value)? color,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoOrderByTitle value)? title,
    TResult Function(MemoOrderByTime value)? time,
    TResult Function(MemoOrderByColor value)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class MemoOrderByTitle implements MemoOrder {
  const factory MemoOrderByTitle(final OrderType orderType) =
      _$MemoOrderByTitleImpl;

  @override
  OrderType get orderType;

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoOrderByTitleImplCopyWith<_$MemoOrderByTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemoOrderByTimeImplCopyWith<$Res>
    implements $MemoOrderCopyWith<$Res> {
  factory _$$MemoOrderByTimeImplCopyWith(_$MemoOrderByTimeImpl value,
          $Res Function(_$MemoOrderByTimeImpl) then) =
      __$$MemoOrderByTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$MemoOrderByTimeImplCopyWithImpl<$Res>
    extends _$MemoOrderCopyWithImpl<$Res, _$MemoOrderByTimeImpl>
    implements _$$MemoOrderByTimeImplCopyWith<$Res> {
  __$$MemoOrderByTimeImplCopyWithImpl(
      _$MemoOrderByTimeImpl _value, $Res Function(_$MemoOrderByTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$MemoOrderByTimeImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$MemoOrderByTimeImpl implements MemoOrderByTime {
  const _$MemoOrderByTimeImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'MemoOrder.time(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoOrderByTimeImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoOrderByTimeImplCopyWith<_$MemoOrderByTimeImpl> get copyWith =>
      __$$MemoOrderByTimeImplCopyWithImpl<_$MemoOrderByTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) time,
    required TResult Function(OrderType orderType) color,
  }) {
    return time(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? time,
    TResult? Function(OrderType orderType)? color,
  }) {
    return time?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? time,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoOrderByTitle value) title,
    required TResult Function(MemoOrderByTime value) time,
    required TResult Function(MemoOrderByColor value) color,
  }) {
    return time(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemoOrderByTitle value)? title,
    TResult? Function(MemoOrderByTime value)? time,
    TResult? Function(MemoOrderByColor value)? color,
  }) {
    return time?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoOrderByTitle value)? title,
    TResult Function(MemoOrderByTime value)? time,
    TResult Function(MemoOrderByColor value)? color,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(this);
    }
    return orElse();
  }
}

abstract class MemoOrderByTime implements MemoOrder {
  const factory MemoOrderByTime(final OrderType orderType) =
      _$MemoOrderByTimeImpl;

  @override
  OrderType get orderType;

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoOrderByTimeImplCopyWith<_$MemoOrderByTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemoOrderByColorImplCopyWith<$Res>
    implements $MemoOrderCopyWith<$Res> {
  factory _$$MemoOrderByColorImplCopyWith(_$MemoOrderByColorImpl value,
          $Res Function(_$MemoOrderByColorImpl) then) =
      __$$MemoOrderByColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$MemoOrderByColorImplCopyWithImpl<$Res>
    extends _$MemoOrderCopyWithImpl<$Res, _$MemoOrderByColorImpl>
    implements _$$MemoOrderByColorImplCopyWith<$Res> {
  __$$MemoOrderByColorImplCopyWithImpl(_$MemoOrderByColorImpl _value,
      $Res Function(_$MemoOrderByColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$MemoOrderByColorImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$MemoOrderByColorImpl implements MemoOrderByColor {
  const _$MemoOrderByColorImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'MemoOrder.color(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoOrderByColorImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoOrderByColorImplCopyWith<_$MemoOrderByColorImpl> get copyWith =>
      __$$MemoOrderByColorImplCopyWithImpl<_$MemoOrderByColorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) time,
    required TResult Function(OrderType orderType) color,
  }) {
    return color(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? time,
    TResult? Function(OrderType orderType)? color,
  }) {
    return color?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? time,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoOrderByTitle value) title,
    required TResult Function(MemoOrderByTime value) time,
    required TResult Function(MemoOrderByColor value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemoOrderByTitle value)? title,
    TResult? Function(MemoOrderByTime value)? time,
    TResult? Function(MemoOrderByColor value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoOrderByTitle value)? title,
    TResult Function(MemoOrderByTime value)? time,
    TResult Function(MemoOrderByColor value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class MemoOrderByColor implements MemoOrder {
  const factory MemoOrderByColor(final OrderType orderType) =
      _$MemoOrderByColorImpl;

  @override
  OrderType get orderType;

  /// Create a copy of MemoOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoOrderByColorImplCopyWith<_$MemoOrderByColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
