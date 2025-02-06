// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemosState {
  List<Memo> get memos => throw _privateConstructorUsedError;
  MemoOrder get memoOrder => throw _privateConstructorUsedError;
  bool get showOrderSection => throw _privateConstructorUsedError;

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemosStateCopyWith<MemosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemosStateCopyWith<$Res> {
  factory $MemosStateCopyWith(
          MemosState value, $Res Function(MemosState) then) =
      _$MemosStateCopyWithImpl<$Res, MemosState>;
  @useResult
  $Res call({List<Memo> memos, MemoOrder memoOrder, bool showOrderSection});

  $MemoOrderCopyWith<$Res> get memoOrder;
}

/// @nodoc
class _$MemosStateCopyWithImpl<$Res, $Val extends MemosState>
    implements $MemosStateCopyWith<$Res> {
  _$MemosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memos = null,
    Object? memoOrder = null,
    Object? showOrderSection = null,
  }) {
    return _then(_value.copyWith(
      memos: null == memos
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      memoOrder: null == memoOrder
          ? _value.memoOrder
          : memoOrder // ignore: cast_nullable_to_non_nullable
              as MemoOrder,
      showOrderSection: null == showOrderSection
          ? _value.showOrderSection
          : showOrderSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoOrderCopyWith<$Res> get memoOrder {
    return $MemoOrderCopyWith<$Res>(_value.memoOrder, (value) {
      return _then(_value.copyWith(memoOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemosStateImplCopyWith<$Res>
    implements $MemosStateCopyWith<$Res> {
  factory _$$MemosStateImplCopyWith(
          _$MemosStateImpl value, $Res Function(_$MemosStateImpl) then) =
      __$$MemosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Memo> memos, MemoOrder memoOrder, bool showOrderSection});

  @override
  $MemoOrderCopyWith<$Res> get memoOrder;
}

/// @nodoc
class __$$MemosStateImplCopyWithImpl<$Res>
    extends _$MemosStateCopyWithImpl<$Res, _$MemosStateImpl>
    implements _$$MemosStateImplCopyWith<$Res> {
  __$$MemosStateImplCopyWithImpl(
      _$MemosStateImpl _value, $Res Function(_$MemosStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memos = null,
    Object? memoOrder = null,
    Object? showOrderSection = null,
  }) {
    return _then(_$MemosStateImpl(
      memos: null == memos
          ? _value._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      memoOrder: null == memoOrder
          ? _value.memoOrder
          : memoOrder // ignore: cast_nullable_to_non_nullable
              as MemoOrder,
      showOrderSection: null == showOrderSection
          ? _value.showOrderSection
          : showOrderSection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MemosStateImpl implements _MemosState {
  _$MemosStateImpl(
      {required final List<Memo> memos,
      required this.memoOrder,
      required this.showOrderSection})
      : _memos = memos;

  final List<Memo> _memos;
  @override
  List<Memo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  @override
  final MemoOrder memoOrder;
  @override
  final bool showOrderSection;

  @override
  String toString() {
    return 'MemosState(memos: $memos, memoOrder: $memoOrder, showOrderSection: $showOrderSection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemosStateImpl &&
            const DeepCollectionEquality().equals(other._memos, _memos) &&
            (identical(other.memoOrder, memoOrder) ||
                other.memoOrder == memoOrder) &&
            (identical(other.showOrderSection, showOrderSection) ||
                other.showOrderSection == showOrderSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_memos), memoOrder, showOrderSection);

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemosStateImplCopyWith<_$MemosStateImpl> get copyWith =>
      __$$MemosStateImplCopyWithImpl<_$MemosStateImpl>(this, _$identity);
}

abstract class _MemosState implements MemosState {
  factory _MemosState(
      {required final List<Memo> memos,
      required final MemoOrder memoOrder,
      required final bool showOrderSection}) = _$MemosStateImpl;

  @override
  List<Memo> get memos;
  @override
  MemoOrder get memoOrder;
  @override
  bool get showOrderSection;

  /// Create a copy of MemosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemosStateImplCopyWith<_$MemosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
