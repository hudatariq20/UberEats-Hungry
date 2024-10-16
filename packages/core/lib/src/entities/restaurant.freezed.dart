// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<FoodCategory> get foodCategory => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  List<MenuSection> get menu => throw _privateConstructorUsedError;
  List<MenuItem> get featuredMenuItems => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String> get additionalImageUrl => throw _privateConstructorUsedError;
  List<workingHour> get workingHours => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<FoodCategory> foodCategory,
      String? description,
      Address address,
      List<MenuSection> menu,
      List<MenuItem> featuredMenuItems,
      String? imageUrl,
      List<String> additionalImageUrl,
      List<workingHour> workingHours,
      double? rating,
      int? reviewsCount,
      List<Review>? reviews});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? foodCategory = null,
    Object? description = freezed,
    Object? address = null,
    Object? menu = null,
    Object? featuredMenuItems = null,
    Object? imageUrl = freezed,
    Object? additionalImageUrl = null,
    Object? workingHours = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodCategory: null == foodCategory
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as List<FoodCategory>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      featuredMenuItems: null == featuredMenuItems
          ? _value.featuredMenuItems
          : featuredMenuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalImageUrl: null == additionalImageUrl
          ? _value.additionalImageUrl
          : additionalImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHours: null == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as List<workingHour>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
          _$RestaurantImpl value, $Res Function(_$RestaurantImpl) then) =
      __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<FoodCategory> foodCategory,
      String? description,
      Address address,
      List<MenuSection> menu,
      List<MenuItem> featuredMenuItems,
      String? imageUrl,
      List<String> additionalImageUrl,
      List<workingHour> workingHours,
      double? rating,
      int? reviewsCount,
      List<Review>? reviews});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
      _$RestaurantImpl _value, $Res Function(_$RestaurantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? foodCategory = null,
    Object? description = freezed,
    Object? address = null,
    Object? menu = null,
    Object? featuredMenuItems = null,
    Object? imageUrl = freezed,
    Object? additionalImageUrl = null,
    Object? workingHours = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$RestaurantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodCategory: null == foodCategory
          ? _value._foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as List<FoodCategory>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      featuredMenuItems: null == featuredMenuItems
          ? _value._featuredMenuItems
          : featuredMenuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalImageUrl: null == additionalImageUrl
          ? _value._additionalImageUrl
          : additionalImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingHours: null == workingHours
          ? _value._workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as List<workingHour>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantImpl implements _Restaurant {
  const _$RestaurantImpl(
      {required this.id,
      required this.name,
      final List<FoodCategory> foodCategory = const [],
      this.description,
      required this.address,
      required final List<MenuSection> menu,
      final List<MenuItem> featuredMenuItems = const [],
      this.imageUrl,
      final List<String> additionalImageUrl = const [],
      final List<workingHour> workingHours = const [],
      this.rating,
      this.reviewsCount,
      final List<Review>? reviews})
      : _foodCategory = foodCategory,
        _menu = menu,
        _featuredMenuItems = featuredMenuItems,
        _additionalImageUrl = additionalImageUrl,
        _workingHours = workingHours,
        _reviews = reviews;

  factory _$RestaurantImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<FoodCategory> _foodCategory;
  @override
  @JsonKey()
  List<FoodCategory> get foodCategory {
    if (_foodCategory is EqualUnmodifiableListView) return _foodCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodCategory);
  }

  @override
  final String? description;
  @override
  final Address address;
  final List<MenuSection> _menu;
  @override
  List<MenuSection> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  final List<MenuItem> _featuredMenuItems;
  @override
  @JsonKey()
  List<MenuItem> get featuredMenuItems {
    if (_featuredMenuItems is EqualUnmodifiableListView)
      return _featuredMenuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredMenuItems);
  }

  @override
  final String? imageUrl;
  final List<String> _additionalImageUrl;
  @override
  @JsonKey()
  List<String> get additionalImageUrl {
    if (_additionalImageUrl is EqualUnmodifiableListView)
      return _additionalImageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalImageUrl);
  }

  final List<workingHour> _workingHours;
  @override
  @JsonKey()
  List<workingHour> get workingHours {
    if (_workingHours is EqualUnmodifiableListView) return _workingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingHours);
  }

  @override
  final double? rating;
  @override
  final int? reviewsCount;
  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, foodCategory: $foodCategory, description: $description, address: $address, menu: $menu, featuredMenuItems: $featuredMenuItems, imageUrl: $imageUrl, additionalImageUrl: $additionalImageUrl, workingHours: $workingHours, rating: $rating, reviewsCount: $reviewsCount, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._foodCategory, _foodCategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            const DeepCollectionEquality()
                .equals(other._featuredMenuItems, _featuredMenuItems) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._additionalImageUrl, _additionalImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._workingHours, _workingHours) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_foodCategory),
      description,
      address,
      const DeepCollectionEquality().hash(_menu),
      const DeepCollectionEquality().hash(_featuredMenuItems),
      imageUrl,
      const DeepCollectionEquality().hash(_additionalImageUrl),
      const DeepCollectionEquality().hash(_workingHours),
      rating,
      reviewsCount,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantImplToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {required final String id,
      required final String name,
      final List<FoodCategory> foodCategory,
      final String? description,
      required final Address address,
      required final List<MenuSection> menu,
      final List<MenuItem> featuredMenuItems,
      final String? imageUrl,
      final List<String> additionalImageUrl,
      final List<workingHour> workingHours,
      final double? rating,
      final int? reviewsCount,
      final List<Review>? reviews}) = _$RestaurantImpl;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$RestaurantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<FoodCategory> get foodCategory;
  @override
  String? get description;
  @override
  Address get address;
  @override
  List<MenuSection> get menu;
  @override
  List<MenuItem> get featuredMenuItems;
  @override
  String? get imageUrl;
  @override
  List<String> get additionalImageUrl;
  @override
  List<workingHour> get workingHours;
  @override
  double? get rating;
  @override
  int? get reviewsCount;
  @override
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
