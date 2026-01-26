// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'api_116.enums.swagger.dart' as enums;

part 'api_116.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AdminActivateCategoryResponse {
  const AdminActivateCategoryResponse({required this.category});

  factory AdminActivateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminActivateCategoryResponseFromJson(json);

  static const toJsonFactory = _$AdminActivateCategoryResponseToJson;
  Map<String, dynamic> toJson() => _$AdminActivateCategoryResponseToJson(this);

  @JsonKey(name: 'category')
  final CategoryDto category;
  static const fromJsonFactory = _$AdminActivateCategoryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivateCategoryResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $AdminActivateCategoryResponseExtension
    on AdminActivateCategoryResponse {
  AdminActivateCategoryResponse copyWith({CategoryDto? category}) {
    return AdminActivateCategoryResponse(category: category ?? this.category);
  }

  AdminActivateCategoryResponse copyWithWrapped({
    Wrapped<CategoryDto>? category,
  }) {
    return AdminActivateCategoryResponse(
      category: (category != null ? category.value : this.category),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivateContentTypeResponse {
  const AdminActivateContentTypeResponse({required this.contentType});

  factory AdminActivateContentTypeResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminActivateContentTypeResponseFromJson(json);

  static const toJsonFactory = _$AdminActivateContentTypeResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminActivateContentTypeResponseToJson(this);

  @JsonKey(name: 'contentType')
  final ContentTypeDto contentType;
  static const fromJsonFactory = _$AdminActivateContentTypeResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivateContentTypeResponse &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentType) ^ runtimeType.hashCode;
}

extension $AdminActivateContentTypeResponseExtension
    on AdminActivateContentTypeResponse {
  AdminActivateContentTypeResponse copyWith({ContentTypeDto? contentType}) {
    return AdminActivateContentTypeResponse(
      contentType: contentType ?? this.contentType,
    );
  }

  AdminActivateContentTypeResponse copyWithWrapped({
    Wrapped<ContentTypeDto>? contentType,
  }) {
    return AdminActivateContentTypeResponse(
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivatePackageResponse {
  const AdminActivatePackageResponse({required this.package});

  factory AdminActivatePackageResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminActivatePackageResponseFromJson(json);

  static const toJsonFactory = _$AdminActivatePackageResponseToJson;
  Map<String, dynamic> toJson() => _$AdminActivatePackageResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  static const fromJsonFactory = _$AdminActivatePackageResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivatePackageResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^ runtimeType.hashCode;
}

extension $AdminActivatePackageResponseExtension
    on AdminActivatePackageResponse {
  AdminActivatePackageResponse copyWith({PackageDto? package}) {
    return AdminActivatePackageResponse(package: package ?? this.package);
  }

  AdminActivatePackageResponse copyWithWrapped({Wrapped<PackageDto>? package}) {
    return AdminActivatePackageResponse(
      package: (package != null ? package.value : this.package),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivatePermissionResponse {
  const AdminActivatePermissionResponse({required this.permission});

  factory AdminActivatePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminActivatePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminActivatePermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminActivatePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminActivatePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivatePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminActivatePermissionResponseExtension
    on AdminActivatePermissionResponse {
  AdminActivatePermissionResponse copyWith({PermissionDto? permission}) {
    return AdminActivatePermissionResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminActivatePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminActivatePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivatePricingTierResponse {
  const AdminActivatePricingTierResponse({required this.pricingTier});

  factory AdminActivatePricingTierResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminActivatePricingTierResponseFromJson(json);

  static const toJsonFactory = _$AdminActivatePricingTierResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminActivatePricingTierResponseToJson(this);

  @JsonKey(name: 'pricingTier')
  final PricingTierDto pricingTier;
  static const fromJsonFactory = _$AdminActivatePricingTierResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivatePricingTierResponse &&
            (identical(other.pricingTier, pricingTier) ||
                const DeepCollectionEquality().equals(
                  other.pricingTier,
                  pricingTier,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTier) ^ runtimeType.hashCode;
}

extension $AdminActivatePricingTierResponseExtension
    on AdminActivatePricingTierResponse {
  AdminActivatePricingTierResponse copyWith({PricingTierDto? pricingTier}) {
    return AdminActivatePricingTierResponse(
      pricingTier: pricingTier ?? this.pricingTier,
    );
  }

  AdminActivatePricingTierResponse copyWithWrapped({
    Wrapped<PricingTierDto>? pricingTier,
  }) {
    return AdminActivatePricingTierResponse(
      pricingTier: (pricingTier != null ? pricingTier.value : this.pricingTier),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivatePromotionLevelResponse {
  const AdminActivatePromotionLevelResponse({required this.promotionLevel});

  factory AdminActivatePromotionLevelResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminActivatePromotionLevelResponseFromJson(json);

  static const toJsonFactory = _$AdminActivatePromotionLevelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminActivatePromotionLevelResponseToJson(this);

  @JsonKey(name: 'promotionLevel')
  final PromotionLevelDto promotionLevel;
  static const fromJsonFactory = _$AdminActivatePromotionLevelResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivatePromotionLevelResponse &&
            (identical(other.promotionLevel, promotionLevel) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevel,
                  promotionLevel,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevel) ^
      runtimeType.hashCode;
}

extension $AdminActivatePromotionLevelResponseExtension
    on AdminActivatePromotionLevelResponse {
  AdminActivatePromotionLevelResponse copyWith({
    PromotionLevelDto? promotionLevel,
  }) {
    return AdminActivatePromotionLevelResponse(
      promotionLevel: promotionLevel ?? this.promotionLevel,
    );
  }

  AdminActivatePromotionLevelResponse copyWithWrapped({
    Wrapped<PromotionLevelDto>? promotionLevel,
  }) {
    return AdminActivatePromotionLevelResponse(
      promotionLevel: (promotionLevel != null
          ? promotionLevel.value
          : this.promotionLevel),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivateRoleResponse {
  const AdminActivateRoleResponse({required this.role});

  factory AdminActivateRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminActivateRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminActivateRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminActivateRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  static const fromJsonFactory = _$AdminActivateRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivateRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminActivateRoleResponseExtension on AdminActivateRoleResponse {
  AdminActivateRoleResponse copyWith({RoleDto? role}) {
    return AdminActivateRoleResponse(role: role ?? this.role);
  }

  AdminActivateRoleResponse copyWithWrapped({Wrapped<RoleDto>? role}) {
    return AdminActivateRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminActivateShortVideoResponse {
  const AdminActivateShortVideoResponse({required this.isSuccess});

  factory AdminActivateShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminActivateShortVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminActivateShortVideoResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminActivateShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminActivateShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminActivateShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminActivateShortVideoResponseExtension
    on AdminActivateShortVideoResponse {
  AdminActivateShortVideoResponse copyWith({bool? isSuccess}) {
    return AdminActivateShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminActivateShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminActivateShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddCategoryPricingRequest {
  const AdminAddCategoryPricingRequest({
    required this.pricingTierId,
    required this.priceUsd,
  });

  factory AdminAddCategoryPricingRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAddCategoryPricingRequestFromJson(json);

  static const toJsonFactory = _$AdminAddCategoryPricingRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAddCategoryPricingRequestToJson(this);

  @JsonKey(name: 'pricingTierId')
  final String pricingTierId;
  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  static const fromJsonFactory = _$AdminAddCategoryPricingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddCategoryPricingRequest &&
            (identical(other.pricingTierId, pricingTierId) ||
                const DeepCollectionEquality().equals(
                  other.pricingTierId,
                  pricingTierId,
                )) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTierId) ^
      const DeepCollectionEquality().hash(priceUsd) ^
      runtimeType.hashCode;
}

extension $AdminAddCategoryPricingRequestExtension
    on AdminAddCategoryPricingRequest {
  AdminAddCategoryPricingRequest copyWith({
    String? pricingTierId,
    double? priceUsd,
  }) {
    return AdminAddCategoryPricingRequest(
      pricingTierId: pricingTierId ?? this.pricingTierId,
      priceUsd: priceUsd ?? this.priceUsd,
    );
  }

  AdminAddCategoryPricingRequest copyWithWrapped({
    Wrapped<String>? pricingTierId,
    Wrapped<double>? priceUsd,
  }) {
    return AdminAddCategoryPricingRequest(
      pricingTierId: (pricingTierId != null
          ? pricingTierId.value
          : this.pricingTierId),
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddCategoryPricingResponse {
  const AdminAddCategoryPricingResponse({required this.pricing});

  factory AdminAddCategoryPricingResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAddCategoryPricingResponseFromJson(json);

  static const toJsonFactory = _$AdminAddCategoryPricingResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminAddCategoryPricingResponseToJson(this);

  @JsonKey(name: 'pricing')
  final CategoryPricingDto pricing;
  static const fromJsonFactory = _$AdminAddCategoryPricingResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddCategoryPricingResponse &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality().equals(other.pricing, pricing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricing) ^ runtimeType.hashCode;
}

extension $AdminAddCategoryPricingResponseExtension
    on AdminAddCategoryPricingResponse {
  AdminAddCategoryPricingResponse copyWith({CategoryPricingDto? pricing}) {
    return AdminAddCategoryPricingResponse(pricing: pricing ?? this.pricing);
  }

  AdminAddCategoryPricingResponse copyWithWrapped({
    Wrapped<CategoryPricingDto>? pricing,
  }) {
    return AdminAddCategoryPricingResponse(
      pricing: (pricing != null ? pricing.value : this.pricing),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddItemTierRequest {
  const AdminAddItemTierRequest({required this.pricingTierId});

  factory AdminAddItemTierRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAddItemTierRequestFromJson(json);

  static const toJsonFactory = _$AdminAddItemTierRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAddItemTierRequestToJson(this);

  @JsonKey(name: 'pricingTierId')
  final String pricingTierId;
  static const fromJsonFactory = _$AdminAddItemTierRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddItemTierRequest &&
            (identical(other.pricingTierId, pricingTierId) ||
                const DeepCollectionEquality().equals(
                  other.pricingTierId,
                  pricingTierId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTierId) ^ runtimeType.hashCode;
}

extension $AdminAddItemTierRequestExtension on AdminAddItemTierRequest {
  AdminAddItemTierRequest copyWith({String? pricingTierId}) {
    return AdminAddItemTierRequest(
      pricingTierId: pricingTierId ?? this.pricingTierId,
    );
  }

  AdminAddItemTierRequest copyWithWrapped({Wrapped<String>? pricingTierId}) {
    return AdminAddItemTierRequest(
      pricingTierId: (pricingTierId != null
          ? pricingTierId.value
          : this.pricingTierId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddItemTierResponse {
  const AdminAddItemTierResponse({required this.tier});

  factory AdminAddItemTierResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAddItemTierResponseFromJson(json);

  static const toJsonFactory = _$AdminAddItemTierResponseToJson;
  Map<String, dynamic> toJson() => _$AdminAddItemTierResponseToJson(this);

  @JsonKey(name: 'tier')
  final ItemTierDto tier;
  static const fromJsonFactory = _$AdminAddItemTierResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddItemTierResponse &&
            (identical(other.tier, tier) ||
                const DeepCollectionEquality().equals(other.tier, tier)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tier) ^ runtimeType.hashCode;
}

extension $AdminAddItemTierResponseExtension on AdminAddItemTierResponse {
  AdminAddItemTierResponse copyWith({ItemTierDto? tier}) {
    return AdminAddItemTierResponse(tier: tier ?? this.tier);
  }

  AdminAddItemTierResponse copyWithWrapped({Wrapped<ItemTierDto>? tier}) {
    return AdminAddItemTierResponse(
      tier: (tier != null ? tier.value : this.tier),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddOrderItemRequest {
  const AdminAddOrderItemRequest({
    required this.contentKind,
    required this.categoryId,
    this.promotionLevelId,
    required this.socialBoost,
    required this.isBonus,
  });

  factory AdminAddOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAddOrderItemRequestFromJson(json);

  static const toJsonFactory = _$AdminAddOrderItemRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAddOrderItemRequestToJson(this);

  @JsonKey(
    name: 'contentKind',
    toJson: adminAddOrderItemRequestContentKindToJson,
    fromJson: adminAddOrderItemRequestContentKindFromJson,
  )
  final enums.AdminAddOrderItemRequestContentKind contentKind;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'promotionLevelId')
  final String? promotionLevelId;
  @JsonKey(name: 'socialBoost')
  final bool socialBoost;
  @JsonKey(name: 'isBonus')
  final bool isBonus;
  static const fromJsonFactory = _$AdminAddOrderItemRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddOrderItemRequest &&
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality().equals(
                  other.contentKind,
                  contentKind,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.promotionLevelId, promotionLevelId) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevelId,
                  promotionLevelId,
                )) &&
            (identical(other.socialBoost, socialBoost) ||
                const DeepCollectionEquality().equals(
                  other.socialBoost,
                  socialBoost,
                )) &&
            (identical(other.isBonus, isBonus) ||
                const DeepCollectionEquality().equals(other.isBonus, isBonus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(promotionLevelId) ^
      const DeepCollectionEquality().hash(socialBoost) ^
      const DeepCollectionEquality().hash(isBonus) ^
      runtimeType.hashCode;
}

extension $AdminAddOrderItemRequestExtension on AdminAddOrderItemRequest {
  AdminAddOrderItemRequest copyWith({
    enums.AdminAddOrderItemRequestContentKind? contentKind,
    String? categoryId,
    String? promotionLevelId,
    bool? socialBoost,
    bool? isBonus,
  }) {
    return AdminAddOrderItemRequest(
      contentKind: contentKind ?? this.contentKind,
      categoryId: categoryId ?? this.categoryId,
      promotionLevelId: promotionLevelId ?? this.promotionLevelId,
      socialBoost: socialBoost ?? this.socialBoost,
      isBonus: isBonus ?? this.isBonus,
    );
  }

  AdminAddOrderItemRequest copyWithWrapped({
    Wrapped<enums.AdminAddOrderItemRequestContentKind>? contentKind,
    Wrapped<String>? categoryId,
    Wrapped<String?>? promotionLevelId,
    Wrapped<bool>? socialBoost,
    Wrapped<bool>? isBonus,
  }) {
    return AdminAddOrderItemRequest(
      contentKind: (contentKind != null ? contentKind.value : this.contentKind),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      promotionLevelId: (promotionLevelId != null
          ? promotionLevelId.value
          : this.promotionLevelId),
      socialBoost: (socialBoost != null ? socialBoost.value : this.socialBoost),
      isBonus: (isBonus != null ? isBonus.value : this.isBonus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddOrderItemResponse {
  const AdminAddOrderItemResponse({required this.item});

  factory AdminAddOrderItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAddOrderItemResponseFromJson(json);

  static const toJsonFactory = _$AdminAddOrderItemResponseToJson;
  Map<String, dynamic> toJson() => _$AdminAddOrderItemResponseToJson(this);

  @JsonKey(name: 'item')
  final OrderItemDto item;
  static const fromJsonFactory = _$AdminAddOrderItemResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddOrderItemResponse &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(item) ^ runtimeType.hashCode;
}

extension $AdminAddOrderItemResponseExtension on AdminAddOrderItemResponse {
  AdminAddOrderItemResponse copyWith({OrderItemDto? item}) {
    return AdminAddOrderItemResponse(item: item ?? this.item);
  }

  AdminAddOrderItemResponse copyWithWrapped({Wrapped<OrderItemDto>? item}) {
    return AdminAddOrderItemResponse(
      item: (item != null ? item.value : this.item),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddPackageSlotRequest {
  const AdminAddPackageSlotRequest({
    this.categoryId,
    required this.isRequired,
    required this.quantity,
  });

  factory AdminAddPackageSlotRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAddPackageSlotRequestFromJson(json);

  static const toJsonFactory = _$AdminAddPackageSlotRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAddPackageSlotRequestToJson(this);

  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'isRequired')
  final bool isRequired;
  @JsonKey(name: 'quantity')
  final int quantity;
  static const fromJsonFactory = _$AdminAddPackageSlotRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddPackageSlotRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.isRequired, isRequired) ||
                const DeepCollectionEquality().equals(
                  other.isRequired,
                  isRequired,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(isRequired) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $AdminAddPackageSlotRequestExtension on AdminAddPackageSlotRequest {
  AdminAddPackageSlotRequest copyWith({
    String? categoryId,
    bool? isRequired,
    int? quantity,
  }) {
    return AdminAddPackageSlotRequest(
      categoryId: categoryId ?? this.categoryId,
      isRequired: isRequired ?? this.isRequired,
      quantity: quantity ?? this.quantity,
    );
  }

  AdminAddPackageSlotRequest copyWithWrapped({
    Wrapped<String?>? categoryId,
    Wrapped<bool>? isRequired,
    Wrapped<int>? quantity,
  }) {
    return AdminAddPackageSlotRequest(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      isRequired: (isRequired != null ? isRequired.value : this.isRequired),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAddPackageSlotResponse {
  const AdminAddPackageSlotResponse({required this.package});

  factory AdminAddPackageSlotResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAddPackageSlotResponseFromJson(json);

  static const toJsonFactory = _$AdminAddPackageSlotResponseToJson;
  Map<String, dynamic> toJson() => _$AdminAddPackageSlotResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  static const fromJsonFactory = _$AdminAddPackageSlotResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAddPackageSlotResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^ runtimeType.hashCode;
}

extension $AdminAddPackageSlotResponseExtension on AdminAddPackageSlotResponse {
  AdminAddPackageSlotResponse copyWith({PackageDto? package}) {
    return AdminAddPackageSlotResponse(package: package ?? this.package);
  }

  AdminAddPackageSlotResponse copyWithWrapped({Wrapped<PackageDto>? package}) {
    return AdminAddPackageSlotResponse(
      package: (package != null ? package.value : this.package),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminApproveArticleResponse {
  const AdminApproveArticleResponse({required this.isSuccess});

  factory AdminApproveArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminApproveArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminApproveArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminApproveArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminApproveArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminApproveArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminApproveArticleResponseExtension on AdminApproveArticleResponse {
  AdminApproveArticleResponse copyWith({bool? isSuccess}) {
    return AdminApproveArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminApproveArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminApproveArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminApproveVideoResponse {
  const AdminApproveVideoResponse({required this.isSuccess});

  factory AdminApproveVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminApproveVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminApproveVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminApproveVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminApproveVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminApproveVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminApproveVideoResponseExtension on AdminApproveVideoResponse {
  AdminApproveVideoResponse copyWith({bool? isSuccess}) {
    return AdminApproveVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminApproveVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminApproveVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminArchiveArticleResponse {
  const AdminArchiveArticleResponse({required this.isSuccess});

  factory AdminArchiveArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminArchiveArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminArchiveArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminArchiveArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminArchiveArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminArchiveArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminArchiveArticleResponseExtension on AdminArchiveArticleResponse {
  AdminArchiveArticleResponse copyWith({bool? isSuccess}) {
    return AdminArchiveArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminArchiveArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminArchiveArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminArchiveVideoResponse {
  const AdminArchiveVideoResponse({required this.isSuccess});

  factory AdminArchiveVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminArchiveVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminArchiveVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminArchiveVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminArchiveVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminArchiveVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminArchiveVideoResponseExtension on AdminArchiveVideoResponse {
  AdminArchiveVideoResponse copyWith({bool? isSuccess}) {
    return AdminArchiveVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminArchiveVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminArchiveVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAssignPermissionToRoleRequest {
  const AdminAssignPermissionToRoleRequest({required this.permissionId});

  factory AdminAssignPermissionToRoleRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAssignPermissionToRoleRequestFromJson(json);

  static const toJsonFactory = _$AdminAssignPermissionToRoleRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AdminAssignPermissionToRoleRequestToJson(this);

  @JsonKey(name: 'permissionId')
  final String permissionId;
  static const fromJsonFactory = _$AdminAssignPermissionToRoleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAssignPermissionToRoleRequest &&
            (identical(other.permissionId, permissionId) ||
                const DeepCollectionEquality().equals(
                  other.permissionId,
                  permissionId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permissionId) ^ runtimeType.hashCode;
}

extension $AdminAssignPermissionToRoleRequestExtension
    on AdminAssignPermissionToRoleRequest {
  AdminAssignPermissionToRoleRequest copyWith({String? permissionId}) {
    return AdminAssignPermissionToRoleRequest(
      permissionId: permissionId ?? this.permissionId,
    );
  }

  AdminAssignPermissionToRoleRequest copyWithWrapped({
    Wrapped<String>? permissionId,
  }) {
    return AdminAssignPermissionToRoleRequest(
      permissionId: (permissionId != null
          ? permissionId.value
          : this.permissionId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAssignPermissionToRoleResponse {
  const AdminAssignPermissionToRoleResponse({required this.role});

  factory AdminAssignPermissionToRoleResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAssignPermissionToRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminAssignPermissionToRoleResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminAssignPermissionToRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleWithPermissionsDto role;
  static const fromJsonFactory = _$AdminAssignPermissionToRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAssignPermissionToRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminAssignPermissionToRoleResponseExtension
    on AdminAssignPermissionToRoleResponse {
  AdminAssignPermissionToRoleResponse copyWith({RoleWithPermissionsDto? role}) {
    return AdminAssignPermissionToRoleResponse(role: role ?? this.role);
  }

  AdminAssignPermissionToRoleResponse copyWithWrapped({
    Wrapped<RoleWithPermissionsDto>? role,
  }) {
    return AdminAssignPermissionToRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAssignRoleToUserRequest {
  const AdminAssignRoleToUserRequest({required this.roleId});

  factory AdminAssignRoleToUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAssignRoleToUserRequestFromJson(json);

  static const toJsonFactory = _$AdminAssignRoleToUserRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAssignRoleToUserRequestToJson(this);

  @JsonKey(name: 'roleId')
  final String roleId;
  static const fromJsonFactory = _$AdminAssignRoleToUserRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAssignRoleToUserRequest &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleId) ^ runtimeType.hashCode;
}

extension $AdminAssignRoleToUserRequestExtension
    on AdminAssignRoleToUserRequest {
  AdminAssignRoleToUserRequest copyWith({String? roleId}) {
    return AdminAssignRoleToUserRequest(roleId: roleId ?? this.roleId);
  }

  AdminAssignRoleToUserRequest copyWithWrapped({Wrapped<String>? roleId}) {
    return AdminAssignRoleToUserRequest(
      roleId: (roleId != null ? roleId.value : this.roleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAssignRoleToUserResponse {
  const AdminAssignRoleToUserResponse({required this.roles});

  factory AdminAssignRoleToUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAssignRoleToUserResponseFromJson(json);

  static const toJsonFactory = _$AdminAssignRoleToUserResponseToJson;
  Map<String, dynamic> toJson() => _$AdminAssignRoleToUserResponseToJson(this);

  @JsonKey(name: 'roles', defaultValue: <RoleDto>[])
  final List<RoleDto> roles;
  static const fromJsonFactory = _$AdminAssignRoleToUserResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAssignRoleToUserResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $AdminAssignRoleToUserResponseExtension
    on AdminAssignRoleToUserResponse {
  AdminAssignRoleToUserResponse copyWith({List<RoleDto>? roles}) {
    return AdminAssignRoleToUserResponse(roles: roles ?? this.roles);
  }

  AdminAssignRoleToUserResponse copyWithWrapped({
    Wrapped<List<RoleDto>>? roles,
  }) {
    return AdminAssignRoleToUserResponse(
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAttachPaymentProofResponse {
  const AdminAttachPaymentProofResponse({required this.proof});

  factory AdminAttachPaymentProofResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAttachPaymentProofResponseFromJson(json);

  static const toJsonFactory = _$AdminAttachPaymentProofResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminAttachPaymentProofResponseToJson(this);

  @JsonKey(name: 'proof')
  final FileDto proof;
  static const fromJsonFactory = _$AdminAttachPaymentProofResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAttachPaymentProofResponse &&
            (identical(other.proof, proof) ||
                const DeepCollectionEquality().equals(other.proof, proof)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(proof) ^ runtimeType.hashCode;
}

extension $AdminAttachPaymentProofResponseExtension
    on AdminAttachPaymentProofResponse {
  AdminAttachPaymentProofResponse copyWith({FileDto? proof}) {
    return AdminAttachPaymentProofResponse(proof: proof ?? this.proof);
  }

  AdminAttachPaymentProofResponse copyWithWrapped({Wrapped<FileDto>? proof}) {
    return AdminAttachPaymentProofResponse(
      proof: (proof != null ? proof.value : this.proof),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAttachYoutubeIdRequest {
  const AdminAttachYoutubeIdRequest({required this.youtubeVideoId});

  factory AdminAttachYoutubeIdRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAttachYoutubeIdRequestFromJson(json);

  static const toJsonFactory = _$AdminAttachYoutubeIdRequestToJson;
  Map<String, dynamic> toJson() => _$AdminAttachYoutubeIdRequestToJson(this);

  @JsonKey(name: 'youtubeVideoId')
  final String youtubeVideoId;
  static const fromJsonFactory = _$AdminAttachYoutubeIdRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAttachYoutubeIdRequest &&
            (identical(other.youtubeVideoId, youtubeVideoId) ||
                const DeepCollectionEquality().equals(
                  other.youtubeVideoId,
                  youtubeVideoId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(youtubeVideoId) ^
      runtimeType.hashCode;
}

extension $AdminAttachYoutubeIdRequestExtension on AdminAttachYoutubeIdRequest {
  AdminAttachYoutubeIdRequest copyWith({String? youtubeVideoId}) {
    return AdminAttachYoutubeIdRequest(
      youtubeVideoId: youtubeVideoId ?? this.youtubeVideoId,
    );
  }

  AdminAttachYoutubeIdRequest copyWithWrapped({
    Wrapped<String>? youtubeVideoId,
  }) {
    return AdminAttachYoutubeIdRequest(
      youtubeVideoId: (youtubeVideoId != null
          ? youtubeVideoId.value
          : this.youtubeVideoId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminAttachYoutubeIdResponse {
  const AdminAttachYoutubeIdResponse({required this.video});

  factory AdminAttachYoutubeIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAttachYoutubeIdResponseFromJson(json);

  static const toJsonFactory = _$AdminAttachYoutubeIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminAttachYoutubeIdResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$AdminAttachYoutubeIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminAttachYoutubeIdResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $AdminAttachYoutubeIdResponseExtension
    on AdminAttachYoutubeIdResponse {
  AdminAttachYoutubeIdResponse copyWith({VideoDetailDto? video}) {
    return AdminAttachYoutubeIdResponse(video: video ?? this.video);
  }

  AdminAttachYoutubeIdResponse copyWithWrapped({
    Wrapped<VideoDetailDto>? video,
  }) {
    return AdminAttachYoutubeIdResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminBulkUpdateRolePermissionsRequest {
  const AdminBulkUpdateRolePermissionsRequest({required this.permissionIds});

  factory AdminBulkUpdateRolePermissionsRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminBulkUpdateRolePermissionsRequestFromJson(json);

  static const toJsonFactory = _$AdminBulkUpdateRolePermissionsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AdminBulkUpdateRolePermissionsRequestToJson(this);

  @JsonKey(name: 'permissionIds', defaultValue: <String>[])
  final List<String> permissionIds;
  static const fromJsonFactory =
      _$AdminBulkUpdateRolePermissionsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminBulkUpdateRolePermissionsRequest &&
            (identical(other.permissionIds, permissionIds) ||
                const DeepCollectionEquality().equals(
                  other.permissionIds,
                  permissionIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permissionIds) ^ runtimeType.hashCode;
}

extension $AdminBulkUpdateRolePermissionsRequestExtension
    on AdminBulkUpdateRolePermissionsRequest {
  AdminBulkUpdateRolePermissionsRequest copyWith({
    List<String>? permissionIds,
  }) {
    return AdminBulkUpdateRolePermissionsRequest(
      permissionIds: permissionIds ?? this.permissionIds,
    );
  }

  AdminBulkUpdateRolePermissionsRequest copyWithWrapped({
    Wrapped<List<String>>? permissionIds,
  }) {
    return AdminBulkUpdateRolePermissionsRequest(
      permissionIds: (permissionIds != null
          ? permissionIds.value
          : this.permissionIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminBulkUpdateRolePermissionsResponse {
  const AdminBulkUpdateRolePermissionsResponse({required this.role});

  factory AdminBulkUpdateRolePermissionsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminBulkUpdateRolePermissionsResponseFromJson(json);

  static const toJsonFactory = _$AdminBulkUpdateRolePermissionsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminBulkUpdateRolePermissionsResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleWithPermissionsDto role;
  static const fromJsonFactory =
      _$AdminBulkUpdateRolePermissionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminBulkUpdateRolePermissionsResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminBulkUpdateRolePermissionsResponseExtension
    on AdminBulkUpdateRolePermissionsResponse {
  AdminBulkUpdateRolePermissionsResponse copyWith({
    RoleWithPermissionsDto? role,
  }) {
    return AdminBulkUpdateRolePermissionsResponse(role: role ?? this.role);
  }

  AdminBulkUpdateRolePermissionsResponse copyWithWrapped({
    Wrapped<RoleWithPermissionsDto>? role,
  }) {
    return AdminBulkUpdateRolePermissionsResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCancelOrderResponse {
  const AdminCancelOrderResponse({required this.isSuccess});

  factory AdminCancelOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCancelOrderResponseFromJson(json);

  static const toJsonFactory = _$AdminCancelOrderResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCancelOrderResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminCancelOrderResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCancelOrderResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminCancelOrderResponseExtension on AdminCancelOrderResponse {
  AdminCancelOrderResponse copyWith({bool? isSuccess}) {
    return AdminCancelOrderResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminCancelOrderResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminCancelOrderResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminChangePasswordRequest {
  const AdminChangePasswordRequest({
    required this.oldPassword,
    required this.newPassword,
  });

  factory AdminChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminChangePasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminChangePasswordRequestToJson(this);

  @JsonKey(name: 'oldPassword')
  final String oldPassword;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$AdminChangePasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminChangePasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality().equals(
                  other.oldPassword,
                  oldPassword,
                )) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $AdminChangePasswordRequestExtension on AdminChangePasswordRequest {
  AdminChangePasswordRequest copyWith({
    String? oldPassword,
    String? newPassword,
  }) {
    return AdminChangePasswordRequest(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  AdminChangePasswordRequest copyWithWrapped({
    Wrapped<String>? oldPassword,
    Wrapped<String>? newPassword,
  }) {
    return AdminChangePasswordRequest(
      oldPassword: (oldPassword != null ? oldPassword.value : this.oldPassword),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminChangePasswordResponse {
  const AdminChangePasswordResponse({required this.isSuccess});

  factory AdminChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminChangePasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminChangePasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminChangePasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminChangePasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminChangePasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminChangePasswordResponseExtension on AdminChangePasswordResponse {
  AdminChangePasswordResponse copyWith({bool? isSuccess}) {
    return AdminChangePasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminChangePasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminChangePasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCleanupExpiredSessionsResponse {
  const AdminCleanupExpiredSessionsResponse({required this.deletedCount});

  factory AdminCleanupExpiredSessionsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCleanupExpiredSessionsResponseFromJson(json);

  static const toJsonFactory = _$AdminCleanupExpiredSessionsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminCleanupExpiredSessionsResponseToJson(this);

  @JsonKey(name: 'deletedCount')
  final int deletedCount;
  static const fromJsonFactory = _$AdminCleanupExpiredSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCleanupExpiredSessionsResponse &&
            (identical(other.deletedCount, deletedCount) ||
                const DeepCollectionEquality().equals(
                  other.deletedCount,
                  deletedCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deletedCount) ^ runtimeType.hashCode;
}

extension $AdminCleanupExpiredSessionsResponseExtension
    on AdminCleanupExpiredSessionsResponse {
  AdminCleanupExpiredSessionsResponse copyWith({int? deletedCount}) {
    return AdminCleanupExpiredSessionsResponse(
      deletedCount: deletedCount ?? this.deletedCount,
    );
  }

  AdminCleanupExpiredSessionsResponse copyWithWrapped({
    Wrapped<int>? deletedCount,
  }) {
    return AdminCleanupExpiredSessionsResponse(
      deletedCount: (deletedCount != null
          ? deletedCount.value
          : this.deletedCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateArticleRequest {
  const AdminCreateArticleRequest({
    required this.categoryId,
    required this.title,
    required this.slug,
    this.customerId,
    this.orderItemId,
  });

  factory AdminCreateArticleRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateArticleRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateArticleRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateArticleRequestToJson(this);

  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'orderItemId')
  final String? orderItemId;
  static const fromJsonFactory = _$AdminCreateArticleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateArticleRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality().equals(
                  other.customerId,
                  customerId,
                )) &&
            (identical(other.orderItemId, orderItemId) ||
                const DeepCollectionEquality().equals(
                  other.orderItemId,
                  orderItemId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(orderItemId) ^
      runtimeType.hashCode;
}

extension $AdminCreateArticleRequestExtension on AdminCreateArticleRequest {
  AdminCreateArticleRequest copyWith({
    String? categoryId,
    String? title,
    String? slug,
    String? customerId,
    String? orderItemId,
  }) {
    return AdminCreateArticleRequest(
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      customerId: customerId ?? this.customerId,
      orderItemId: orderItemId ?? this.orderItemId,
    );
  }

  AdminCreateArticleRequest copyWithWrapped({
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String?>? customerId,
    Wrapped<String?>? orderItemId,
  }) {
    return AdminCreateArticleRequest(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      customerId: (customerId != null ? customerId.value : this.customerId),
      orderItemId: (orderItemId != null ? orderItemId.value : this.orderItemId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateArticleResponse {
  const AdminCreateArticleResponse({required this.article});

  factory AdminCreateArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateArticleResponseToJson(this);

  @JsonKey(name: 'article')
  final ArticleDetailDto article;
  static const fromJsonFactory = _$AdminCreateArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateArticleResponse &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(article) ^ runtimeType.hashCode;
}

extension $AdminCreateArticleResponseExtension on AdminCreateArticleResponse {
  AdminCreateArticleResponse copyWith({ArticleDetailDto? article}) {
    return AdminCreateArticleResponse(article: article ?? this.article);
  }

  AdminCreateArticleResponse copyWithWrapped({
    Wrapped<ArticleDetailDto>? article,
  }) {
    return AdminCreateArticleResponse(
      article: (article != null ? article.value : this.article),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateCategoryRequest {
  const AdminCreateCategoryRequest({
    required this.name,
    required this.slug,
    this.description,
    required this.isFree,
  });

  factory AdminCreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateCategoryRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateCategoryRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateCategoryRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isFree')
  final bool isFree;
  static const fromJsonFactory = _$AdminCreateCategoryRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateCategoryRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isFree, isFree) ||
                const DeepCollectionEquality().equals(other.isFree, isFree)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isFree) ^
      runtimeType.hashCode;
}

extension $AdminCreateCategoryRequestExtension on AdminCreateCategoryRequest {
  AdminCreateCategoryRequest copyWith({
    String? name,
    String? slug,
    String? description,
    bool? isFree,
  }) {
    return AdminCreateCategoryRequest(
      name: name ?? this.name,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      isFree: isFree ?? this.isFree,
    );
  }

  AdminCreateCategoryRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? slug,
    Wrapped<String?>? description,
    Wrapped<bool>? isFree,
  }) {
    return AdminCreateCategoryRequest(
      name: (name != null ? name.value : this.name),
      slug: (slug != null ? slug.value : this.slug),
      description: (description != null ? description.value : this.description),
      isFree: (isFree != null ? isFree.value : this.isFree),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateCategoryResponse {
  const AdminCreateCategoryResponse({required this.category});

  factory AdminCreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateCategoryResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateCategoryResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateCategoryResponseToJson(this);

  @JsonKey(name: 'category')
  final CategoryDto category;
  static const fromJsonFactory = _$AdminCreateCategoryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateCategoryResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $AdminCreateCategoryResponseExtension on AdminCreateCategoryResponse {
  AdminCreateCategoryResponse copyWith({CategoryDto? category}) {
    return AdminCreateCategoryResponse(category: category ?? this.category);
  }

  AdminCreateCategoryResponse copyWithWrapped({
    Wrapped<CategoryDto>? category,
  }) {
    return AdminCreateCategoryResponse(
      category: (category != null ? category.value : this.category),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateContentTypeRequest {
  const AdminCreateContentTypeRequest({required this.name});

  factory AdminCreateContentTypeRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateContentTypeRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateContentTypeRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateContentTypeRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$AdminCreateContentTypeRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateContentTypeRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $AdminCreateContentTypeRequestExtension
    on AdminCreateContentTypeRequest {
  AdminCreateContentTypeRequest copyWith({String? name}) {
    return AdminCreateContentTypeRequest(name: name ?? this.name);
  }

  AdminCreateContentTypeRequest copyWithWrapped({Wrapped<String>? name}) {
    return AdminCreateContentTypeRequest(
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateContentTypeResponse {
  const AdminCreateContentTypeResponse({required this.contentType});

  factory AdminCreateContentTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateContentTypeResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateContentTypeResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateContentTypeResponseToJson(this);

  @JsonKey(name: 'contentType')
  final ContentTypeDto contentType;
  static const fromJsonFactory = _$AdminCreateContentTypeResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateContentTypeResponse &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentType) ^ runtimeType.hashCode;
}

extension $AdminCreateContentTypeResponseExtension
    on AdminCreateContentTypeResponse {
  AdminCreateContentTypeResponse copyWith({ContentTypeDto? contentType}) {
    return AdminCreateContentTypeResponse(
      contentType: contentType ?? this.contentType,
    );
  }

  AdminCreateContentTypeResponse copyWithWrapped({
    Wrapped<ContentTypeDto>? contentType,
  }) {
    return AdminCreateContentTypeResponse(
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateCustomerRequest {
  const AdminCreateCustomerRequest({
    required this.fullName,
    required this.email,
    this.phone,
    this.company,
    this.notes,
  });

  factory AdminCreateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateCustomerRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateCustomerRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateCustomerRequestToJson(this);

  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'company')
  final String? company;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$AdminCreateCustomerRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateCustomerRequest &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality().equals(
                  other.fullName,
                  fullName,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(
                  other.company,
                  company,
                )) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $AdminCreateCustomerRequestExtension on AdminCreateCustomerRequest {
  AdminCreateCustomerRequest copyWith({
    String? fullName,
    String? email,
    String? phone,
    String? company,
    String? notes,
  }) {
    return AdminCreateCustomerRequest(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      company: company ?? this.company,
      notes: notes ?? this.notes,
    );
  }

  AdminCreateCustomerRequest copyWithWrapped({
    Wrapped<String>? fullName,
    Wrapped<String>? email,
    Wrapped<String?>? phone,
    Wrapped<String?>? company,
    Wrapped<String?>? notes,
  }) {
    return AdminCreateCustomerRequest(
      fullName: (fullName != null ? fullName.value : this.fullName),
      email: (email != null ? email.value : this.email),
      phone: (phone != null ? phone.value : this.phone),
      company: (company != null ? company.value : this.company),
      notes: (notes != null ? notes.value : this.notes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateCustomerResponse {
  const AdminCreateCustomerResponse({required this.customer});

  factory AdminCreateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateCustomerResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateCustomerResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateCustomerResponseToJson(this);

  @JsonKey(name: 'customer')
  final CustomerDto customer;
  static const fromJsonFactory = _$AdminCreateCustomerResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateCustomerResponse &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality().equals(
                  other.customer,
                  customer,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customer) ^ runtimeType.hashCode;
}

extension $AdminCreateCustomerResponseExtension on AdminCreateCustomerResponse {
  AdminCreateCustomerResponse copyWith({CustomerDto? customer}) {
    return AdminCreateCustomerResponse(customer: customer ?? this.customer);
  }

  AdminCreateCustomerResponse copyWithWrapped({
    Wrapped<CustomerDto>? customer,
  }) {
    return AdminCreateCustomerResponse(
      customer: (customer != null ? customer.value : this.customer),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateLyricsRequest {
  const AdminCreateLyricsRequest({
    required this.songTitle,
    required this.artistName,
    required this.lyricsText,
    required this.language,
    this.videoId,
    this.articleId,
  });

  factory AdminCreateLyricsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateLyricsRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateLyricsRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateLyricsRequestToJson(this);

  @JsonKey(name: 'songTitle')
  final String songTitle;
  @JsonKey(name: 'artistName')
  final String artistName;
  @JsonKey(name: 'lyricsText')
  final String lyricsText;
  @JsonKey(name: 'language')
  final String language;
  @JsonKey(name: 'videoId')
  final String? videoId;
  @JsonKey(name: 'articleId')
  final String? articleId;
  static const fromJsonFactory = _$AdminCreateLyricsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateLyricsRequest &&
            (identical(other.songTitle, songTitle) ||
                const DeepCollectionEquality().equals(
                  other.songTitle,
                  songTitle,
                )) &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality().equals(
                  other.artistName,
                  artistName,
                )) &&
            (identical(other.lyricsText, lyricsText) ||
                const DeepCollectionEquality().equals(
                  other.lyricsText,
                  lyricsText,
                )) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality().equals(
                  other.language,
                  language,
                )) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(
                  other.videoId,
                  videoId,
                )) &&
            (identical(other.articleId, articleId) ||
                const DeepCollectionEquality().equals(
                  other.articleId,
                  articleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(songTitle) ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(lyricsText) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(articleId) ^
      runtimeType.hashCode;
}

extension $AdminCreateLyricsRequestExtension on AdminCreateLyricsRequest {
  AdminCreateLyricsRequest copyWith({
    String? songTitle,
    String? artistName,
    String? lyricsText,
    String? language,
    String? videoId,
    String? articleId,
  }) {
    return AdminCreateLyricsRequest(
      songTitle: songTitle ?? this.songTitle,
      artistName: artistName ?? this.artistName,
      lyricsText: lyricsText ?? this.lyricsText,
      language: language ?? this.language,
      videoId: videoId ?? this.videoId,
      articleId: articleId ?? this.articleId,
    );
  }

  AdminCreateLyricsRequest copyWithWrapped({
    Wrapped<String>? songTitle,
    Wrapped<String>? artistName,
    Wrapped<String>? lyricsText,
    Wrapped<String>? language,
    Wrapped<String?>? videoId,
    Wrapped<String?>? articleId,
  }) {
    return AdminCreateLyricsRequest(
      songTitle: (songTitle != null ? songTitle.value : this.songTitle),
      artistName: (artistName != null ? artistName.value : this.artistName),
      lyricsText: (lyricsText != null ? lyricsText.value : this.lyricsText),
      language: (language != null ? language.value : this.language),
      videoId: (videoId != null ? videoId.value : this.videoId),
      articleId: (articleId != null ? articleId.value : this.articleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateLyricsResponse {
  const AdminCreateLyricsResponse({required this.lyrics});

  factory AdminCreateLyricsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateLyricsResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateLyricsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateLyricsResponseToJson(this);

  @JsonKey(name: 'lyrics')
  final LyricsDto lyrics;
  static const fromJsonFactory = _$AdminCreateLyricsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateLyricsResponse &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyrics) ^ runtimeType.hashCode;
}

extension $AdminCreateLyricsResponseExtension on AdminCreateLyricsResponse {
  AdminCreateLyricsResponse copyWith({LyricsDto? lyrics}) {
    return AdminCreateLyricsResponse(lyrics: lyrics ?? this.lyrics);
  }

  AdminCreateLyricsResponse copyWithWrapped({Wrapped<LyricsDto>? lyrics}) {
    return AdminCreateLyricsResponse(
      lyrics: (lyrics != null ? lyrics.value : this.lyrics),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateOrderRequest {
  const AdminCreateOrderRequest({required this.customerId, this.packageId});

  factory AdminCreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateOrderRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateOrderRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateOrderRequestToJson(this);

  @JsonKey(name: 'customerId')
  final String customerId;
  @JsonKey(name: 'packageId')
  final String? packageId;
  static const fromJsonFactory = _$AdminCreateOrderRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateOrderRequest &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality().equals(
                  other.customerId,
                  customerId,
                )) &&
            (identical(other.packageId, packageId) ||
                const DeepCollectionEquality().equals(
                  other.packageId,
                  packageId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(packageId) ^
      runtimeType.hashCode;
}

extension $AdminCreateOrderRequestExtension on AdminCreateOrderRequest {
  AdminCreateOrderRequest copyWith({String? customerId, String? packageId}) {
    return AdminCreateOrderRequest(
      customerId: customerId ?? this.customerId,
      packageId: packageId ?? this.packageId,
    );
  }

  AdminCreateOrderRequest copyWithWrapped({
    Wrapped<String>? customerId,
    Wrapped<String?>? packageId,
  }) {
    return AdminCreateOrderRequest(
      customerId: (customerId != null ? customerId.value : this.customerId),
      packageId: (packageId != null ? packageId.value : this.packageId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateOrderResponse {
  const AdminCreateOrderResponse({required this.order});

  factory AdminCreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateOrderResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateOrderResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateOrderResponseToJson(this);

  @JsonKey(name: 'order')
  final ContentOrderSummaryDto order;
  static const fromJsonFactory = _$AdminCreateOrderResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateOrderResponse &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(order) ^ runtimeType.hashCode;
}

extension $AdminCreateOrderResponseExtension on AdminCreateOrderResponse {
  AdminCreateOrderResponse copyWith({ContentOrderSummaryDto? order}) {
    return AdminCreateOrderResponse(order: order ?? this.order);
  }

  AdminCreateOrderResponse copyWithWrapped({
    Wrapped<ContentOrderSummaryDto>? order,
  }) {
    return AdminCreateOrderResponse(
      order: (order != null ? order.value : this.order),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePackageRequest {
  const AdminCreatePackageRequest({
    required this.name,
    this.description,
    required this.flatPriceUsd,
  });

  factory AdminCreatePackageRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePackageRequestFromJson(json);

  static const toJsonFactory = _$AdminCreatePackageRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePackageRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'flatPriceUsd')
  final double flatPriceUsd;
  static const fromJsonFactory = _$AdminCreatePackageRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePackageRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.flatPriceUsd, flatPriceUsd) ||
                const DeepCollectionEquality().equals(
                  other.flatPriceUsd,
                  flatPriceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(flatPriceUsd) ^
      runtimeType.hashCode;
}

extension $AdminCreatePackageRequestExtension on AdminCreatePackageRequest {
  AdminCreatePackageRequest copyWith({
    String? name,
    String? description,
    double? flatPriceUsd,
  }) {
    return AdminCreatePackageRequest(
      name: name ?? this.name,
      description: description ?? this.description,
      flatPriceUsd: flatPriceUsd ?? this.flatPriceUsd,
    );
  }

  AdminCreatePackageRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String?>? description,
    Wrapped<double>? flatPriceUsd,
  }) {
    return AdminCreatePackageRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      flatPriceUsd: (flatPriceUsd != null
          ? flatPriceUsd.value
          : this.flatPriceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePackageResponse {
  const AdminCreatePackageResponse({required this.package});

  factory AdminCreatePackageResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePackageResponseFromJson(json);

  static const toJsonFactory = _$AdminCreatePackageResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePackageResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  static const fromJsonFactory = _$AdminCreatePackageResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePackageResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^ runtimeType.hashCode;
}

extension $AdminCreatePackageResponseExtension on AdminCreatePackageResponse {
  AdminCreatePackageResponse copyWith({PackageDto? package}) {
    return AdminCreatePackageResponse(package: package ?? this.package);
  }

  AdminCreatePackageResponse copyWithWrapped({Wrapped<PackageDto>? package}) {
    return AdminCreatePackageResponse(
      package: (package != null ? package.value : this.package),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePermissionRequest {
  const AdminCreatePermissionRequest({
    required this.resource,
    required this.action,
    required this.description,
  });

  factory AdminCreatePermissionRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePermissionRequestFromJson(json);

  static const toJsonFactory = _$AdminCreatePermissionRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePermissionRequestToJson(this);

  @JsonKey(name: 'resource')
  final String resource;
  @JsonKey(name: 'action')
  final String action;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$AdminCreatePermissionRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePermissionRequest &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality().equals(
                  other.resource,
                  resource,
                )) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(resource) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminCreatePermissionRequestExtension
    on AdminCreatePermissionRequest {
  AdminCreatePermissionRequest copyWith({
    String? resource,
    String? action,
    String? description,
  }) {
    return AdminCreatePermissionRequest(
      resource: resource ?? this.resource,
      action: action ?? this.action,
      description: description ?? this.description,
    );
  }

  AdminCreatePermissionRequest copyWithWrapped({
    Wrapped<String>? resource,
    Wrapped<String>? action,
    Wrapped<String>? description,
  }) {
    return AdminCreatePermissionRequest(
      resource: (resource != null ? resource.value : this.resource),
      action: (action != null ? action.value : this.action),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePermissionResponse {
  const AdminCreatePermissionResponse({required this.permission});

  factory AdminCreatePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminCreatePermissionResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminCreatePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminCreatePermissionResponseExtension
    on AdminCreatePermissionResponse {
  AdminCreatePermissionResponse copyWith({PermissionDto? permission}) {
    return AdminCreatePermissionResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminCreatePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminCreatePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePricingTierRequest {
  const AdminCreatePricingTierRequest({required this.name, this.description});

  factory AdminCreatePricingTierRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePricingTierRequestFromJson(json);

  static const toJsonFactory = _$AdminCreatePricingTierRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePricingTierRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AdminCreatePricingTierRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePricingTierRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminCreatePricingTierRequestExtension
    on AdminCreatePricingTierRequest {
  AdminCreatePricingTierRequest copyWith({String? name, String? description}) {
    return AdminCreatePricingTierRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  AdminCreatePricingTierRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String?>? description,
  }) {
    return AdminCreatePricingTierRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePricingTierResponse {
  const AdminCreatePricingTierResponse({required this.pricingTier});

  factory AdminCreatePricingTierResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreatePricingTierResponseFromJson(json);

  static const toJsonFactory = _$AdminCreatePricingTierResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreatePricingTierResponseToJson(this);

  @JsonKey(name: 'pricingTier')
  final PricingTierDto pricingTier;
  static const fromJsonFactory = _$AdminCreatePricingTierResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePricingTierResponse &&
            (identical(other.pricingTier, pricingTier) ||
                const DeepCollectionEquality().equals(
                  other.pricingTier,
                  pricingTier,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTier) ^ runtimeType.hashCode;
}

extension $AdminCreatePricingTierResponseExtension
    on AdminCreatePricingTierResponse {
  AdminCreatePricingTierResponse copyWith({PricingTierDto? pricingTier}) {
    return AdminCreatePricingTierResponse(
      pricingTier: pricingTier ?? this.pricingTier,
    );
  }

  AdminCreatePricingTierResponse copyWithWrapped({
    Wrapped<PricingTierDto>? pricingTier,
  }) {
    return AdminCreatePricingTierResponse(
      pricingTier: (pricingTier != null ? pricingTier.value : this.pricingTier),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePromotionLevelRequest {
  const AdminCreatePromotionLevelRequest({
    required this.name,
    required this.durationDays,
    required this.priceUsd,
  });

  factory AdminCreatePromotionLevelRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCreatePromotionLevelRequestFromJson(json);

  static const toJsonFactory = _$AdminCreatePromotionLevelRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AdminCreatePromotionLevelRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'durationDays')
  final int durationDays;
  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  static const fromJsonFactory = _$AdminCreatePromotionLevelRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePromotionLevelRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.durationDays, durationDays) ||
                const DeepCollectionEquality().equals(
                  other.durationDays,
                  durationDays,
                )) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(durationDays) ^
      const DeepCollectionEquality().hash(priceUsd) ^
      runtimeType.hashCode;
}

extension $AdminCreatePromotionLevelRequestExtension
    on AdminCreatePromotionLevelRequest {
  AdminCreatePromotionLevelRequest copyWith({
    String? name,
    int? durationDays,
    double? priceUsd,
  }) {
    return AdminCreatePromotionLevelRequest(
      name: name ?? this.name,
      durationDays: durationDays ?? this.durationDays,
      priceUsd: priceUsd ?? this.priceUsd,
    );
  }

  AdminCreatePromotionLevelRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<int>? durationDays,
    Wrapped<double>? priceUsd,
  }) {
    return AdminCreatePromotionLevelRequest(
      name: (name != null ? name.value : this.name),
      durationDays: (durationDays != null
          ? durationDays.value
          : this.durationDays),
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreatePromotionLevelResponse {
  const AdminCreatePromotionLevelResponse({required this.promotionLevel});

  factory AdminCreatePromotionLevelResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCreatePromotionLevelResponseFromJson(json);

  static const toJsonFactory = _$AdminCreatePromotionLevelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminCreatePromotionLevelResponseToJson(this);

  @JsonKey(name: 'promotionLevel')
  final PromotionLevelDto promotionLevel;
  static const fromJsonFactory = _$AdminCreatePromotionLevelResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreatePromotionLevelResponse &&
            (identical(other.promotionLevel, promotionLevel) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevel,
                  promotionLevel,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevel) ^
      runtimeType.hashCode;
}

extension $AdminCreatePromotionLevelResponseExtension
    on AdminCreatePromotionLevelResponse {
  AdminCreatePromotionLevelResponse copyWith({
    PromotionLevelDto? promotionLevel,
  }) {
    return AdminCreatePromotionLevelResponse(
      promotionLevel: promotionLevel ?? this.promotionLevel,
    );
  }

  AdminCreatePromotionLevelResponse copyWithWrapped({
    Wrapped<PromotionLevelDto>? promotionLevel,
  }) {
    return AdminCreatePromotionLevelResponse(
      promotionLevel: (promotionLevel != null
          ? promotionLevel.value
          : this.promotionLevel),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateRoleRequest {
  const AdminCreateRoleRequest({required this.name, required this.description});

  factory AdminCreateRoleRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateRoleRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateRoleRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateRoleRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$AdminCreateRoleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateRoleRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminCreateRoleRequestExtension on AdminCreateRoleRequest {
  AdminCreateRoleRequest copyWith({String? name, String? description}) {
    return AdminCreateRoleRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  AdminCreateRoleRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? description,
  }) {
    return AdminCreateRoleRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateRoleResponse {
  const AdminCreateRoleResponse({required this.role});

  factory AdminCreateRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  static const fromJsonFactory = _$AdminCreateRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminCreateRoleResponseExtension on AdminCreateRoleResponse {
  AdminCreateRoleResponse copyWith({RoleDto? role}) {
    return AdminCreateRoleResponse(role: role ?? this.role);
  }

  AdminCreateRoleResponse copyWithWrapped({Wrapped<RoleDto>? role}) {
    return AdminCreateRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateShortVideoResponse {
  const AdminCreateShortVideoResponse({required this.shortVideo});

  factory AdminCreateShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateShortVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateShortVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateShortVideoResponseToJson(this);

  @JsonKey(name: 'shortVideo')
  final ShortVideoDto shortVideo;
  static const fromJsonFactory = _$AdminCreateShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateShortVideoResponse &&
            (identical(other.shortVideo, shortVideo) ||
                const DeepCollectionEquality().equals(
                  other.shortVideo,
                  shortVideo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortVideo) ^ runtimeType.hashCode;
}

extension $AdminCreateShortVideoResponseExtension
    on AdminCreateShortVideoResponse {
  AdminCreateShortVideoResponse copyWith({ShortVideoDto? shortVideo}) {
    return AdminCreateShortVideoResponse(
      shortVideo: shortVideo ?? this.shortVideo,
    );
  }

  AdminCreateShortVideoResponse copyWithWrapped({
    Wrapped<ShortVideoDto>? shortVideo,
  }) {
    return AdminCreateShortVideoResponse(
      shortVideo: (shortVideo != null ? shortVideo.value : this.shortVideo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateTagRequest {
  const AdminCreateTagRequest({required this.name, required this.slug});

  factory AdminCreateTagRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateTagRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateTagRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateTagRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'slug')
  final String slug;
  static const fromJsonFactory = _$AdminCreateTagRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateTagRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      runtimeType.hashCode;
}

extension $AdminCreateTagRequestExtension on AdminCreateTagRequest {
  AdminCreateTagRequest copyWith({String? name, String? slug}) {
    return AdminCreateTagRequest(
      name: name ?? this.name,
      slug: slug ?? this.slug,
    );
  }

  AdminCreateTagRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? slug,
  }) {
    return AdminCreateTagRequest(
      name: (name != null ? name.value : this.name),
      slug: (slug != null ? slug.value : this.slug),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateTagResponse {
  const AdminCreateTagResponse({required this.tag});

  factory AdminCreateTagResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateTagResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateTagResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateTagResponseToJson(this);

  @JsonKey(name: 'tag')
  final TagDto tag;
  static const fromJsonFactory = _$AdminCreateTagResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateTagResponse &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tag) ^ runtimeType.hashCode;
}

extension $AdminCreateTagResponseExtension on AdminCreateTagResponse {
  AdminCreateTagResponse copyWith({TagDto? tag}) {
    return AdminCreateTagResponse(tag: tag ?? this.tag);
  }

  AdminCreateTagResponse copyWithWrapped({Wrapped<TagDto>? tag}) {
    return AdminCreateTagResponse(tag: (tag != null ? tag.value : this.tag));
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateVideoRequest {
  const AdminCreateVideoRequest({
    required this.categoryId,
    required this.title,
    required this.slug,
    this.customerId,
    this.orderItemId,
    this.description,
    this.shootingScheduledAt,
  });

  factory AdminCreateVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateVideoRequestFromJson(json);

  static const toJsonFactory = _$AdminCreateVideoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminCreateVideoRequestToJson(this);

  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'orderItemId')
  final String? orderItemId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'shootingScheduledAt')
  final DateTime? shootingScheduledAt;
  static const fromJsonFactory = _$AdminCreateVideoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateVideoRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality().equals(
                  other.customerId,
                  customerId,
                )) &&
            (identical(other.orderItemId, orderItemId) ||
                const DeepCollectionEquality().equals(
                  other.orderItemId,
                  orderItemId,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.shootingScheduledAt, shootingScheduledAt) ||
                const DeepCollectionEquality().equals(
                  other.shootingScheduledAt,
                  shootingScheduledAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(orderItemId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(shootingScheduledAt) ^
      runtimeType.hashCode;
}

extension $AdminCreateVideoRequestExtension on AdminCreateVideoRequest {
  AdminCreateVideoRequest copyWith({
    String? categoryId,
    String? title,
    String? slug,
    String? customerId,
    String? orderItemId,
    String? description,
    DateTime? shootingScheduledAt,
  }) {
    return AdminCreateVideoRequest(
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      customerId: customerId ?? this.customerId,
      orderItemId: orderItemId ?? this.orderItemId,
      description: description ?? this.description,
      shootingScheduledAt: shootingScheduledAt ?? this.shootingScheduledAt,
    );
  }

  AdminCreateVideoRequest copyWithWrapped({
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String?>? customerId,
    Wrapped<String?>? orderItemId,
    Wrapped<String?>? description,
    Wrapped<DateTime?>? shootingScheduledAt,
  }) {
    return AdminCreateVideoRequest(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      customerId: (customerId != null ? customerId.value : this.customerId),
      orderItemId: (orderItemId != null ? orderItemId.value : this.orderItemId),
      description: (description != null ? description.value : this.description),
      shootingScheduledAt: (shootingScheduledAt != null
          ? shootingScheduledAt.value
          : this.shootingScheduledAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCreateVideoResponse {
  const AdminCreateVideoResponse({required this.video});

  factory AdminCreateVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCreateVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminCreateVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminCreateVideoResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$AdminCreateVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCreateVideoResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $AdminCreateVideoResponseExtension on AdminCreateVideoResponse {
  AdminCreateVideoResponse copyWith({VideoDetailDto? video}) {
    return AdminCreateVideoResponse(video: video ?? this.video);
  }

  AdminCreateVideoResponse copyWithWrapped({Wrapped<VideoDetailDto>? video}) {
    return AdminCreateVideoResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivateCategoryResponse {
  const AdminDeactivateCategoryResponse({required this.category});

  factory AdminDeactivateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeactivateCategoryResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivateCategoryResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivateCategoryResponseToJson(this);

  @JsonKey(name: 'category')
  final CategoryDto category;
  static const fromJsonFactory = _$AdminDeactivateCategoryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivateCategoryResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $AdminDeactivateCategoryResponseExtension
    on AdminDeactivateCategoryResponse {
  AdminDeactivateCategoryResponse copyWith({CategoryDto? category}) {
    return AdminDeactivateCategoryResponse(category: category ?? this.category);
  }

  AdminDeactivateCategoryResponse copyWithWrapped({
    Wrapped<CategoryDto>? category,
  }) {
    return AdminDeactivateCategoryResponse(
      category: (category != null ? category.value : this.category),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivateContentTypeResponse {
  const AdminDeactivateContentTypeResponse({required this.contentType});

  factory AdminDeactivateContentTypeResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeactivateContentTypeResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivateContentTypeResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivateContentTypeResponseToJson(this);

  @JsonKey(name: 'contentType')
  final ContentTypeDto contentType;
  static const fromJsonFactory = _$AdminDeactivateContentTypeResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivateContentTypeResponse &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentType) ^ runtimeType.hashCode;
}

extension $AdminDeactivateContentTypeResponseExtension
    on AdminDeactivateContentTypeResponse {
  AdminDeactivateContentTypeResponse copyWith({ContentTypeDto? contentType}) {
    return AdminDeactivateContentTypeResponse(
      contentType: contentType ?? this.contentType,
    );
  }

  AdminDeactivateContentTypeResponse copyWithWrapped({
    Wrapped<ContentTypeDto>? contentType,
  }) {
    return AdminDeactivateContentTypeResponse(
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivatePackageResponse {
  const AdminDeactivatePackageResponse({required this.package});

  factory AdminDeactivatePackageResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeactivatePackageResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivatePackageResponseToJson;
  Map<String, dynamic> toJson() => _$AdminDeactivatePackageResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  static const fromJsonFactory = _$AdminDeactivatePackageResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivatePackageResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^ runtimeType.hashCode;
}

extension $AdminDeactivatePackageResponseExtension
    on AdminDeactivatePackageResponse {
  AdminDeactivatePackageResponse copyWith({PackageDto? package}) {
    return AdminDeactivatePackageResponse(package: package ?? this.package);
  }

  AdminDeactivatePackageResponse copyWithWrapped({
    Wrapped<PackageDto>? package,
  }) {
    return AdminDeactivatePackageResponse(
      package: (package != null ? package.value : this.package),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivatePermissionResponse {
  const AdminDeactivatePermissionResponse({required this.permission});

  factory AdminDeactivatePermissionResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeactivatePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivatePermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivatePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminDeactivatePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivatePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminDeactivatePermissionResponseExtension
    on AdminDeactivatePermissionResponse {
  AdminDeactivatePermissionResponse copyWith({PermissionDto? permission}) {
    return AdminDeactivatePermissionResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminDeactivatePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminDeactivatePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivatePricingTierResponse {
  const AdminDeactivatePricingTierResponse({required this.pricingTier});

  factory AdminDeactivatePricingTierResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeactivatePricingTierResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivatePricingTierResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivatePricingTierResponseToJson(this);

  @JsonKey(name: 'pricingTier')
  final PricingTierDto pricingTier;
  static const fromJsonFactory = _$AdminDeactivatePricingTierResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivatePricingTierResponse &&
            (identical(other.pricingTier, pricingTier) ||
                const DeepCollectionEquality().equals(
                  other.pricingTier,
                  pricingTier,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTier) ^ runtimeType.hashCode;
}

extension $AdminDeactivatePricingTierResponseExtension
    on AdminDeactivatePricingTierResponse {
  AdminDeactivatePricingTierResponse copyWith({PricingTierDto? pricingTier}) {
    return AdminDeactivatePricingTierResponse(
      pricingTier: pricingTier ?? this.pricingTier,
    );
  }

  AdminDeactivatePricingTierResponse copyWithWrapped({
    Wrapped<PricingTierDto>? pricingTier,
  }) {
    return AdminDeactivatePricingTierResponse(
      pricingTier: (pricingTier != null ? pricingTier.value : this.pricingTier),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivatePromotionLevelResponse {
  const AdminDeactivatePromotionLevelResponse({required this.promotionLevel});

  factory AdminDeactivatePromotionLevelResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeactivatePromotionLevelResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivatePromotionLevelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivatePromotionLevelResponseToJson(this);

  @JsonKey(name: 'promotionLevel')
  final PromotionLevelDto promotionLevel;
  static const fromJsonFactory =
      _$AdminDeactivatePromotionLevelResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivatePromotionLevelResponse &&
            (identical(other.promotionLevel, promotionLevel) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevel,
                  promotionLevel,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevel) ^
      runtimeType.hashCode;
}

extension $AdminDeactivatePromotionLevelResponseExtension
    on AdminDeactivatePromotionLevelResponse {
  AdminDeactivatePromotionLevelResponse copyWith({
    PromotionLevelDto? promotionLevel,
  }) {
    return AdminDeactivatePromotionLevelResponse(
      promotionLevel: promotionLevel ?? this.promotionLevel,
    );
  }

  AdminDeactivatePromotionLevelResponse copyWithWrapped({
    Wrapped<PromotionLevelDto>? promotionLevel,
  }) {
    return AdminDeactivatePromotionLevelResponse(
      promotionLevel: (promotionLevel != null
          ? promotionLevel.value
          : this.promotionLevel),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivateRoleResponse {
  const AdminDeactivateRoleResponse({required this.role});

  factory AdminDeactivateRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeactivateRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivateRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminDeactivateRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  static const fromJsonFactory = _$AdminDeactivateRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivateRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminDeactivateRoleResponseExtension on AdminDeactivateRoleResponse {
  AdminDeactivateRoleResponse copyWith({RoleDto? role}) {
    return AdminDeactivateRoleResponse(role: role ?? this.role);
  }

  AdminDeactivateRoleResponse copyWithWrapped({Wrapped<RoleDto>? role}) {
    return AdminDeactivateRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeactivateShortVideoResponse {
  const AdminDeactivateShortVideoResponse({required this.isSuccess});

  factory AdminDeactivateShortVideoResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeactivateShortVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminDeactivateShortVideoResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeactivateShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminDeactivateShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeactivateShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminDeactivateShortVideoResponseExtension
    on AdminDeactivateShortVideoResponse {
  AdminDeactivateShortVideoResponse copyWith({bool? isSuccess}) {
    return AdminDeactivateShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminDeactivateShortVideoResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return AdminDeactivateShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeleteArticleCommentResponse {
  const AdminDeleteArticleCommentResponse({required this.isSuccess});

  factory AdminDeleteArticleCommentResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeleteArticleCommentResponseFromJson(json);

  static const toJsonFactory = _$AdminDeleteArticleCommentResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminDeleteArticleCommentResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminDeleteArticleCommentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeleteArticleCommentResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminDeleteArticleCommentResponseExtension
    on AdminDeleteArticleCommentResponse {
  AdminDeleteArticleCommentResponse copyWith({bool? isSuccess}) {
    return AdminDeleteArticleCommentResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminDeleteArticleCommentResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return AdminDeleteArticleCommentResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeleteArticleResponse {
  const AdminDeleteArticleResponse({required this.isSuccess});

  factory AdminDeleteArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminDeleteArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminDeleteArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminDeleteArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeleteArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminDeleteArticleResponseExtension on AdminDeleteArticleResponse {
  AdminDeleteArticleResponse copyWith({bool? isSuccess}) {
    return AdminDeleteArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminDeleteArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminDeleteArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeleteShortVideoResponse {
  const AdminDeleteShortVideoResponse({required this.isSuccess});

  factory AdminDeleteShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteShortVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminDeleteShortVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminDeleteShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminDeleteShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeleteShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminDeleteShortVideoResponseExtension
    on AdminDeleteShortVideoResponse {
  AdminDeleteShortVideoResponse copyWith({bool? isSuccess}) {
    return AdminDeleteShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminDeleteShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminDeleteShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminDeleteVideoResponse {
  const AdminDeleteVideoResponse({required this.isSuccess});

  factory AdminDeleteVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminDeleteVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminDeleteVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminDeleteVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminDeleteVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminDeleteVideoResponseExtension on AdminDeleteVideoResponse {
  AdminDeleteVideoResponse copyWith({bool? isSuccess}) {
    return AdminDeleteVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminDeleteVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminDeleteVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForceLogoutUserResponse {
  const AdminForceLogoutUserResponse({required this.isSuccess});

  factory AdminForceLogoutUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminForceLogoutUserResponseFromJson(json);

  static const toJsonFactory = _$AdminForceLogoutUserResponseToJson;
  Map<String, dynamic> toJson() => _$AdminForceLogoutUserResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminForceLogoutUserResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForceLogoutUserResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminForceLogoutUserResponseExtension
    on AdminForceLogoutUserResponse {
  AdminForceLogoutUserResponse copyWith({bool? isSuccess}) {
    return AdminForceLogoutUserResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminForceLogoutUserResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminForceLogoutUserResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForgotPasswordRequest {
  const AdminForgotPasswordRequest({required this.email});

  factory AdminForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminForgotPasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminForgotPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminForgotPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$AdminForgotPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForgotPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $AdminForgotPasswordRequestExtension on AdminForgotPasswordRequest {
  AdminForgotPasswordRequest copyWith({String? email}) {
    return AdminForgotPasswordRequest(email: email ?? this.email);
  }

  AdminForgotPasswordRequest copyWithWrapped({Wrapped<String>? email}) {
    return AdminForgotPasswordRequest(
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForgotPasswordResponse {
  const AdminForgotPasswordResponse({
    required this.isSuccess,
    required this.email,
  });

  factory AdminForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminForgotPasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminForgotPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminForgotPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$AdminForgotPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForgotPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $AdminForgotPasswordResponseExtension on AdminForgotPasswordResponse {
  AdminForgotPasswordResponse copyWith({bool? isSuccess, String? email}) {
    return AdminForgotPasswordResponse(
      isSuccess: isSuccess ?? this.isSuccess,
      email: email ?? this.email,
    );
  }

  AdminForgotPasswordResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
    Wrapped<String>? email,
  }) {
    return AdminForgotPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllArticlesResponse {
  const AdminGetAllArticlesResponse({required this.articles});

  factory AdminGetAllArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllArticlesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllArticlesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllArticlesResponseToJson(this);

  @JsonKey(name: 'articles')
  final ArticleSummaryDtoPaginatedResult articles;
  static const fromJsonFactory = _$AdminGetAllArticlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllArticlesResponse &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality().equals(
                  other.articles,
                  articles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(articles) ^ runtimeType.hashCode;
}

extension $AdminGetAllArticlesResponseExtension on AdminGetAllArticlesResponse {
  AdminGetAllArticlesResponse copyWith({
    ArticleSummaryDtoPaginatedResult? articles,
  }) {
    return AdminGetAllArticlesResponse(articles: articles ?? this.articles);
  }

  AdminGetAllArticlesResponse copyWithWrapped({
    Wrapped<ArticleSummaryDtoPaginatedResult>? articles,
  }) {
    return AdminGetAllArticlesResponse(
      articles: (articles != null ? articles.value : this.articles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllCategoriesResponse {
  const AdminGetAllCategoriesResponse({required this.categories});

  factory AdminGetAllCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllCategoriesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllCategoriesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllCategoriesResponseToJson(this);

  @JsonKey(name: 'categories')
  final CategoryDtoPaginatedResult categories;
  static const fromJsonFactory = _$AdminGetAllCategoriesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllCategoriesResponse &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality().equals(
                  other.categories,
                  categories,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^ runtimeType.hashCode;
}

extension $AdminGetAllCategoriesResponseExtension
    on AdminGetAllCategoriesResponse {
  AdminGetAllCategoriesResponse copyWith({
    CategoryDtoPaginatedResult? categories,
  }) {
    return AdminGetAllCategoriesResponse(
      categories: categories ?? this.categories,
    );
  }

  AdminGetAllCategoriesResponse copyWithWrapped({
    Wrapped<CategoryDtoPaginatedResult>? categories,
  }) {
    return AdminGetAllCategoriesResponse(
      categories: (categories != null ? categories.value : this.categories),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllContentTypesResponse {
  const AdminGetAllContentTypesResponse({required this.contentTypes});

  factory AdminGetAllContentTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllContentTypesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllContentTypesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminGetAllContentTypesResponseToJson(this);

  @JsonKey(name: 'contentTypes', defaultValue: <ContentTypeDto>[])
  final List<ContentTypeDto> contentTypes;
  static const fromJsonFactory = _$AdminGetAllContentTypesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllContentTypesResponse &&
            (identical(other.contentTypes, contentTypes) ||
                const DeepCollectionEquality().equals(
                  other.contentTypes,
                  contentTypes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentTypes) ^ runtimeType.hashCode;
}

extension $AdminGetAllContentTypesResponseExtension
    on AdminGetAllContentTypesResponse {
  AdminGetAllContentTypesResponse copyWith({
    List<ContentTypeDto>? contentTypes,
  }) {
    return AdminGetAllContentTypesResponse(
      contentTypes: contentTypes ?? this.contentTypes,
    );
  }

  AdminGetAllContentTypesResponse copyWithWrapped({
    Wrapped<List<ContentTypeDto>>? contentTypes,
  }) {
    return AdminGetAllContentTypesResponse(
      contentTypes: (contentTypes != null
          ? contentTypes.value
          : this.contentTypes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllCustomersResponse {
  const AdminGetAllCustomersResponse({required this.customers});

  factory AdminGetAllCustomersResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllCustomersResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllCustomersResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllCustomersResponseToJson(this);

  @JsonKey(name: 'customers')
  final CustomerDtoPaginatedResult customers;
  static const fromJsonFactory = _$AdminGetAllCustomersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllCustomersResponse &&
            (identical(other.customers, customers) ||
                const DeepCollectionEquality().equals(
                  other.customers,
                  customers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customers) ^ runtimeType.hashCode;
}

extension $AdminGetAllCustomersResponseExtension
    on AdminGetAllCustomersResponse {
  AdminGetAllCustomersResponse copyWith({
    CustomerDtoPaginatedResult? customers,
  }) {
    return AdminGetAllCustomersResponse(customers: customers ?? this.customers);
  }

  AdminGetAllCustomersResponse copyWithWrapped({
    Wrapped<CustomerDtoPaginatedResult>? customers,
  }) {
    return AdminGetAllCustomersResponse(
      customers: (customers != null ? customers.value : this.customers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllLyricsResponse {
  const AdminGetAllLyricsResponse({required this.lyrics});

  factory AdminGetAllLyricsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllLyricsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllLyricsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllLyricsResponseToJson(this);

  @JsonKey(name: 'lyrics')
  final LyricsDtoPaginatedResult lyrics;
  static const fromJsonFactory = _$AdminGetAllLyricsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllLyricsResponse &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyrics) ^ runtimeType.hashCode;
}

extension $AdminGetAllLyricsResponseExtension on AdminGetAllLyricsResponse {
  AdminGetAllLyricsResponse copyWith({LyricsDtoPaginatedResult? lyrics}) {
    return AdminGetAllLyricsResponse(lyrics: lyrics ?? this.lyrics);
  }

  AdminGetAllLyricsResponse copyWithWrapped({
    Wrapped<LyricsDtoPaginatedResult>? lyrics,
  }) {
    return AdminGetAllLyricsResponse(
      lyrics: (lyrics != null ? lyrics.value : this.lyrics),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllOrdersResponse {
  const AdminGetAllOrdersResponse({required this.orders});

  factory AdminGetAllOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllOrdersResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllOrdersResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllOrdersResponseToJson(this);

  @JsonKey(name: 'orders')
  final ContentOrderSummaryDtoPaginatedResult orders;
  static const fromJsonFactory = _$AdminGetAllOrdersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllOrdersResponse &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orders) ^ runtimeType.hashCode;
}

extension $AdminGetAllOrdersResponseExtension on AdminGetAllOrdersResponse {
  AdminGetAllOrdersResponse copyWith({
    ContentOrderSummaryDtoPaginatedResult? orders,
  }) {
    return AdminGetAllOrdersResponse(orders: orders ?? this.orders);
  }

  AdminGetAllOrdersResponse copyWithWrapped({
    Wrapped<ContentOrderSummaryDtoPaginatedResult>? orders,
  }) {
    return AdminGetAllOrdersResponse(
      orders: (orders != null ? orders.value : this.orders),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllPackagesResponse {
  const AdminGetAllPackagesResponse({required this.packages});

  factory AdminGetAllPackagesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllPackagesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllPackagesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllPackagesResponseToJson(this);

  @JsonKey(name: 'packages')
  final PackageDtoPaginatedResult packages;
  static const fromJsonFactory = _$AdminGetAllPackagesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllPackagesResponse &&
            (identical(other.packages, packages) ||
                const DeepCollectionEquality().equals(
                  other.packages,
                  packages,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(packages) ^ runtimeType.hashCode;
}

extension $AdminGetAllPackagesResponseExtension on AdminGetAllPackagesResponse {
  AdminGetAllPackagesResponse copyWith({PackageDtoPaginatedResult? packages}) {
    return AdminGetAllPackagesResponse(packages: packages ?? this.packages);
  }

  AdminGetAllPackagesResponse copyWithWrapped({
    Wrapped<PackageDtoPaginatedResult>? packages,
  }) {
    return AdminGetAllPackagesResponse(
      packages: (packages != null ? packages.value : this.packages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllPermissionsResponse {
  const AdminGetAllPermissionsResponse({required this.permissions});

  factory AdminGetAllPermissionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllPermissionsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllPermissionsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllPermissionsResponseToJson(this);

  @JsonKey(name: 'permissions')
  final PermissionDtoPaginatedResult permissions;
  static const fromJsonFactory = _$AdminGetAllPermissionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllPermissionsResponse &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality().equals(
                  other.permissions,
                  permissions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permissions) ^ runtimeType.hashCode;
}

extension $AdminGetAllPermissionsResponseExtension
    on AdminGetAllPermissionsResponse {
  AdminGetAllPermissionsResponse copyWith({
    PermissionDtoPaginatedResult? permissions,
  }) {
    return AdminGetAllPermissionsResponse(
      permissions: permissions ?? this.permissions,
    );
  }

  AdminGetAllPermissionsResponse copyWithWrapped({
    Wrapped<PermissionDtoPaginatedResult>? permissions,
  }) {
    return AdminGetAllPermissionsResponse(
      permissions: (permissions != null ? permissions.value : this.permissions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllPricingTiersResponse {
  const AdminGetAllPricingTiersResponse({required this.pricingTiers});

  factory AdminGetAllPricingTiersResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllPricingTiersResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllPricingTiersResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminGetAllPricingTiersResponseToJson(this);

  @JsonKey(name: 'pricingTiers', defaultValue: <PricingTierDto>[])
  final List<PricingTierDto> pricingTiers;
  static const fromJsonFactory = _$AdminGetAllPricingTiersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllPricingTiersResponse &&
            (identical(other.pricingTiers, pricingTiers) ||
                const DeepCollectionEquality().equals(
                  other.pricingTiers,
                  pricingTiers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTiers) ^ runtimeType.hashCode;
}

extension $AdminGetAllPricingTiersResponseExtension
    on AdminGetAllPricingTiersResponse {
  AdminGetAllPricingTiersResponse copyWith({
    List<PricingTierDto>? pricingTiers,
  }) {
    return AdminGetAllPricingTiersResponse(
      pricingTiers: pricingTiers ?? this.pricingTiers,
    );
  }

  AdminGetAllPricingTiersResponse copyWithWrapped({
    Wrapped<List<PricingTierDto>>? pricingTiers,
  }) {
    return AdminGetAllPricingTiersResponse(
      pricingTiers: (pricingTiers != null
          ? pricingTiers.value
          : this.pricingTiers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllPromotionLevelsResponse {
  const AdminGetAllPromotionLevelsResponse({required this.promotionLevels});

  factory AdminGetAllPromotionLevelsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminGetAllPromotionLevelsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllPromotionLevelsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminGetAllPromotionLevelsResponseToJson(this);

  @JsonKey(name: 'promotionLevels', defaultValue: <PromotionLevelDto>[])
  final List<PromotionLevelDto> promotionLevels;
  static const fromJsonFactory = _$AdminGetAllPromotionLevelsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllPromotionLevelsResponse &&
            (identical(other.promotionLevels, promotionLevels) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevels,
                  promotionLevels,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevels) ^
      runtimeType.hashCode;
}

extension $AdminGetAllPromotionLevelsResponseExtension
    on AdminGetAllPromotionLevelsResponse {
  AdminGetAllPromotionLevelsResponse copyWith({
    List<PromotionLevelDto>? promotionLevels,
  }) {
    return AdminGetAllPromotionLevelsResponse(
      promotionLevels: promotionLevels ?? this.promotionLevels,
    );
  }

  AdminGetAllPromotionLevelsResponse copyWithWrapped({
    Wrapped<List<PromotionLevelDto>>? promotionLevels,
  }) {
    return AdminGetAllPromotionLevelsResponse(
      promotionLevels: (promotionLevels != null
          ? promotionLevels.value
          : this.promotionLevels),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllRolesResponse {
  const AdminGetAllRolesResponse({required this.roles});

  factory AdminGetAllRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllRolesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllRolesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllRolesResponseToJson(this);

  @JsonKey(name: 'roles')
  final RoleDtoPaginatedResult roles;
  static const fromJsonFactory = _$AdminGetAllRolesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllRolesResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $AdminGetAllRolesResponseExtension on AdminGetAllRolesResponse {
  AdminGetAllRolesResponse copyWith({RoleDtoPaginatedResult? roles}) {
    return AdminGetAllRolesResponse(roles: roles ?? this.roles);
  }

  AdminGetAllRolesResponse copyWithWrapped({
    Wrapped<RoleDtoPaginatedResult>? roles,
  }) {
    return AdminGetAllRolesResponse(
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllSessionsResponse {
  const AdminGetAllSessionsResponse({required this.sessions});

  factory AdminGetAllSessionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllSessionsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllSessionsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllSessionsResponseToJson(this);

  @JsonKey(name: 'sessions')
  final SessionDtoPaginatedResult sessions;
  static const fromJsonFactory = _$AdminGetAllSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllSessionsResponse &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality().equals(
                  other.sessions,
                  sessions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessions) ^ runtimeType.hashCode;
}

extension $AdminGetAllSessionsResponseExtension on AdminGetAllSessionsResponse {
  AdminGetAllSessionsResponse copyWith({SessionDtoPaginatedResult? sessions}) {
    return AdminGetAllSessionsResponse(sessions: sessions ?? this.sessions);
  }

  AdminGetAllSessionsResponse copyWithWrapped({
    Wrapped<SessionDtoPaginatedResult>? sessions,
  }) {
    return AdminGetAllSessionsResponse(
      sessions: (sessions != null ? sessions.value : this.sessions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllShortsResponse {
  const AdminGetAllShortsResponse({required this.shortVideos});

  factory AdminGetAllShortsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllShortsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllShortsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllShortsResponseToJson(this);

  @JsonKey(name: 'shortVideos')
  final ShortVideoDtoPaginatedResult shortVideos;
  static const fromJsonFactory = _$AdminGetAllShortsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllShortsResponse &&
            (identical(other.shortVideos, shortVideos) ||
                const DeepCollectionEquality().equals(
                  other.shortVideos,
                  shortVideos,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortVideos) ^ runtimeType.hashCode;
}

extension $AdminGetAllShortsResponseExtension on AdminGetAllShortsResponse {
  AdminGetAllShortsResponse copyWith({
    ShortVideoDtoPaginatedResult? shortVideos,
  }) {
    return AdminGetAllShortsResponse(
      shortVideos: shortVideos ?? this.shortVideos,
    );
  }

  AdminGetAllShortsResponse copyWithWrapped({
    Wrapped<ShortVideoDtoPaginatedResult>? shortVideos,
  }) {
    return AdminGetAllShortsResponse(
      shortVideos: (shortVideos != null ? shortVideos.value : this.shortVideos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllVideosResponse {
  const AdminGetAllVideosResponse({required this.videos});

  factory AdminGetAllVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllVideosResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllVideosResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllVideosResponseToJson(this);

  @JsonKey(name: 'videos')
  final VideoSummaryDtoPaginatedResult videos;
  static const fromJsonFactory = _$AdminGetAllVideosResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllVideosResponse &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videos) ^ runtimeType.hashCode;
}

extension $AdminGetAllVideosResponseExtension on AdminGetAllVideosResponse {
  AdminGetAllVideosResponse copyWith({VideoSummaryDtoPaginatedResult? videos}) {
    return AdminGetAllVideosResponse(videos: videos ?? this.videos);
  }

  AdminGetAllVideosResponse copyWithWrapped({
    Wrapped<VideoSummaryDtoPaginatedResult>? videos,
  }) {
    return AdminGetAllVideosResponse(
      videos: (videos != null ? videos.value : this.videos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetArticleByIdResponse {
  const AdminGetArticleByIdResponse({required this.article});

  factory AdminGetArticleByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetArticleByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetArticleByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetArticleByIdResponseToJson(this);

  @JsonKey(name: 'article')
  final ArticleDetailDto article;
  static const fromJsonFactory = _$AdminGetArticleByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetArticleByIdResponse &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(article) ^ runtimeType.hashCode;
}

extension $AdminGetArticleByIdResponseExtension on AdminGetArticleByIdResponse {
  AdminGetArticleByIdResponse copyWith({ArticleDetailDto? article}) {
    return AdminGetArticleByIdResponse(article: article ?? this.article);
  }

  AdminGetArticleByIdResponse copyWithWrapped({
    Wrapped<ArticleDetailDto>? article,
  }) {
    return AdminGetArticleByIdResponse(
      article: (article != null ? article.value : this.article),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetCategoryByIdResponse {
  const AdminGetCategoryByIdResponse({required this.category});

  factory AdminGetCategoryByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetCategoryByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetCategoryByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetCategoryByIdResponseToJson(this);

  @JsonKey(name: 'category')
  final CategoryDto category;
  static const fromJsonFactory = _$AdminGetCategoryByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetCategoryByIdResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $AdminGetCategoryByIdResponseExtension
    on AdminGetCategoryByIdResponse {
  AdminGetCategoryByIdResponse copyWith({CategoryDto? category}) {
    return AdminGetCategoryByIdResponse(category: category ?? this.category);
  }

  AdminGetCategoryByIdResponse copyWithWrapped({
    Wrapped<CategoryDto>? category,
  }) {
    return AdminGetCategoryByIdResponse(
      category: (category != null ? category.value : this.category),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetCustomerByIdResponse {
  const AdminGetCustomerByIdResponse({required this.customer});

  factory AdminGetCustomerByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetCustomerByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetCustomerByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetCustomerByIdResponseToJson(this);

  @JsonKey(name: 'customer')
  final CustomerDto customer;
  static const fromJsonFactory = _$AdminGetCustomerByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetCustomerByIdResponse &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality().equals(
                  other.customer,
                  customer,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customer) ^ runtimeType.hashCode;
}

extension $AdminGetCustomerByIdResponseExtension
    on AdminGetCustomerByIdResponse {
  AdminGetCustomerByIdResponse copyWith({CustomerDto? customer}) {
    return AdminGetCustomerByIdResponse(customer: customer ?? this.customer);
  }

  AdminGetCustomerByIdResponse copyWithWrapped({
    Wrapped<CustomerDto>? customer,
  }) {
    return AdminGetCustomerByIdResponse(
      customer: (customer != null ? customer.value : this.customer),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetCustomerOrdersResponse {
  const AdminGetCustomerOrdersResponse({required this.orders});

  factory AdminGetCustomerOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetCustomerOrdersResponseFromJson(json);

  static const toJsonFactory = _$AdminGetCustomerOrdersResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetCustomerOrdersResponseToJson(this);

  @JsonKey(name: 'orders')
  final ContentOrderSummaryDtoPaginatedResult orders;
  static const fromJsonFactory = _$AdminGetCustomerOrdersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetCustomerOrdersResponse &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orders) ^ runtimeType.hashCode;
}

extension $AdminGetCustomerOrdersResponseExtension
    on AdminGetCustomerOrdersResponse {
  AdminGetCustomerOrdersResponse copyWith({
    ContentOrderSummaryDtoPaginatedResult? orders,
  }) {
    return AdminGetCustomerOrdersResponse(orders: orders ?? this.orders);
  }

  AdminGetCustomerOrdersResponse copyWithWrapped({
    Wrapped<ContentOrderSummaryDtoPaginatedResult>? orders,
  }) {
    return AdminGetCustomerOrdersResponse(
      orders: (orders != null ? orders.value : this.orders),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOrderByIdResponse {
  const AdminGetOrderByIdResponse({required this.order});

  factory AdminGetOrderByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOrderByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOrderByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOrderByIdResponseToJson(this);

  @JsonKey(name: 'order')
  final ContentOrderDetailDto order;
  static const fromJsonFactory = _$AdminGetOrderByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOrderByIdResponse &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(order) ^ runtimeType.hashCode;
}

extension $AdminGetOrderByIdResponseExtension on AdminGetOrderByIdResponse {
  AdminGetOrderByIdResponse copyWith({ContentOrderDetailDto? order}) {
    return AdminGetOrderByIdResponse(order: order ?? this.order);
  }

  AdminGetOrderByIdResponse copyWithWrapped({
    Wrapped<ContentOrderDetailDto>? order,
  }) {
    return AdminGetOrderByIdResponse(
      order: (order != null ? order.value : this.order),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOrderPaymentResponse {
  const AdminGetOrderPaymentResponse({required this.payment});

  factory AdminGetOrderPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOrderPaymentResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOrderPaymentResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOrderPaymentResponseToJson(this);

  @JsonKey(name: 'payment')
  final PaymentDto payment;
  static const fromJsonFactory = _$AdminGetOrderPaymentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOrderPaymentResponse &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payment) ^ runtimeType.hashCode;
}

extension $AdminGetOrderPaymentResponseExtension
    on AdminGetOrderPaymentResponse {
  AdminGetOrderPaymentResponse copyWith({PaymentDto? payment}) {
    return AdminGetOrderPaymentResponse(payment: payment ?? this.payment);
  }

  AdminGetOrderPaymentResponse copyWithWrapped({Wrapped<PaymentDto>? payment}) {
    return AdminGetOrderPaymentResponse(
      payment: (payment != null ? payment.value : this.payment),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOwnProfileResponse {
  const AdminGetOwnProfileResponse({required this.user});

  factory AdminGetOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminGetOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminGetOwnProfileResponseExtension on AdminGetOwnProfileResponse {
  AdminGetOwnProfileResponse copyWith({UserResponseDto? user}) {
    return AdminGetOwnProfileResponse(user: user ?? this.user);
  }

  AdminGetOwnProfileResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminGetOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOwnRolesResponse {
  const AdminGetOwnRolesResponse({required this.roles});

  factory AdminGetOwnRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOwnRolesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOwnRolesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOwnRolesResponseToJson(this);

  @JsonKey(name: 'roles', defaultValue: <RoleWithPermissionsDto>[])
  final List<RoleWithPermissionsDto> roles;
  static const fromJsonFactory = _$AdminGetOwnRolesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOwnRolesResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $AdminGetOwnRolesResponseExtension on AdminGetOwnRolesResponse {
  AdminGetOwnRolesResponse copyWith({List<RoleWithPermissionsDto>? roles}) {
    return AdminGetOwnRolesResponse(roles: roles ?? this.roles);
  }

  AdminGetOwnRolesResponse copyWithWrapped({
    Wrapped<List<RoleWithPermissionsDto>>? roles,
  }) {
    return AdminGetOwnRolesResponse(
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOwnSessionByIdResponse {
  const AdminGetOwnSessionByIdResponse({required this.session});

  factory AdminGetOwnSessionByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOwnSessionByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOwnSessionByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOwnSessionByIdResponseToJson(this);

  @JsonKey(name: 'session')
  final SessionDto session;
  static const fromJsonFactory = _$AdminGetOwnSessionByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOwnSessionByIdResponse &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(session) ^ runtimeType.hashCode;
}

extension $AdminGetOwnSessionByIdResponseExtension
    on AdminGetOwnSessionByIdResponse {
  AdminGetOwnSessionByIdResponse copyWith({SessionDto? session}) {
    return AdminGetOwnSessionByIdResponse(session: session ?? this.session);
  }

  AdminGetOwnSessionByIdResponse copyWithWrapped({
    Wrapped<SessionDto>? session,
  }) {
    return AdminGetOwnSessionByIdResponse(
      session: (session != null ? session.value : this.session),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOwnSessionsResponse {
  const AdminGetOwnSessionsResponse({required this.sessions});

  factory AdminGetOwnSessionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOwnSessionsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOwnSessionsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOwnSessionsResponseToJson(this);

  @JsonKey(name: 'sessions', defaultValue: <SessionDto>[])
  final List<SessionDto> sessions;
  static const fromJsonFactory = _$AdminGetOwnSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOwnSessionsResponse &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality().equals(
                  other.sessions,
                  sessions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessions) ^ runtimeType.hashCode;
}

extension $AdminGetOwnSessionsResponseExtension on AdminGetOwnSessionsResponse {
  AdminGetOwnSessionsResponse copyWith({List<SessionDto>? sessions}) {
    return AdminGetOwnSessionsResponse(sessions: sessions ?? this.sessions);
  }

  AdminGetOwnSessionsResponse copyWithWrapped({
    Wrapped<List<SessionDto>>? sessions,
  }) {
    return AdminGetOwnSessionsResponse(
      sessions: (sessions != null ? sessions.value : this.sessions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetPackageByIdResponse {
  const AdminGetPackageByIdResponse({required this.package});

  factory AdminGetPackageByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetPackageByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetPackageByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetPackageByIdResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  static const fromJsonFactory = _$AdminGetPackageByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetPackageByIdResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^ runtimeType.hashCode;
}

extension $AdminGetPackageByIdResponseExtension on AdminGetPackageByIdResponse {
  AdminGetPackageByIdResponse copyWith({PackageDto? package}) {
    return AdminGetPackageByIdResponse(package: package ?? this.package);
  }

  AdminGetPackageByIdResponse copyWithWrapped({Wrapped<PackageDto>? package}) {
    return AdminGetPackageByIdResponse(
      package: (package != null ? package.value : this.package),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetPendingPaymentOrdersResponse {
  const AdminGetPendingPaymentOrdersResponse({required this.orders});

  factory AdminGetPendingPaymentOrdersResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminGetPendingPaymentOrdersResponseFromJson(json);

  static const toJsonFactory = _$AdminGetPendingPaymentOrdersResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminGetPendingPaymentOrdersResponseToJson(this);

  @JsonKey(name: 'orders')
  final ContentOrderSummaryDtoPaginatedResult orders;
  static const fromJsonFactory = _$AdminGetPendingPaymentOrdersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetPendingPaymentOrdersResponse &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orders) ^ runtimeType.hashCode;
}

extension $AdminGetPendingPaymentOrdersResponseExtension
    on AdminGetPendingPaymentOrdersResponse {
  AdminGetPendingPaymentOrdersResponse copyWith({
    ContentOrderSummaryDtoPaginatedResult? orders,
  }) {
    return AdminGetPendingPaymentOrdersResponse(orders: orders ?? this.orders);
  }

  AdminGetPendingPaymentOrdersResponse copyWithWrapped({
    Wrapped<ContentOrderSummaryDtoPaginatedResult>? orders,
  }) {
    return AdminGetPendingPaymentOrdersResponse(
      orders: (orders != null ? orders.value : this.orders),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetPermissionByIdResponse {
  const AdminGetPermissionByIdResponse({required this.permission});

  factory AdminGetPermissionByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetPermissionByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetPermissionByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetPermissionByIdResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminGetPermissionByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetPermissionByIdResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminGetPermissionByIdResponseExtension
    on AdminGetPermissionByIdResponse {
  AdminGetPermissionByIdResponse copyWith({PermissionDto? permission}) {
    return AdminGetPermissionByIdResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminGetPermissionByIdResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminGetPermissionByIdResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetRoleByIdResponse {
  const AdminGetRoleByIdResponse({
    required this.role,
    required this.permissions,
  });

  factory AdminGetRoleByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetRoleByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetRoleByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetRoleByIdResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  @JsonKey(name: 'permissions', defaultValue: <PermissionDto>[])
  final List<PermissionDto> permissions;
  static const fromJsonFactory = _$AdminGetRoleByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetRoleByIdResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality().equals(
                  other.permissions,
                  permissions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(permissions) ^
      runtimeType.hashCode;
}

extension $AdminGetRoleByIdResponseExtension on AdminGetRoleByIdResponse {
  AdminGetRoleByIdResponse copyWith({
    RoleDto? role,
    List<PermissionDto>? permissions,
  }) {
    return AdminGetRoleByIdResponse(
      role: role ?? this.role,
      permissions: permissions ?? this.permissions,
    );
  }

  AdminGetRoleByIdResponse copyWithWrapped({
    Wrapped<RoleDto>? role,
    Wrapped<List<PermissionDto>>? permissions,
  }) {
    return AdminGetRoleByIdResponse(
      role: (role != null ? role.value : this.role),
      permissions: (permissions != null ? permissions.value : this.permissions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetSessionMetricsResponse {
  const AdminGetSessionMetricsResponse({
    required this.browsers,
    required this.devices,
    required this.platforms,
    required this.clients,
    required this.totalActiveSessions,
    required this.totalActiveUsers,
  });

  factory AdminGetSessionMetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetSessionMetricsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetSessionMetricsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetSessionMetricsResponseToJson(this);

  @JsonKey(name: 'browsers')
  final BrowserMetrics browsers;
  @JsonKey(name: 'devices')
  final DeviceMetrics devices;
  @JsonKey(name: 'platforms')
  final PlatformMetrics platforms;
  @JsonKey(name: 'clients')
  final ClientMetrics clients;
  @JsonKey(name: 'totalActiveSessions')
  final int totalActiveSessions;
  @JsonKey(name: 'totalActiveUsers')
  final int totalActiveUsers;
  static const fromJsonFactory = _$AdminGetSessionMetricsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetSessionMetricsResponse &&
            (identical(other.browsers, browsers) ||
                const DeepCollectionEquality().equals(
                  other.browsers,
                  browsers,
                )) &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(
                  other.devices,
                  devices,
                )) &&
            (identical(other.platforms, platforms) ||
                const DeepCollectionEquality().equals(
                  other.platforms,
                  platforms,
                )) &&
            (identical(other.clients, clients) ||
                const DeepCollectionEquality().equals(
                  other.clients,
                  clients,
                )) &&
            (identical(other.totalActiveSessions, totalActiveSessions) ||
                const DeepCollectionEquality().equals(
                  other.totalActiveSessions,
                  totalActiveSessions,
                )) &&
            (identical(other.totalActiveUsers, totalActiveUsers) ||
                const DeepCollectionEquality().equals(
                  other.totalActiveUsers,
                  totalActiveUsers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(browsers) ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(platforms) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(totalActiveSessions) ^
      const DeepCollectionEquality().hash(totalActiveUsers) ^
      runtimeType.hashCode;
}

extension $AdminGetSessionMetricsResponseExtension
    on AdminGetSessionMetricsResponse {
  AdminGetSessionMetricsResponse copyWith({
    BrowserMetrics? browsers,
    DeviceMetrics? devices,
    PlatformMetrics? platforms,
    ClientMetrics? clients,
    int? totalActiveSessions,
    int? totalActiveUsers,
  }) {
    return AdminGetSessionMetricsResponse(
      browsers: browsers ?? this.browsers,
      devices: devices ?? this.devices,
      platforms: platforms ?? this.platforms,
      clients: clients ?? this.clients,
      totalActiveSessions: totalActiveSessions ?? this.totalActiveSessions,
      totalActiveUsers: totalActiveUsers ?? this.totalActiveUsers,
    );
  }

  AdminGetSessionMetricsResponse copyWithWrapped({
    Wrapped<BrowserMetrics>? browsers,
    Wrapped<DeviceMetrics>? devices,
    Wrapped<PlatformMetrics>? platforms,
    Wrapped<ClientMetrics>? clients,
    Wrapped<int>? totalActiveSessions,
    Wrapped<int>? totalActiveUsers,
  }) {
    return AdminGetSessionMetricsResponse(
      browsers: (browsers != null ? browsers.value : this.browsers),
      devices: (devices != null ? devices.value : this.devices),
      platforms: (platforms != null ? platforms.value : this.platforms),
      clients: (clients != null ? clients.value : this.clients),
      totalActiveSessions: (totalActiveSessions != null
          ? totalActiveSessions.value
          : this.totalActiveSessions),
      totalActiveUsers: (totalActiveUsers != null
          ? totalActiveUsers.value
          : this.totalActiveUsers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetShortByIdResponse {
  const AdminGetShortByIdResponse({required this.shortVideo});

  factory AdminGetShortByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetShortByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetShortByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetShortByIdResponseToJson(this);

  @JsonKey(name: 'shortVideo')
  final ShortVideoDto shortVideo;
  static const fromJsonFactory = _$AdminGetShortByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetShortByIdResponse &&
            (identical(other.shortVideo, shortVideo) ||
                const DeepCollectionEquality().equals(
                  other.shortVideo,
                  shortVideo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortVideo) ^ runtimeType.hashCode;
}

extension $AdminGetShortByIdResponseExtension on AdminGetShortByIdResponse {
  AdminGetShortByIdResponse copyWith({ShortVideoDto? shortVideo}) {
    return AdminGetShortByIdResponse(shortVideo: shortVideo ?? this.shortVideo);
  }

  AdminGetShortByIdResponse copyWithWrapped({
    Wrapped<ShortVideoDto>? shortVideo,
  }) {
    return AdminGetShortByIdResponse(
      shortVideo: (shortVideo != null ? shortVideo.value : this.shortVideo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetUserRolesResponse {
  const AdminGetUserRolesResponse({required this.roles});

  factory AdminGetUserRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetUserRolesResponseFromJson(json);

  static const toJsonFactory = _$AdminGetUserRolesResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetUserRolesResponseToJson(this);

  @JsonKey(name: 'roles', defaultValue: <RoleDto>[])
  final List<RoleDto> roles;
  static const fromJsonFactory = _$AdminGetUserRolesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetUserRolesResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $AdminGetUserRolesResponseExtension on AdminGetUserRolesResponse {
  AdminGetUserRolesResponse copyWith({List<RoleDto>? roles}) {
    return AdminGetUserRolesResponse(roles: roles ?? this.roles);
  }

  AdminGetUserRolesResponse copyWithWrapped({Wrapped<List<RoleDto>>? roles}) {
    return AdminGetUserRolesResponse(
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetVideoByIdResponse {
  const AdminGetVideoByIdResponse({required this.video});

  factory AdminGetVideoByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetVideoByIdResponseFromJson(json);

  static const toJsonFactory = _$AdminGetVideoByIdResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetVideoByIdResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$AdminGetVideoByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetVideoByIdResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $AdminGetVideoByIdResponseExtension on AdminGetVideoByIdResponse {
  AdminGetVideoByIdResponse copyWith({VideoDetailDto? video}) {
    return AdminGetVideoByIdResponse(video: video ?? this.video);
  }

  AdminGetVideoByIdResponse copyWithWrapped({Wrapped<VideoDetailDto>? video}) {
    return AdminGetVideoByIdResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminHardDeletePermissionResponse {
  const AdminHardDeletePermissionResponse({required this.isSuccess});

  factory AdminHardDeletePermissionResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminHardDeletePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminHardDeletePermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminHardDeletePermissionResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminHardDeletePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminHardDeletePermissionResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminHardDeletePermissionResponseExtension
    on AdminHardDeletePermissionResponse {
  AdminHardDeletePermissionResponse copyWith({bool? isSuccess}) {
    return AdminHardDeletePermissionResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminHardDeletePermissionResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return AdminHardDeletePermissionResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminHardDeleteRoleResponse {
  const AdminHardDeleteRoleResponse({required this.isSuccess});

  factory AdminHardDeleteRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminHardDeleteRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminHardDeleteRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminHardDeleteRoleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminHardDeleteRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminHardDeleteRoleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminHardDeleteRoleResponseExtension on AdminHardDeleteRoleResponse {
  AdminHardDeleteRoleResponse copyWith({bool? isSuccess}) {
    return AdminHardDeleteRoleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminHardDeleteRoleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminHardDeleteRoleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminLoginRequest {
  const AdminLoginRequest({required this.email, required this.password});

  factory AdminLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginRequestFromJson(json);

  static const toJsonFactory = _$AdminLoginRequestToJson;
  Map<String, dynamic> toJson() => _$AdminLoginRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$AdminLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminLoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AdminLoginRequestExtension on AdminLoginRequest {
  AdminLoginRequest copyWith({String? email, String? password}) {
    return AdminLoginRequest(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  AdminLoginRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? password,
  }) {
    return AdminLoginRequest(
      email: (email != null ? email.value : this.email),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminLoginResponse {
  const AdminLoginResponse({required this.user});

  factory AdminLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginResponseFromJson(json);

  static const toJsonFactory = _$AdminLoginResponseToJson;
  Map<String, dynamic> toJson() => _$AdminLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminLoginResponseExtension on AdminLoginResponse {
  AdminLoginResponse copyWith({UserResponseDto? user}) {
    return AdminLoginResponse(user: user ?? this.user);
  }

  AdminLoginResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminLoginResponse(user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class AdminPublishArticleResponse {
  const AdminPublishArticleResponse({required this.isSuccess});

  factory AdminPublishArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminPublishArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminPublishArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminPublishArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminPublishArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminPublishArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminPublishArticleResponseExtension on AdminPublishArticleResponse {
  AdminPublishArticleResponse copyWith({bool? isSuccess}) {
    return AdminPublishArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminPublishArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminPublishArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminPublishVideoResponse {
  const AdminPublishVideoResponse({required this.isSuccess});

  factory AdminPublishVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminPublishVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminPublishVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminPublishVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminPublishVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminPublishVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminPublishVideoResponseExtension on AdminPublishVideoResponse {
  AdminPublishVideoResponse copyWith({bool? isSuccess}) {
    return AdminPublishVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminPublishVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminPublishVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRefreshTokenResponse {
  const AdminRefreshTokenResponse({required this.user});

  factory AdminRefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRefreshTokenResponseFromJson(json);

  static const toJsonFactory = _$AdminRefreshTokenResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRefreshTokenResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminRefreshTokenResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRefreshTokenResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminRefreshTokenResponseExtension on AdminRefreshTokenResponse {
  AdminRefreshTokenResponse copyWith({UserResponseDto? user}) {
    return AdminRefreshTokenResponse(user: user ?? this.user);
  }

  AdminRefreshTokenResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminRefreshTokenResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectArticleRequest {
  const AdminRejectArticleRequest({required this.reason});

  factory AdminRejectArticleRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectArticleRequestFromJson(json);

  static const toJsonFactory = _$AdminRejectArticleRequestToJson;
  Map<String, dynamic> toJson() => _$AdminRejectArticleRequestToJson(this);

  @JsonKey(name: 'reason')
  final String reason;
  static const fromJsonFactory = _$AdminRejectArticleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectArticleRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $AdminRejectArticleRequestExtension on AdminRejectArticleRequest {
  AdminRejectArticleRequest copyWith({String? reason}) {
    return AdminRejectArticleRequest(reason: reason ?? this.reason);
  }

  AdminRejectArticleRequest copyWithWrapped({Wrapped<String>? reason}) {
    return AdminRejectArticleRequest(
      reason: (reason != null ? reason.value : this.reason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectArticleResponse {
  const AdminRejectArticleResponse({required this.isSuccess});

  factory AdminRejectArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminRejectArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRejectArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRejectArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminRejectArticleResponseExtension on AdminRejectArticleResponse {
  AdminRejectArticleResponse copyWith({bool? isSuccess}) {
    return AdminRejectArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminRejectArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminRejectArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectPaymentRequest {
  const AdminRejectPaymentRequest({this.notes});

  factory AdminRejectPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectPaymentRequestFromJson(json);

  static const toJsonFactory = _$AdminRejectPaymentRequestToJson;
  Map<String, dynamic> toJson() => _$AdminRejectPaymentRequestToJson(this);

  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$AdminRejectPaymentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectPaymentRequest &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notes) ^ runtimeType.hashCode;
}

extension $AdminRejectPaymentRequestExtension on AdminRejectPaymentRequest {
  AdminRejectPaymentRequest copyWith({String? notes}) {
    return AdminRejectPaymentRequest(notes: notes ?? this.notes);
  }

  AdminRejectPaymentRequest copyWithWrapped({Wrapped<String?>? notes}) {
    return AdminRejectPaymentRequest(
      notes: (notes != null ? notes.value : this.notes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectPaymentResponse {
  const AdminRejectPaymentResponse({required this.isSuccess});

  factory AdminRejectPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectPaymentResponseFromJson(json);

  static const toJsonFactory = _$AdminRejectPaymentResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRejectPaymentResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRejectPaymentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectPaymentResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminRejectPaymentResponseExtension on AdminRejectPaymentResponse {
  AdminRejectPaymentResponse copyWith({bool? isSuccess}) {
    return AdminRejectPaymentResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminRejectPaymentResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminRejectPaymentResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectVideoRequest {
  const AdminRejectVideoRequest({required this.reason});

  factory AdminRejectVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectVideoRequestFromJson(json);

  static const toJsonFactory = _$AdminRejectVideoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminRejectVideoRequestToJson(this);

  @JsonKey(name: 'reason')
  final String reason;
  static const fromJsonFactory = _$AdminRejectVideoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectVideoRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^ runtimeType.hashCode;
}

extension $AdminRejectVideoRequestExtension on AdminRejectVideoRequest {
  AdminRejectVideoRequest copyWith({String? reason}) {
    return AdminRejectVideoRequest(reason: reason ?? this.reason);
  }

  AdminRejectVideoRequest copyWithWrapped({Wrapped<String>? reason}) {
    return AdminRejectVideoRequest(
      reason: (reason != null ? reason.value : this.reason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRejectVideoResponse {
  const AdminRejectVideoResponse({required this.isSuccess});

  factory AdminRejectVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRejectVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminRejectVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRejectVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRejectVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRejectVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminRejectVideoResponseExtension on AdminRejectVideoResponse {
  AdminRejectVideoResponse copyWith({bool? isSuccess}) {
    return AdminRejectVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminRejectVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminRejectVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRemoveCategoryPricingResponse {
  const AdminRemoveCategoryPricingResponse({
    required this.pricing,
    required this.isSuccess,
  });

  factory AdminRemoveCategoryPricingResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminRemoveCategoryPricingResponseFromJson(json);

  static const toJsonFactory = _$AdminRemoveCategoryPricingResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminRemoveCategoryPricingResponseToJson(this);

  @JsonKey(name: 'pricing', defaultValue: <CategoryPricingDto>[])
  final List<CategoryPricingDto> pricing;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRemoveCategoryPricingResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRemoveCategoryPricingResponse &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality().equals(
                  other.pricing,
                  pricing,
                )) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricing) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminRemoveCategoryPricingResponseExtension
    on AdminRemoveCategoryPricingResponse {
  AdminRemoveCategoryPricingResponse copyWith({
    List<CategoryPricingDto>? pricing,
    bool? isSuccess,
  }) {
    return AdminRemoveCategoryPricingResponse(
      pricing: pricing ?? this.pricing,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminRemoveCategoryPricingResponse copyWithWrapped({
    Wrapped<List<CategoryPricingDto>>? pricing,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminRemoveCategoryPricingResponse(
      pricing: (pricing != null ? pricing.value : this.pricing),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRemovePackageSlotResponse {
  const AdminRemovePackageSlotResponse({
    required this.package,
    required this.isSuccess,
  });

  factory AdminRemovePackageSlotResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRemovePackageSlotResponseFromJson(json);

  static const toJsonFactory = _$AdminRemovePackageSlotResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRemovePackageSlotResponseToJson(this);

  @JsonKey(name: 'package')
  final PackageDto package;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRemovePackageSlotResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRemovePackageSlotResponse &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(
                  other.package,
                  package,
                )) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(package) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminRemovePackageSlotResponseExtension
    on AdminRemovePackageSlotResponse {
  AdminRemovePackageSlotResponse copyWith({
    PackageDto? package,
    bool? isSuccess,
  }) {
    return AdminRemovePackageSlotResponse(
      package: package ?? this.package,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminRemovePackageSlotResponse copyWithWrapped({
    Wrapped<PackageDto>? package,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminRemovePackageSlotResponse(
      package: (package != null ? package.value : this.package),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRemovePermissionFromRoleResponse {
  const AdminRemovePermissionFromRoleResponse({
    required this.role,
    required this.isSuccess,
  });

  factory AdminRemovePermissionFromRoleResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminRemovePermissionFromRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminRemovePermissionFromRoleResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminRemovePermissionFromRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleWithPermissionsDto role;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory =
      _$AdminRemovePermissionFromRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRemovePermissionFromRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminRemovePermissionFromRoleResponseExtension
    on AdminRemovePermissionFromRoleResponse {
  AdminRemovePermissionFromRoleResponse copyWith({
    RoleWithPermissionsDto? role,
    bool? isSuccess,
  }) {
    return AdminRemovePermissionFromRoleResponse(
      role: role ?? this.role,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminRemovePermissionFromRoleResponse copyWithWrapped({
    Wrapped<RoleWithPermissionsDto>? role,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminRemovePermissionFromRoleResponse(
      role: (role != null ? role.value : this.role),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRemoveRoleFromUserResponse {
  const AdminRemoveRoleFromUserResponse({
    required this.roles,
    required this.isSuccess,
  });

  factory AdminRemoveRoleFromUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRemoveRoleFromUserResponseFromJson(json);

  static const toJsonFactory = _$AdminRemoveRoleFromUserResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminRemoveRoleFromUserResponseToJson(this);

  @JsonKey(name: 'roles', defaultValue: <RoleDto>[])
  final List<RoleDto> roles;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRemoveRoleFromUserResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRemoveRoleFromUserResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminRemoveRoleFromUserResponseExtension
    on AdminRemoveRoleFromUserResponse {
  AdminRemoveRoleFromUserResponse copyWith({
    List<RoleDto>? roles,
    bool? isSuccess,
  }) {
    return AdminRemoveRoleFromUserResponse(
      roles: roles ?? this.roles,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminRemoveRoleFromUserResponse copyWithWrapped({
    Wrapped<List<RoleDto>>? roles,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminRemoveRoleFromUserResponse(
      roles: (roles != null ? roles.value : this.roles),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResendOtpRequest {
  const AdminResendOtpRequest({required this.email, required this.purpose});

  factory AdminResendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminResendOtpRequestFromJson(json);

  static const toJsonFactory = _$AdminResendOtpRequestToJson;
  Map<String, dynamic> toJson() => _$AdminResendOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$AdminResendOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResendOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $AdminResendOtpRequestExtension on AdminResendOtpRequest {
  AdminResendOtpRequest copyWith({String? email, String? purpose}) {
    return AdminResendOtpRequest(
      email: email ?? this.email,
      purpose: purpose ?? this.purpose,
    );
  }

  AdminResendOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? purpose,
  }) {
    return AdminResendOtpRequest(
      email: (email != null ? email.value : this.email),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResendOtpResponse {
  const AdminResendOtpResponse({required this.isSuccess});

  factory AdminResendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminResendOtpResponseFromJson(json);

  static const toJsonFactory = _$AdminResendOtpResponseToJson;
  Map<String, dynamic> toJson() => _$AdminResendOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminResendOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResendOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminResendOtpResponseExtension on AdminResendOtpResponse {
  AdminResendOtpResponse copyWith({bool? isSuccess}) {
    return AdminResendOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminResendOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminResendOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResetPasswordRequest {
  const AdminResetPasswordRequest({
    required this.email,
    required this.code,
    required this.newPassword,
  });

  factory AdminResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminResetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminResetPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$AdminResetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResetPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $AdminResetPasswordRequestExtension on AdminResetPasswordRequest {
  AdminResetPasswordRequest copyWith({
    String? email,
    String? code,
    String? newPassword,
  }) {
    return AdminResetPasswordRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  AdminResetPasswordRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? newPassword,
  }) {
    return AdminResetPasswordRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResetPasswordResponse {
  const AdminResetPasswordResponse({required this.isSuccess});

  factory AdminResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminResetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminResetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminResetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminResetPasswordResponseExtension on AdminResetPasswordResponse {
  AdminResetPasswordResponse copyWith({bool? isSuccess}) {
    return AdminResetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminResetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminResetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRestorePermissionResponse {
  const AdminRestorePermissionResponse({required this.permission});

  factory AdminRestorePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRestorePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminRestorePermissionResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRestorePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminRestorePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRestorePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminRestorePermissionResponseExtension
    on AdminRestorePermissionResponse {
  AdminRestorePermissionResponse copyWith({PermissionDto? permission}) {
    return AdminRestorePermissionResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminRestorePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminRestorePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRestoreRoleResponse {
  const AdminRestoreRoleResponse({required this.role});

  factory AdminRestoreRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRestoreRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminRestoreRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRestoreRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  static const fromJsonFactory = _$AdminRestoreRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRestoreRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminRestoreRoleResponseExtension on AdminRestoreRoleResponse {
  AdminRestoreRoleResponse copyWith({RoleDto? role}) {
    return AdminRestoreRoleResponse(role: role ?? this.role);
  }

  AdminRestoreRoleResponse copyWithWrapped({Wrapped<RoleDto>? role}) {
    return AdminRestoreRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRevokeSessionResponse {
  const AdminRevokeSessionResponse({required this.isSuccess});

  factory AdminRevokeSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRevokeSessionResponseFromJson(json);

  static const toJsonFactory = _$AdminRevokeSessionResponseToJson;
  Map<String, dynamic> toJson() => _$AdminRevokeSessionResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminRevokeSessionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminRevokeSessionResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminRevokeSessionResponseExtension on AdminRevokeSessionResponse {
  AdminRevokeSessionResponse copyWith({bool? isSuccess}) {
    return AdminRevokeSessionResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminRevokeSessionResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminRevokeSessionResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminScheduleShootRequest {
  const AdminScheduleShootRequest({required this.shootingScheduledAt});

  factory AdminScheduleShootRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminScheduleShootRequestFromJson(json);

  static const toJsonFactory = _$AdminScheduleShootRequestToJson;
  Map<String, dynamic> toJson() => _$AdminScheduleShootRequestToJson(this);

  @JsonKey(name: 'shootingScheduledAt')
  final DateTime shootingScheduledAt;
  static const fromJsonFactory = _$AdminScheduleShootRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminScheduleShootRequest &&
            (identical(other.shootingScheduledAt, shootingScheduledAt) ||
                const DeepCollectionEquality().equals(
                  other.shootingScheduledAt,
                  shootingScheduledAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shootingScheduledAt) ^
      runtimeType.hashCode;
}

extension $AdminScheduleShootRequestExtension on AdminScheduleShootRequest {
  AdminScheduleShootRequest copyWith({DateTime? shootingScheduledAt}) {
    return AdminScheduleShootRequest(
      shootingScheduledAt: shootingScheduledAt ?? this.shootingScheduledAt,
    );
  }

  AdminScheduleShootRequest copyWithWrapped({
    Wrapped<DateTime>? shootingScheduledAt,
  }) {
    return AdminScheduleShootRequest(
      shootingScheduledAt: (shootingScheduledAt != null
          ? shootingScheduledAt.value
          : this.shootingScheduledAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminScheduleShootResponse {
  const AdminScheduleShootResponse({required this.isSuccess});

  factory AdminScheduleShootResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminScheduleShootResponseFromJson(json);

  static const toJsonFactory = _$AdminScheduleShootResponseToJson;
  Map<String, dynamic> toJson() => _$AdminScheduleShootResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminScheduleShootResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminScheduleShootResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminScheduleShootResponseExtension on AdminScheduleShootResponse {
  AdminScheduleShootResponse copyWith({bool? isSuccess}) {
    return AdminScheduleShootResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminScheduleShootResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminScheduleShootResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutFromAllDevicesResponse {
  const AdminSignOutFromAllDevicesResponse({required this.isSuccess});

  factory AdminSignOutFromAllDevicesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminSignOutFromAllDevicesResponseFromJson(json);

  static const toJsonFactory = _$AdminSignOutFromAllDevicesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminSignOutFromAllDevicesResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSignOutFromAllDevicesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutFromAllDevicesResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSignOutFromAllDevicesResponseExtension
    on AdminSignOutFromAllDevicesResponse {
  AdminSignOutFromAllDevicesResponse copyWith({bool? isSuccess}) {
    return AdminSignOutFromAllDevicesResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminSignOutFromAllDevicesResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return AdminSignOutFromAllDevicesResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutRequest {
  const AdminSignOutRequest({this.refreshToken});

  factory AdminSignOutRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSignOutRequestFromJson(json);

  static const toJsonFactory = _$AdminSignOutRequestToJson;
  Map<String, dynamic> toJson() => _$AdminSignOutRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  static const fromJsonFactory = _$AdminSignOutRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $AdminSignOutRequestExtension on AdminSignOutRequest {
  AdminSignOutRequest copyWith({String? refreshToken}) {
    return AdminSignOutRequest(refreshToken: refreshToken ?? this.refreshToken);
  }

  AdminSignOutRequest copyWithWrapped({Wrapped<String?>? refreshToken}) {
    return AdminSignOutRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutResponse {
  const AdminSignOutResponse({required this.isSuccess});

  factory AdminSignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSignOutResponseFromJson(json);

  static const toJsonFactory = _$AdminSignOutResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSignOutResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSignOutResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSignOutResponseExtension on AdminSignOutResponse {
  AdminSignOutResponse copyWith({bool? isSuccess}) {
    return AdminSignOutResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminSignOutResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminSignOutResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSoftDeletePermissionResponse {
  const AdminSoftDeletePermissionResponse({
    required this.permission,
    required this.isSuccess,
  });

  factory AdminSoftDeletePermissionResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminSoftDeletePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminSoftDeletePermissionResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminSoftDeletePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSoftDeletePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSoftDeletePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminSoftDeletePermissionResponseExtension
    on AdminSoftDeletePermissionResponse {
  AdminSoftDeletePermissionResponse copyWith({
    PermissionDto? permission,
    bool? isSuccess,
  }) {
    return AdminSoftDeletePermissionResponse(
      permission: permission ?? this.permission,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminSoftDeletePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminSoftDeletePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSoftDeleteRoleResponse {
  const AdminSoftDeleteRoleResponse({
    required this.role,
    required this.isSuccess,
  });

  factory AdminSoftDeleteRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSoftDeleteRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminSoftDeleteRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSoftDeleteRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSoftDeleteRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSoftDeleteRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      runtimeType.hashCode;
}

extension $AdminSoftDeleteRoleResponseExtension on AdminSoftDeleteRoleResponse {
  AdminSoftDeleteRoleResponse copyWith({RoleDto? role, bool? isSuccess}) {
    return AdminSoftDeleteRoleResponse(
      role: role ?? this.role,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminSoftDeleteRoleResponse copyWithWrapped({
    Wrapped<RoleDto>? role,
    Wrapped<bool>? isSuccess,
  }) {
    return AdminSoftDeleteRoleResponse(
      role: (role != null ? role.value : this.role),
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSubmitArticleResponse {
  const AdminSubmitArticleResponse({required this.isSuccess});

  factory AdminSubmitArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSubmitArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminSubmitArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSubmitArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSubmitArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSubmitArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSubmitArticleResponseExtension on AdminSubmitArticleResponse {
  AdminSubmitArticleResponse copyWith({bool? isSuccess}) {
    return AdminSubmitArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminSubmitArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminSubmitArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSubmitOrderResponse {
  const AdminSubmitOrderResponse({required this.isSuccess});

  factory AdminSubmitOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSubmitOrderResponseFromJson(json);

  static const toJsonFactory = _$AdminSubmitOrderResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSubmitOrderResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSubmitOrderResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSubmitOrderResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSubmitOrderResponseExtension on AdminSubmitOrderResponse {
  AdminSubmitOrderResponse copyWith({bool? isSuccess}) {
    return AdminSubmitOrderResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminSubmitOrderResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminSubmitOrderResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSubmitVideoResponse {
  const AdminSubmitVideoResponse({required this.isSuccess});

  factory AdminSubmitVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSubmitVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminSubmitVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSubmitVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSubmitVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSubmitVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSubmitVideoResponseExtension on AdminSubmitVideoResponse {
  AdminSubmitVideoResponse copyWith({bool? isSuccess}) {
    return AdminSubmitVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminSubmitVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminSubmitVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleRequest {
  const AdminUpdateArticleRequest({
    required this.categoryId,
    required this.title,
    required this.slug,
    required this.headline,
    required this.body,
    this.coverImageUrl,
    this.customerId,
    this.orderItemId,
    required this.socialBoost,
    required this.isFeatured,
    this.featuredUntil,
    this.metaTitle,
    this.metaDescription,
  });

  factory AdminUpdateArticleRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleRequestToJson(this);

  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'headline')
  final String headline;
  @JsonKey(name: 'body')
  final String body;
  @JsonKey(name: 'coverImageUrl')
  final String? coverImageUrl;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'orderItemId')
  final String? orderItemId;
  @JsonKey(name: 'socialBoost')
  final bool socialBoost;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'featuredUntil')
  final DateTime? featuredUntil;
  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  static const fromJsonFactory = _$AdminUpdateArticleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.headline, headline) ||
                const DeepCollectionEquality().equals(
                  other.headline,
                  headline,
                )) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality().equals(
                  other.coverImageUrl,
                  coverImageUrl,
                )) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality().equals(
                  other.customerId,
                  customerId,
                )) &&
            (identical(other.orderItemId, orderItemId) ||
                const DeepCollectionEquality().equals(
                  other.orderItemId,
                  orderItemId,
                )) &&
            (identical(other.socialBoost, socialBoost) ||
                const DeepCollectionEquality().equals(
                  other.socialBoost,
                  socialBoost,
                )) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.featuredUntil, featuredUntil) ||
                const DeepCollectionEquality().equals(
                  other.featuredUntil,
                  featuredUntil,
                )) &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(headline) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(orderItemId) ^
      const DeepCollectionEquality().hash(socialBoost) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(featuredUntil) ^
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      runtimeType.hashCode;
}

extension $AdminUpdateArticleRequestExtension on AdminUpdateArticleRequest {
  AdminUpdateArticleRequest copyWith({
    String? categoryId,
    String? title,
    String? slug,
    String? headline,
    String? body,
    String? coverImageUrl,
    String? customerId,
    String? orderItemId,
    bool? socialBoost,
    bool? isFeatured,
    DateTime? featuredUntil,
    String? metaTitle,
    String? metaDescription,
  }) {
    return AdminUpdateArticleRequest(
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      headline: headline ?? this.headline,
      body: body ?? this.body,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      customerId: customerId ?? this.customerId,
      orderItemId: orderItemId ?? this.orderItemId,
      socialBoost: socialBoost ?? this.socialBoost,
      isFeatured: isFeatured ?? this.isFeatured,
      featuredUntil: featuredUntil ?? this.featuredUntil,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
    );
  }

  AdminUpdateArticleRequest copyWithWrapped({
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String>? headline,
    Wrapped<String>? body,
    Wrapped<String?>? coverImageUrl,
    Wrapped<String?>? customerId,
    Wrapped<String?>? orderItemId,
    Wrapped<bool>? socialBoost,
    Wrapped<bool>? isFeatured,
    Wrapped<DateTime?>? featuredUntil,
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
  }) {
    return AdminUpdateArticleRequest(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      headline: (headline != null ? headline.value : this.headline),
      body: (body != null ? body.value : this.body),
      coverImageUrl: (coverImageUrl != null
          ? coverImageUrl.value
          : this.coverImageUrl),
      customerId: (customerId != null ? customerId.value : this.customerId),
      orderItemId: (orderItemId != null ? orderItemId.value : this.orderItemId),
      socialBoost: (socialBoost != null ? socialBoost.value : this.socialBoost),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      featuredUntil: (featuredUntil != null
          ? featuredUntil.value
          : this.featuredUntil),
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleResponse {
  const AdminUpdateArticleResponse({required this.article});

  factory AdminUpdateArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleResponseToJson(this);

  @JsonKey(name: 'article')
  final ArticleDetailDto article;
  static const fromJsonFactory = _$AdminUpdateArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleResponse &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(article) ^ runtimeType.hashCode;
}

extension $AdminUpdateArticleResponseExtension on AdminUpdateArticleResponse {
  AdminUpdateArticleResponse copyWith({ArticleDetailDto? article}) {
    return AdminUpdateArticleResponse(article: article ?? this.article);
  }

  AdminUpdateArticleResponse copyWithWrapped({
    Wrapped<ArticleDetailDto>? article,
  }) {
    return AdminUpdateArticleResponse(
      article: (article != null ? article.value : this.article),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleSeoRequest {
  const AdminUpdateArticleSeoRequest({this.metaTitle, this.metaDescription});

  factory AdminUpdateArticleSeoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleSeoRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleSeoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleSeoRequestToJson(this);

  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  static const fromJsonFactory = _$AdminUpdateArticleSeoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleSeoRequest &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      runtimeType.hashCode;
}

extension $AdminUpdateArticleSeoRequestExtension
    on AdminUpdateArticleSeoRequest {
  AdminUpdateArticleSeoRequest copyWith({
    String? metaTitle,
    String? metaDescription,
  }) {
    return AdminUpdateArticleSeoRequest(
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
    );
  }

  AdminUpdateArticleSeoRequest copyWithWrapped({
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
  }) {
    return AdminUpdateArticleSeoRequest(
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleSeoResponse {
  const AdminUpdateArticleSeoResponse({required this.article});

  factory AdminUpdateArticleSeoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleSeoResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleSeoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleSeoResponseToJson(this);

  @JsonKey(name: 'article')
  final ArticleDetailDto article;
  static const fromJsonFactory = _$AdminUpdateArticleSeoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleSeoResponse &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(article) ^ runtimeType.hashCode;
}

extension $AdminUpdateArticleSeoResponseExtension
    on AdminUpdateArticleSeoResponse {
  AdminUpdateArticleSeoResponse copyWith({ArticleDetailDto? article}) {
    return AdminUpdateArticleSeoResponse(article: article ?? this.article);
  }

  AdminUpdateArticleSeoResponse copyWithWrapped({
    Wrapped<ArticleDetailDto>? article,
  }) {
    return AdminUpdateArticleSeoResponse(
      article: (article != null ? article.value : this.article),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleTagsRequest {
  const AdminUpdateArticleTagsRequest({required this.tagIds});

  factory AdminUpdateArticleTagsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleTagsRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleTagsRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleTagsRequestToJson(this);

  @JsonKey(name: 'tagIds', defaultValue: <String>[])
  final List<String> tagIds;
  static const fromJsonFactory = _$AdminUpdateArticleTagsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleTagsRequest &&
            (identical(other.tagIds, tagIds) ||
                const DeepCollectionEquality().equals(other.tagIds, tagIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagIds) ^ runtimeType.hashCode;
}

extension $AdminUpdateArticleTagsRequestExtension
    on AdminUpdateArticleTagsRequest {
  AdminUpdateArticleTagsRequest copyWith({List<String>? tagIds}) {
    return AdminUpdateArticleTagsRequest(tagIds: tagIds ?? this.tagIds);
  }

  AdminUpdateArticleTagsRequest copyWithWrapped({
    Wrapped<List<String>>? tagIds,
  }) {
    return AdminUpdateArticleTagsRequest(
      tagIds: (tagIds != null ? tagIds.value : this.tagIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateArticleTagsResponse {
  const AdminUpdateArticleTagsResponse({required this.isSuccess});

  factory AdminUpdateArticleTagsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateArticleTagsResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateArticleTagsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateArticleTagsResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminUpdateArticleTagsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateArticleTagsResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminUpdateArticleTagsResponseExtension
    on AdminUpdateArticleTagsResponse {
  AdminUpdateArticleTagsResponse copyWith({bool? isSuccess}) {
    return AdminUpdateArticleTagsResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminUpdateArticleTagsResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminUpdateArticleTagsResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateAvatarResponse {
  const AdminUpdateAvatarResponse({required this.user});

  factory AdminUpdateAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateAvatarResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateAvatarResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateAvatarResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminUpdateAvatarResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateAvatarResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminUpdateAvatarResponseExtension on AdminUpdateAvatarResponse {
  AdminUpdateAvatarResponse copyWith({UserResponseDto? user}) {
    return AdminUpdateAvatarResponse(user: user ?? this.user);
  }

  AdminUpdateAvatarResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminUpdateAvatarResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCategoryPricingRequest {
  const AdminUpdateCategoryPricingRequest({required this.priceUsd});

  factory AdminUpdateCategoryPricingRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdateCategoryPricingRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateCategoryPricingRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUpdateCategoryPricingRequestToJson(this);

  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  static const fromJsonFactory = _$AdminUpdateCategoryPricingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCategoryPricingRequest &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(priceUsd) ^ runtimeType.hashCode;
}

extension $AdminUpdateCategoryPricingRequestExtension
    on AdminUpdateCategoryPricingRequest {
  AdminUpdateCategoryPricingRequest copyWith({double? priceUsd}) {
    return AdminUpdateCategoryPricingRequest(
      priceUsd: priceUsd ?? this.priceUsd,
    );
  }

  AdminUpdateCategoryPricingRequest copyWithWrapped({
    Wrapped<double>? priceUsd,
  }) {
    return AdminUpdateCategoryPricingRequest(
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCategoryPricingResponse {
  const AdminUpdateCategoryPricingResponse({required this.pricing});

  factory AdminUpdateCategoryPricingResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdateCategoryPricingResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateCategoryPricingResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUpdateCategoryPricingResponseToJson(this);

  @JsonKey(name: 'pricing')
  final CategoryPricingDto pricing;
  static const fromJsonFactory = _$AdminUpdateCategoryPricingResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCategoryPricingResponse &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality().equals(other.pricing, pricing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricing) ^ runtimeType.hashCode;
}

extension $AdminUpdateCategoryPricingResponseExtension
    on AdminUpdateCategoryPricingResponse {
  AdminUpdateCategoryPricingResponse copyWith({CategoryPricingDto? pricing}) {
    return AdminUpdateCategoryPricingResponse(pricing: pricing ?? this.pricing);
  }

  AdminUpdateCategoryPricingResponse copyWithWrapped({
    Wrapped<CategoryPricingDto>? pricing,
  }) {
    return AdminUpdateCategoryPricingResponse(
      pricing: (pricing != null ? pricing.value : this.pricing),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCategoryRequest {
  const AdminUpdateCategoryRequest({
    required this.name,
    required this.slug,
    this.description,
  });

  factory AdminUpdateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateCategoryRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateCategoryRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateCategoryRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AdminUpdateCategoryRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCategoryRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminUpdateCategoryRequestExtension on AdminUpdateCategoryRequest {
  AdminUpdateCategoryRequest copyWith({
    String? name,
    String? slug,
    String? description,
  }) {
    return AdminUpdateCategoryRequest(
      name: name ?? this.name,
      slug: slug ?? this.slug,
      description: description ?? this.description,
    );
  }

  AdminUpdateCategoryRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? slug,
    Wrapped<String?>? description,
  }) {
    return AdminUpdateCategoryRequest(
      name: (name != null ? name.value : this.name),
      slug: (slug != null ? slug.value : this.slug),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCategoryResponse {
  const AdminUpdateCategoryResponse({required this.category});

  factory AdminUpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateCategoryResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateCategoryResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateCategoryResponseToJson(this);

  @JsonKey(name: 'category')
  final CategoryDto category;
  static const fromJsonFactory = _$AdminUpdateCategoryResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCategoryResponse &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $AdminUpdateCategoryResponseExtension on AdminUpdateCategoryResponse {
  AdminUpdateCategoryResponse copyWith({CategoryDto? category}) {
    return AdminUpdateCategoryResponse(category: category ?? this.category);
  }

  AdminUpdateCategoryResponse copyWithWrapped({
    Wrapped<CategoryDto>? category,
  }) {
    return AdminUpdateCategoryResponse(
      category: (category != null ? category.value : this.category),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateContentTypeRequest {
  const AdminUpdateContentTypeRequest({required this.name});

  factory AdminUpdateContentTypeRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateContentTypeRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateContentTypeRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateContentTypeRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$AdminUpdateContentTypeRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateContentTypeRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $AdminUpdateContentTypeRequestExtension
    on AdminUpdateContentTypeRequest {
  AdminUpdateContentTypeRequest copyWith({String? name}) {
    return AdminUpdateContentTypeRequest(name: name ?? this.name);
  }

  AdminUpdateContentTypeRequest copyWithWrapped({Wrapped<String>? name}) {
    return AdminUpdateContentTypeRequest(
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateContentTypeResponse {
  const AdminUpdateContentTypeResponse({required this.contentType});

  factory AdminUpdateContentTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateContentTypeResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateContentTypeResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateContentTypeResponseToJson(this);

  @JsonKey(name: 'contentType')
  final ContentTypeDto contentType;
  static const fromJsonFactory = _$AdminUpdateContentTypeResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateContentTypeResponse &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentType) ^ runtimeType.hashCode;
}

extension $AdminUpdateContentTypeResponseExtension
    on AdminUpdateContentTypeResponse {
  AdminUpdateContentTypeResponse copyWith({ContentTypeDto? contentType}) {
    return AdminUpdateContentTypeResponse(
      contentType: contentType ?? this.contentType,
    );
  }

  AdminUpdateContentTypeResponse copyWithWrapped({
    Wrapped<ContentTypeDto>? contentType,
  }) {
    return AdminUpdateContentTypeResponse(
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCustomerRequest {
  const AdminUpdateCustomerRequest({
    required this.fullName,
    this.phone,
    this.company,
    this.notes,
  });

  factory AdminUpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateCustomerRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateCustomerRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateCustomerRequestToJson(this);

  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'company')
  final String? company;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$AdminUpdateCustomerRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCustomerRequest &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality().equals(
                  other.fullName,
                  fullName,
                )) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(
                  other.company,
                  company,
                )) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $AdminUpdateCustomerRequestExtension on AdminUpdateCustomerRequest {
  AdminUpdateCustomerRequest copyWith({
    String? fullName,
    String? phone,
    String? company,
    String? notes,
  }) {
    return AdminUpdateCustomerRequest(
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      company: company ?? this.company,
      notes: notes ?? this.notes,
    );
  }

  AdminUpdateCustomerRequest copyWithWrapped({
    Wrapped<String>? fullName,
    Wrapped<String?>? phone,
    Wrapped<String?>? company,
    Wrapped<String?>? notes,
  }) {
    return AdminUpdateCustomerRequest(
      fullName: (fullName != null ? fullName.value : this.fullName),
      phone: (phone != null ? phone.value : this.phone),
      company: (company != null ? company.value : this.company),
      notes: (notes != null ? notes.value : this.notes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateCustomerResponse {
  const AdminUpdateCustomerResponse({required this.customer});

  factory AdminUpdateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateCustomerResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateCustomerResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateCustomerResponseToJson(this);

  @JsonKey(name: 'customer')
  final CustomerDto customer;
  static const fromJsonFactory = _$AdminUpdateCustomerResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateCustomerResponse &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality().equals(
                  other.customer,
                  customer,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customer) ^ runtimeType.hashCode;
}

extension $AdminUpdateCustomerResponseExtension on AdminUpdateCustomerResponse {
  AdminUpdateCustomerResponse copyWith({CustomerDto? customer}) {
    return AdminUpdateCustomerResponse(customer: customer ?? this.customer);
  }

  AdminUpdateCustomerResponse copyWithWrapped({
    Wrapped<CustomerDto>? customer,
  }) {
    return AdminUpdateCustomerResponse(
      customer: (customer != null ? customer.value : this.customer),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateLyricsRequest {
  const AdminUpdateLyricsRequest({required this.lyricsText});

  factory AdminUpdateLyricsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateLyricsRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateLyricsRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateLyricsRequestToJson(this);

  @JsonKey(name: 'lyricsText')
  final String lyricsText;
  static const fromJsonFactory = _$AdminUpdateLyricsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateLyricsRequest &&
            (identical(other.lyricsText, lyricsText) ||
                const DeepCollectionEquality().equals(
                  other.lyricsText,
                  lyricsText,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyricsText) ^ runtimeType.hashCode;
}

extension $AdminUpdateLyricsRequestExtension on AdminUpdateLyricsRequest {
  AdminUpdateLyricsRequest copyWith({String? lyricsText}) {
    return AdminUpdateLyricsRequest(lyricsText: lyricsText ?? this.lyricsText);
  }

  AdminUpdateLyricsRequest copyWithWrapped({Wrapped<String>? lyricsText}) {
    return AdminUpdateLyricsRequest(
      lyricsText: (lyricsText != null ? lyricsText.value : this.lyricsText),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateLyricsResponse {
  const AdminUpdateLyricsResponse({required this.lyrics});

  factory AdminUpdateLyricsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateLyricsResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateLyricsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateLyricsResponseToJson(this);

  @JsonKey(name: 'lyrics')
  final LyricsDto lyrics;
  static const fromJsonFactory = _$AdminUpdateLyricsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateLyricsResponse &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyrics) ^ runtimeType.hashCode;
}

extension $AdminUpdateLyricsResponseExtension on AdminUpdateLyricsResponse {
  AdminUpdateLyricsResponse copyWith({LyricsDto? lyrics}) {
    return AdminUpdateLyricsResponse(lyrics: lyrics ?? this.lyrics);
  }

  AdminUpdateLyricsResponse copyWithWrapped({Wrapped<LyricsDto>? lyrics}) {
    return AdminUpdateLyricsResponse(
      lyrics: (lyrics != null ? lyrics.value : this.lyrics),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateLyricsSeoRequest {
  const AdminUpdateLyricsSeoRequest({
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.structuredData,
  });

  factory AdminUpdateLyricsSeoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateLyricsSeoRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateLyricsSeoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateLyricsSeoRequestToJson(this);

  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  @JsonKey(name: 'metaKeywords')
  final String? metaKeywords;
  @JsonKey(name: 'structuredData')
  final String? structuredData;
  static const fromJsonFactory = _$AdminUpdateLyricsSeoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateLyricsSeoRequest &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )) &&
            (identical(other.metaKeywords, metaKeywords) ||
                const DeepCollectionEquality().equals(
                  other.metaKeywords,
                  metaKeywords,
                )) &&
            (identical(other.structuredData, structuredData) ||
                const DeepCollectionEquality().equals(
                  other.structuredData,
                  structuredData,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      const DeepCollectionEquality().hash(metaKeywords) ^
      const DeepCollectionEquality().hash(structuredData) ^
      runtimeType.hashCode;
}

extension $AdminUpdateLyricsSeoRequestExtension on AdminUpdateLyricsSeoRequest {
  AdminUpdateLyricsSeoRequest copyWith({
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
    String? structuredData,
  }) {
    return AdminUpdateLyricsSeoRequest(
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
      metaKeywords: metaKeywords ?? this.metaKeywords,
      structuredData: structuredData ?? this.structuredData,
    );
  }

  AdminUpdateLyricsSeoRequest copyWithWrapped({
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
    Wrapped<String?>? metaKeywords,
    Wrapped<String?>? structuredData,
  }) {
    return AdminUpdateLyricsSeoRequest(
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
      metaKeywords: (metaKeywords != null
          ? metaKeywords.value
          : this.metaKeywords),
      structuredData: (structuredData != null
          ? structuredData.value
          : this.structuredData),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateLyricsSeoResponse {
  const AdminUpdateLyricsSeoResponse({required this.lyrics});

  factory AdminUpdateLyricsSeoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateLyricsSeoResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateLyricsSeoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateLyricsSeoResponseToJson(this);

  @JsonKey(name: 'lyrics')
  final LyricsDto lyrics;
  static const fromJsonFactory = _$AdminUpdateLyricsSeoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateLyricsSeoResponse &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyrics) ^ runtimeType.hashCode;
}

extension $AdminUpdateLyricsSeoResponseExtension
    on AdminUpdateLyricsSeoResponse {
  AdminUpdateLyricsSeoResponse copyWith({LyricsDto? lyrics}) {
    return AdminUpdateLyricsSeoResponse(lyrics: lyrics ?? this.lyrics);
  }

  AdminUpdateLyricsSeoResponse copyWithWrapped({Wrapped<LyricsDto>? lyrics}) {
    return AdminUpdateLyricsSeoResponse(
      lyrics: (lyrics != null ? lyrics.value : this.lyrics),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateOwnProfileRequest {
  const AdminUpdateOwnProfileRequest({
    this.userName,
    this.countryName,
    this.partialPhoneNumber,
    this.countryIsoCode,
    this.countryDialCode,
  });

  factory AdminUpdateOwnProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateOwnProfileRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateOwnProfileRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateOwnProfileRequestToJson(this);

  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  static const fromJsonFactory = _$AdminUpdateOwnProfileRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateOwnProfileRequest &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      runtimeType.hashCode;
}

extension $AdminUpdateOwnProfileRequestExtension
    on AdminUpdateOwnProfileRequest {
  AdminUpdateOwnProfileRequest copyWith({
    String? userName,
    String? countryName,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  AdminUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateOwnProfileResponse {
  const AdminUpdateOwnProfileResponse({required this.user});

  factory AdminUpdateOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminUpdateOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminUpdateOwnProfileResponseExtension
    on AdminUpdateOwnProfileResponse {
  AdminUpdateOwnProfileResponse copyWith({UserResponseDto? user}) {
    return AdminUpdateOwnProfileResponse(user: user ?? this.user);
  }

  AdminUpdateOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return AdminUpdateOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePermissionRequest {
  const AdminUpdatePermissionRequest({
    this.resource,
    this.action,
    this.description,
  });

  factory AdminUpdatePermissionRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdatePermissionRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdatePermissionRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdatePermissionRequestToJson(this);

  @JsonKey(name: 'resource')
  final String? resource;
  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AdminUpdatePermissionRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePermissionRequest &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality().equals(
                  other.resource,
                  resource,
                )) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(resource) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminUpdatePermissionRequestExtension
    on AdminUpdatePermissionRequest {
  AdminUpdatePermissionRequest copyWith({
    String? resource,
    String? action,
    String? description,
  }) {
    return AdminUpdatePermissionRequest(
      resource: resource ?? this.resource,
      action: action ?? this.action,
      description: description ?? this.description,
    );
  }

  AdminUpdatePermissionRequest copyWithWrapped({
    Wrapped<String?>? resource,
    Wrapped<String?>? action,
    Wrapped<String?>? description,
  }) {
    return AdminUpdatePermissionRequest(
      resource: (resource != null ? resource.value : this.resource),
      action: (action != null ? action.value : this.action),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePermissionResponse {
  const AdminUpdatePermissionResponse({required this.permission});

  factory AdminUpdatePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdatePermissionResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdatePermissionResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdatePermissionResponseToJson(this);

  @JsonKey(name: 'permission')
  final PermissionDto permission;
  static const fromJsonFactory = _$AdminUpdatePermissionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePermissionResponse &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality().equals(
                  other.permission,
                  permission,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permission) ^ runtimeType.hashCode;
}

extension $AdminUpdatePermissionResponseExtension
    on AdminUpdatePermissionResponse {
  AdminUpdatePermissionResponse copyWith({PermissionDto? permission}) {
    return AdminUpdatePermissionResponse(
      permission: permission ?? this.permission,
    );
  }

  AdminUpdatePermissionResponse copyWithWrapped({
    Wrapped<PermissionDto>? permission,
  }) {
    return AdminUpdatePermissionResponse(
      permission: (permission != null ? permission.value : this.permission),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePricingTierRequest {
  const AdminUpdatePricingTierRequest({required this.name, this.description});

  factory AdminUpdatePricingTierRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdatePricingTierRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdatePricingTierRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdatePricingTierRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AdminUpdatePricingTierRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePricingTierRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminUpdatePricingTierRequestExtension
    on AdminUpdatePricingTierRequest {
  AdminUpdatePricingTierRequest copyWith({String? name, String? description}) {
    return AdminUpdatePricingTierRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  AdminUpdatePricingTierRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String?>? description,
  }) {
    return AdminUpdatePricingTierRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePricingTierResponse {
  const AdminUpdatePricingTierResponse({required this.pricingTier});

  factory AdminUpdatePricingTierResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdatePricingTierResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdatePricingTierResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdatePricingTierResponseToJson(this);

  @JsonKey(name: 'pricingTier')
  final PricingTierDto pricingTier;
  static const fromJsonFactory = _$AdminUpdatePricingTierResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePricingTierResponse &&
            (identical(other.pricingTier, pricingTier) ||
                const DeepCollectionEquality().equals(
                  other.pricingTier,
                  pricingTier,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pricingTier) ^ runtimeType.hashCode;
}

extension $AdminUpdatePricingTierResponseExtension
    on AdminUpdatePricingTierResponse {
  AdminUpdatePricingTierResponse copyWith({PricingTierDto? pricingTier}) {
    return AdminUpdatePricingTierResponse(
      pricingTier: pricingTier ?? this.pricingTier,
    );
  }

  AdminUpdatePricingTierResponse copyWithWrapped({
    Wrapped<PricingTierDto>? pricingTier,
  }) {
    return AdminUpdatePricingTierResponse(
      pricingTier: (pricingTier != null ? pricingTier.value : this.pricingTier),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePromotionLevelRequest {
  const AdminUpdatePromotionLevelRequest({
    required this.name,
    required this.durationDays,
    required this.priceUsd,
  });

  factory AdminUpdatePromotionLevelRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdatePromotionLevelRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdatePromotionLevelRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUpdatePromotionLevelRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'durationDays')
  final int durationDays;
  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  static const fromJsonFactory = _$AdminUpdatePromotionLevelRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePromotionLevelRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.durationDays, durationDays) ||
                const DeepCollectionEquality().equals(
                  other.durationDays,
                  durationDays,
                )) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(durationDays) ^
      const DeepCollectionEquality().hash(priceUsd) ^
      runtimeType.hashCode;
}

extension $AdminUpdatePromotionLevelRequestExtension
    on AdminUpdatePromotionLevelRequest {
  AdminUpdatePromotionLevelRequest copyWith({
    String? name,
    int? durationDays,
    double? priceUsd,
  }) {
    return AdminUpdatePromotionLevelRequest(
      name: name ?? this.name,
      durationDays: durationDays ?? this.durationDays,
      priceUsd: priceUsd ?? this.priceUsd,
    );
  }

  AdminUpdatePromotionLevelRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<int>? durationDays,
    Wrapped<double>? priceUsd,
  }) {
    return AdminUpdatePromotionLevelRequest(
      name: (name != null ? name.value : this.name),
      durationDays: (durationDays != null
          ? durationDays.value
          : this.durationDays),
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdatePromotionLevelResponse {
  const AdminUpdatePromotionLevelResponse({required this.promotionLevel});

  factory AdminUpdatePromotionLevelResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdatePromotionLevelResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdatePromotionLevelResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUpdatePromotionLevelResponseToJson(this);

  @JsonKey(name: 'promotionLevel')
  final PromotionLevelDto promotionLevel;
  static const fromJsonFactory = _$AdminUpdatePromotionLevelResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdatePromotionLevelResponse &&
            (identical(other.promotionLevel, promotionLevel) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevel,
                  promotionLevel,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevel) ^
      runtimeType.hashCode;
}

extension $AdminUpdatePromotionLevelResponseExtension
    on AdminUpdatePromotionLevelResponse {
  AdminUpdatePromotionLevelResponse copyWith({
    PromotionLevelDto? promotionLevel,
  }) {
    return AdminUpdatePromotionLevelResponse(
      promotionLevel: promotionLevel ?? this.promotionLevel,
    );
  }

  AdminUpdatePromotionLevelResponse copyWithWrapped({
    Wrapped<PromotionLevelDto>? promotionLevel,
  }) {
    return AdminUpdatePromotionLevelResponse(
      promotionLevel: (promotionLevel != null
          ? promotionLevel.value
          : this.promotionLevel),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateRoleRequest {
  const AdminUpdateRoleRequest({this.name, this.description});

  factory AdminUpdateRoleRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateRoleRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateRoleRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateRoleRequestToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$AdminUpdateRoleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateRoleRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $AdminUpdateRoleRequestExtension on AdminUpdateRoleRequest {
  AdminUpdateRoleRequest copyWith({String? name, String? description}) {
    return AdminUpdateRoleRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  AdminUpdateRoleRequest copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? description,
  }) {
    return AdminUpdateRoleRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateRoleResponse {
  const AdminUpdateRoleResponse({required this.role});

  factory AdminUpdateRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateRoleResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateRoleResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateRoleResponseToJson(this);

  @JsonKey(name: 'role')
  final RoleDto role;
  static const fromJsonFactory = _$AdminUpdateRoleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateRoleResponse &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $AdminUpdateRoleResponseExtension on AdminUpdateRoleResponse {
  AdminUpdateRoleResponse copyWith({RoleDto? role}) {
    return AdminUpdateRoleResponse(role: role ?? this.role);
  }

  AdminUpdateRoleResponse copyWithWrapped({Wrapped<RoleDto>? role}) {
    return AdminUpdateRoleResponse(
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoRequest {
  const AdminUpdateVideoRequest({
    required this.categoryId,
    required this.title,
    required this.slug,
    this.description,
    this.customerId,
    this.orderItemId,
    required this.socialBoost,
    required this.isFeatured,
    this.featuredUntil,
    this.metaTitle,
    this.metaDescription,
  });

  factory AdminUpdateVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoRequestToJson(this);

  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'customerId')
  final String? customerId;
  @JsonKey(name: 'orderItemId')
  final String? orderItemId;
  @JsonKey(name: 'socialBoost')
  final bool socialBoost;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'featuredUntil')
  final DateTime? featuredUntil;
  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  static const fromJsonFactory = _$AdminUpdateVideoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoRequest &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality().equals(
                  other.customerId,
                  customerId,
                )) &&
            (identical(other.orderItemId, orderItemId) ||
                const DeepCollectionEquality().equals(
                  other.orderItemId,
                  orderItemId,
                )) &&
            (identical(other.socialBoost, socialBoost) ||
                const DeepCollectionEquality().equals(
                  other.socialBoost,
                  socialBoost,
                )) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.featuredUntil, featuredUntil) ||
                const DeepCollectionEquality().equals(
                  other.featuredUntil,
                  featuredUntil,
                )) &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(orderItemId) ^
      const DeepCollectionEquality().hash(socialBoost) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(featuredUntil) ^
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      runtimeType.hashCode;
}

extension $AdminUpdateVideoRequestExtension on AdminUpdateVideoRequest {
  AdminUpdateVideoRequest copyWith({
    String? categoryId,
    String? title,
    String? slug,
    String? description,
    String? customerId,
    String? orderItemId,
    bool? socialBoost,
    bool? isFeatured,
    DateTime? featuredUntil,
    String? metaTitle,
    String? metaDescription,
  }) {
    return AdminUpdateVideoRequest(
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      customerId: customerId ?? this.customerId,
      orderItemId: orderItemId ?? this.orderItemId,
      socialBoost: socialBoost ?? this.socialBoost,
      isFeatured: isFeatured ?? this.isFeatured,
      featuredUntil: featuredUntil ?? this.featuredUntil,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
    );
  }

  AdminUpdateVideoRequest copyWithWrapped({
    Wrapped<String>? categoryId,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String?>? description,
    Wrapped<String?>? customerId,
    Wrapped<String?>? orderItemId,
    Wrapped<bool>? socialBoost,
    Wrapped<bool>? isFeatured,
    Wrapped<DateTime?>? featuredUntil,
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
  }) {
    return AdminUpdateVideoRequest(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      description: (description != null ? description.value : this.description),
      customerId: (customerId != null ? customerId.value : this.customerId),
      orderItemId: (orderItemId != null ? orderItemId.value : this.orderItemId),
      socialBoost: (socialBoost != null ? socialBoost.value : this.socialBoost),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      featuredUntil: (featuredUntil != null
          ? featuredUntil.value
          : this.featuredUntil),
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoResponse {
  const AdminUpdateVideoResponse({required this.video});

  factory AdminUpdateVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$AdminUpdateVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $AdminUpdateVideoResponseExtension on AdminUpdateVideoResponse {
  AdminUpdateVideoResponse copyWith({VideoDetailDto? video}) {
    return AdminUpdateVideoResponse(video: video ?? this.video);
  }

  AdminUpdateVideoResponse copyWithWrapped({Wrapped<VideoDetailDto>? video}) {
    return AdminUpdateVideoResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoSeoRequest {
  const AdminUpdateVideoSeoRequest({this.metaTitle, this.metaDescription});

  factory AdminUpdateVideoSeoRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoSeoRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoSeoRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoSeoRequestToJson(this);

  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  static const fromJsonFactory = _$AdminUpdateVideoSeoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoSeoRequest &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      runtimeType.hashCode;
}

extension $AdminUpdateVideoSeoRequestExtension on AdminUpdateVideoSeoRequest {
  AdminUpdateVideoSeoRequest copyWith({
    String? metaTitle,
    String? metaDescription,
  }) {
    return AdminUpdateVideoSeoRequest(
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
    );
  }

  AdminUpdateVideoSeoRequest copyWithWrapped({
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
  }) {
    return AdminUpdateVideoSeoRequest(
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoSeoResponse {
  const AdminUpdateVideoSeoResponse({required this.video});

  factory AdminUpdateVideoSeoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoSeoResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoSeoResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoSeoResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$AdminUpdateVideoSeoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoSeoResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $AdminUpdateVideoSeoResponseExtension on AdminUpdateVideoSeoResponse {
  AdminUpdateVideoSeoResponse copyWith({VideoDetailDto? video}) {
    return AdminUpdateVideoSeoResponse(video: video ?? this.video);
  }

  AdminUpdateVideoSeoResponse copyWithWrapped({
    Wrapped<VideoDetailDto>? video,
  }) {
    return AdminUpdateVideoSeoResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoTagsRequest {
  const AdminUpdateVideoTagsRequest({required this.tagIds});

  factory AdminUpdateVideoTagsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoTagsRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoTagsRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoTagsRequestToJson(this);

  @JsonKey(name: 'tagIds', defaultValue: <String>[])
  final List<String> tagIds;
  static const fromJsonFactory = _$AdminUpdateVideoTagsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoTagsRequest &&
            (identical(other.tagIds, tagIds) ||
                const DeepCollectionEquality().equals(other.tagIds, tagIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagIds) ^ runtimeType.hashCode;
}

extension $AdminUpdateVideoTagsRequestExtension on AdminUpdateVideoTagsRequest {
  AdminUpdateVideoTagsRequest copyWith({List<String>? tagIds}) {
    return AdminUpdateVideoTagsRequest(tagIds: tagIds ?? this.tagIds);
  }

  AdminUpdateVideoTagsRequest copyWithWrapped({Wrapped<List<String>>? tagIds}) {
    return AdminUpdateVideoTagsRequest(
      tagIds: (tagIds != null ? tagIds.value : this.tagIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateVideoTagsResponse {
  const AdminUpdateVideoTagsResponse({required this.isSuccess});

  factory AdminUpdateVideoTagsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateVideoTagsResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateVideoTagsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateVideoTagsResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminUpdateVideoTagsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateVideoTagsResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminUpdateVideoTagsResponseExtension
    on AdminUpdateVideoTagsResponse {
  AdminUpdateVideoTagsResponse copyWith({bool? isSuccess}) {
    return AdminUpdateVideoTagsResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminUpdateVideoTagsResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminUpdateVideoTagsResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUploadArticleImageResponse {
  const AdminUploadArticleImageResponse({required this.image});

  factory AdminUploadArticleImageResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUploadArticleImageResponseFromJson(json);

  static const toJsonFactory = _$AdminUploadArticleImageResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUploadArticleImageResponseToJson(this);

  @JsonKey(name: 'image')
  final ArticleImageDto image;
  static const fromJsonFactory = _$AdminUploadArticleImageResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUploadArticleImageResponse &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^ runtimeType.hashCode;
}

extension $AdminUploadArticleImageResponseExtension
    on AdminUploadArticleImageResponse {
  AdminUploadArticleImageResponse copyWith({ArticleImageDto? image}) {
    return AdminUploadArticleImageResponse(image: image ?? this.image);
  }

  AdminUploadArticleImageResponse copyWithWrapped({
    Wrapped<ArticleImageDto>? image,
  }) {
    return AdminUploadArticleImageResponse(
      image: (image != null ? image.value : this.image),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUploadShortVideoThumbnailResponse {
  const AdminUploadShortVideoThumbnailResponse({
    required this.thumbnailUrl,
    required this.thumbnailStorageKey,
  });

  factory AdminUploadShortVideoThumbnailResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUploadShortVideoThumbnailResponseFromJson(json);

  static const toJsonFactory = _$AdminUploadShortVideoThumbnailResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUploadShortVideoThumbnailResponseToJson(this);

  @JsonKey(name: 'thumbnailUrl')
  final String thumbnailUrl;
  @JsonKey(name: 'thumbnailStorageKey')
  final String thumbnailStorageKey;
  static const fromJsonFactory =
      _$AdminUploadShortVideoThumbnailResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUploadShortVideoThumbnailResponse &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.thumbnailStorageKey, thumbnailStorageKey) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailStorageKey,
                  thumbnailStorageKey,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(thumbnailStorageKey) ^
      runtimeType.hashCode;
}

extension $AdminUploadShortVideoThumbnailResponseExtension
    on AdminUploadShortVideoThumbnailResponse {
  AdminUploadShortVideoThumbnailResponse copyWith({
    String? thumbnailUrl,
    String? thumbnailStorageKey,
  }) {
    return AdminUploadShortVideoThumbnailResponse(
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailStorageKey: thumbnailStorageKey ?? this.thumbnailStorageKey,
    );
  }

  AdminUploadShortVideoThumbnailResponse copyWithWrapped({
    Wrapped<String>? thumbnailUrl,
    Wrapped<String>? thumbnailStorageKey,
  }) {
    return AdminUploadShortVideoThumbnailResponse(
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      thumbnailStorageKey: (thumbnailStorageKey != null
          ? thumbnailStorageKey.value
          : this.thumbnailStorageKey),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUploadVideoThumbnailResponse {
  const AdminUploadVideoThumbnailResponse({
    required this.thumbnailUrl,
    required this.thumbnailStorageKey,
  });

  factory AdminUploadVideoThumbnailResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUploadVideoThumbnailResponseFromJson(json);

  static const toJsonFactory = _$AdminUploadVideoThumbnailResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUploadVideoThumbnailResponseToJson(this);

  @JsonKey(name: 'thumbnailUrl')
  final String thumbnailUrl;
  @JsonKey(name: 'thumbnailStorageKey')
  final String thumbnailStorageKey;
  static const fromJsonFactory = _$AdminUploadVideoThumbnailResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUploadVideoThumbnailResponse &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.thumbnailStorageKey, thumbnailStorageKey) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailStorageKey,
                  thumbnailStorageKey,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(thumbnailStorageKey) ^
      runtimeType.hashCode;
}

extension $AdminUploadVideoThumbnailResponseExtension
    on AdminUploadVideoThumbnailResponse {
  AdminUploadVideoThumbnailResponse copyWith({
    String? thumbnailUrl,
    String? thumbnailStorageKey,
  }) {
    return AdminUploadVideoThumbnailResponse(
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailStorageKey: thumbnailStorageKey ?? this.thumbnailStorageKey,
    );
  }

  AdminUploadVideoThumbnailResponse copyWithWrapped({
    Wrapped<String>? thumbnailUrl,
    Wrapped<String>? thumbnailStorageKey,
  }) {
    return AdminUploadVideoThumbnailResponse(
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      thumbnailStorageKey: (thumbnailStorageKey != null
          ? thumbnailStorageKey.value
          : this.thumbnailStorageKey),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyOtpRequest {
  const AdminVerifyOtpRequest({
    required this.email,
    required this.code,
    required this.purpose,
  });

  factory AdminVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyOtpRequestFromJson(json);

  static const toJsonFactory = _$AdminVerifyOtpRequestToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$AdminVerifyOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $AdminVerifyOtpRequestExtension on AdminVerifyOtpRequest {
  AdminVerifyOtpRequest copyWith({
    String? email,
    String? code,
    String? purpose,
  }) {
    return AdminVerifyOtpRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      purpose: purpose ?? this.purpose,
    );
  }

  AdminVerifyOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? purpose,
  }) {
    return AdminVerifyOtpRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyOtpResponse {
  const AdminVerifyOtpResponse({required this.isSuccess});

  factory AdminVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyOtpResponseFromJson(json);

  static const toJsonFactory = _$AdminVerifyOtpResponseToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminVerifyOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminVerifyOtpResponseExtension on AdminVerifyOtpResponse {
  AdminVerifyOtpResponse copyWith({bool? isSuccess}) {
    return AdminVerifyOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminVerifyOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminVerifyOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyPaymentRequest {
  const AdminVerifyPaymentRequest({required this.receiptUrl});

  factory AdminVerifyPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyPaymentRequestFromJson(json);

  static const toJsonFactory = _$AdminVerifyPaymentRequestToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyPaymentRequestToJson(this);

  @JsonKey(name: 'receiptUrl')
  final String receiptUrl;
  static const fromJsonFactory = _$AdminVerifyPaymentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyPaymentRequest &&
            (identical(other.receiptUrl, receiptUrl) ||
                const DeepCollectionEquality().equals(
                  other.receiptUrl,
                  receiptUrl,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(receiptUrl) ^ runtimeType.hashCode;
}

extension $AdminVerifyPaymentRequestExtension on AdminVerifyPaymentRequest {
  AdminVerifyPaymentRequest copyWith({String? receiptUrl}) {
    return AdminVerifyPaymentRequest(receiptUrl: receiptUrl ?? this.receiptUrl);
  }

  AdminVerifyPaymentRequest copyWithWrapped({Wrapped<String>? receiptUrl}) {
    return AdminVerifyPaymentRequest(
      receiptUrl: (receiptUrl != null ? receiptUrl.value : this.receiptUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyPaymentResponse {
  const AdminVerifyPaymentResponse({required this.isSuccess});

  factory AdminVerifyPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyPaymentResponseFromJson(json);

  static const toJsonFactory = _$AdminVerifyPaymentResponseToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyPaymentResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminVerifyPaymentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyPaymentResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminVerifyPaymentResponseExtension on AdminVerifyPaymentResponse {
  AdminVerifyPaymentResponse copyWith({bool? isSuccess}) {
    return AdminVerifyPaymentResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminVerifyPaymentResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminVerifyPaymentResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleCommentDto {
  const ArticleCommentDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.userId,
    this.body,
    required this.isDeleted,
  });

  factory ArticleCommentDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleCommentDtoFromJson(json);

  static const toJsonFactory = _$ArticleCommentDtoToJson;
  Map<String, dynamic> toJson() => _$ArticleCommentDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'body')
  final String? body;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  static const fromJsonFactory = _$ArticleCommentDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleCommentDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      runtimeType.hashCode;
}

extension $ArticleCommentDtoExtension on ArticleCommentDto {
  ArticleCommentDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? userId,
    String? body,
    bool? isDeleted,
  }) {
    return ArticleCommentDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      userId: userId ?? this.userId,
      body: body ?? this.body,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  ArticleCommentDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? userId,
    Wrapped<String?>? body,
    Wrapped<bool>? isDeleted,
  }) {
    return ArticleCommentDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      body: (body != null ? body.value : this.body),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleCommentDtoPaginatedResult {
  const ArticleCommentDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory ArticleCommentDtoPaginatedResult.fromJson(
    Map<String, dynamic> json,
  ) => _$ArticleCommentDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$ArticleCommentDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() =>
      _$ArticleCommentDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <ArticleCommentDto>[])
  final List<ArticleCommentDto> items;
  static const fromJsonFactory = _$ArticleCommentDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleCommentDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ArticleCommentDtoPaginatedResultExtension
    on ArticleCommentDtoPaginatedResult {
  ArticleCommentDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<ArticleCommentDto>? items,
  }) {
    return ArticleCommentDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  ArticleCommentDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<ArticleCommentDto>>? items,
  }) {
    return ArticleCommentDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleDetailDto {
  const ArticleDetailDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.slug,
    required this.headline,
    required this.body,
    this.coverImageUrl,
    required this.authorId,
    required this.status,
    this.rejectionReason,
    required this.isFeatured,
    this.featuredUntil,
    this.publishedAt,
    this.metaTitle,
    this.metaDescription,
    required this.images,
    required this.tags,
    required this.readTimeInMinutes,
  });

  factory ArticleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailDtoFromJson(json);

  static const toJsonFactory = _$ArticleDetailDtoToJson;
  Map<String, dynamic> toJson() => _$ArticleDetailDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'headline')
  final String headline;
  @JsonKey(name: 'body')
  final String body;
  @JsonKey(name: 'coverImageUrl')
  final String? coverImageUrl;
  @JsonKey(name: 'authorId')
  final String authorId;
  @JsonKey(
    name: 'status',
    toJson: articleDetailDtoStatusToJson,
    fromJson: articleDetailDtoStatusFromJson,
  )
  final enums.ArticleDetailDtoStatus status;
  @JsonKey(name: 'rejectionReason')
  final String? rejectionReason;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'featuredUntil')
  final DateTime? featuredUntil;
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;
  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  @JsonKey(name: 'images', defaultValue: <ArticleImageDto>[])
  final List<ArticleImageDto> images;
  @JsonKey(name: 'tags', defaultValue: <TagDto>[])
  final List<TagDto> tags;
  @JsonKey(name: 'readTimeInMinutes')
  final int readTimeInMinutes;
  static const fromJsonFactory = _$ArticleDetailDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleDetailDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.headline, headline) ||
                const DeepCollectionEquality().equals(
                  other.headline,
                  headline,
                )) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality().equals(
                  other.coverImageUrl,
                  coverImageUrl,
                )) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality().equals(
                  other.authorId,
                  authorId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.rejectionReason, rejectionReason) ||
                const DeepCollectionEquality().equals(
                  other.rejectionReason,
                  rejectionReason,
                )) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.featuredUntil, featuredUntil) ||
                const DeepCollectionEquality().equals(
                  other.featuredUntil,
                  featuredUntil,
                )) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality().equals(
                  other.publishedAt,
                  publishedAt,
                )) &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.readTimeInMinutes, readTimeInMinutes) ||
                const DeepCollectionEquality().equals(
                  other.readTimeInMinutes,
                  readTimeInMinutes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(headline) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(rejectionReason) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(featuredUntil) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(readTimeInMinutes) ^
      runtimeType.hashCode;
}

extension $ArticleDetailDtoExtension on ArticleDetailDto {
  ArticleDetailDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? categoryId,
    String? categoryName,
    String? title,
    String? slug,
    String? headline,
    String? body,
    String? coverImageUrl,
    String? authorId,
    enums.ArticleDetailDtoStatus? status,
    String? rejectionReason,
    bool? isFeatured,
    DateTime? featuredUntil,
    DateTime? publishedAt,
    String? metaTitle,
    String? metaDescription,
    List<ArticleImageDto>? images,
    List<TagDto>? tags,
    int? readTimeInMinutes,
  }) {
    return ArticleDetailDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      headline: headline ?? this.headline,
      body: body ?? this.body,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      authorId: authorId ?? this.authorId,
      status: status ?? this.status,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      isFeatured: isFeatured ?? this.isFeatured,
      featuredUntil: featuredUntil ?? this.featuredUntil,
      publishedAt: publishedAt ?? this.publishedAt,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
      images: images ?? this.images,
      tags: tags ?? this.tags,
      readTimeInMinutes: readTimeInMinutes ?? this.readTimeInMinutes,
    );
  }

  ArticleDetailDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? categoryId,
    Wrapped<String>? categoryName,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String>? headline,
    Wrapped<String>? body,
    Wrapped<String?>? coverImageUrl,
    Wrapped<String>? authorId,
    Wrapped<enums.ArticleDetailDtoStatus>? status,
    Wrapped<String?>? rejectionReason,
    Wrapped<bool>? isFeatured,
    Wrapped<DateTime?>? featuredUntil,
    Wrapped<DateTime?>? publishedAt,
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
    Wrapped<List<ArticleImageDto>>? images,
    Wrapped<List<TagDto>>? tags,
    Wrapped<int>? readTimeInMinutes,
  }) {
    return ArticleDetailDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      headline: (headline != null ? headline.value : this.headline),
      body: (body != null ? body.value : this.body),
      coverImageUrl: (coverImageUrl != null
          ? coverImageUrl.value
          : this.coverImageUrl),
      authorId: (authorId != null ? authorId.value : this.authorId),
      status: (status != null ? status.value : this.status),
      rejectionReason: (rejectionReason != null
          ? rejectionReason.value
          : this.rejectionReason),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      featuredUntil: (featuredUntil != null
          ? featuredUntil.value
          : this.featuredUntil),
      publishedAt: (publishedAt != null ? publishedAt.value : this.publishedAt),
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
      images: (images != null ? images.value : this.images),
      tags: (tags != null ? tags.value : this.tags),
      readTimeInMinutes: (readTimeInMinutes != null
          ? readTimeInMinutes.value
          : this.readTimeInMinutes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleImageDto {
  const ArticleImageDto({
    required this.id,
    required this.url,
    required this.storageKey,
    required this.imageType,
  });

  factory ArticleImageDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleImageDtoFromJson(json);

  static const toJsonFactory = _$ArticleImageDtoToJson;
  Map<String, dynamic> toJson() => _$ArticleImageDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'storageKey')
  final String storageKey;
  @JsonKey(
    name: 'imageType',
    toJson: articleImageDtoImageTypeToJson,
    fromJson: articleImageDtoImageTypeFromJson,
  )
  final enums.ArticleImageDtoImageType imageType;
  static const fromJsonFactory = _$ArticleImageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleImageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.storageKey, storageKey) ||
                const DeepCollectionEquality().equals(
                  other.storageKey,
                  storageKey,
                )) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality().equals(
                  other.imageType,
                  imageType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(storageKey) ^
      const DeepCollectionEquality().hash(imageType) ^
      runtimeType.hashCode;
}

extension $ArticleImageDtoExtension on ArticleImageDto {
  ArticleImageDto copyWith({
    String? id,
    String? url,
    String? storageKey,
    enums.ArticleImageDtoImageType? imageType,
  }) {
    return ArticleImageDto(
      id: id ?? this.id,
      url: url ?? this.url,
      storageKey: storageKey ?? this.storageKey,
      imageType: imageType ?? this.imageType,
    );
  }

  ArticleImageDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? url,
    Wrapped<String>? storageKey,
    Wrapped<enums.ArticleImageDtoImageType>? imageType,
  }) {
    return ArticleImageDto(
      id: (id != null ? id.value : this.id),
      url: (url != null ? url.value : this.url),
      storageKey: (storageKey != null ? storageKey.value : this.storageKey),
      imageType: (imageType != null ? imageType.value : this.imageType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleSummaryDto {
  const ArticleSummaryDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.slug,
    required this.headline,
    this.coverImageUrl,
    required this.authorId,
    required this.status,
    required this.isFeatured,
    this.publishedAt,
  });

  factory ArticleSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleSummaryDtoFromJson(json);

  static const toJsonFactory = _$ArticleSummaryDtoToJson;
  Map<String, dynamic> toJson() => _$ArticleSummaryDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'headline')
  final String headline;
  @JsonKey(name: 'coverImageUrl')
  final String? coverImageUrl;
  @JsonKey(name: 'authorId')
  final String authorId;
  @JsonKey(
    name: 'status',
    toJson: articleSummaryDtoStatusToJson,
    fromJson: articleSummaryDtoStatusFromJson,
  )
  final enums.ArticleSummaryDtoStatus status;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;
  static const fromJsonFactory = _$ArticleSummaryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleSummaryDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.headline, headline) ||
                const DeepCollectionEquality().equals(
                  other.headline,
                  headline,
                )) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality().equals(
                  other.coverImageUrl,
                  coverImageUrl,
                )) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality().equals(
                  other.authorId,
                  authorId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality().equals(
                  other.publishedAt,
                  publishedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(headline) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      runtimeType.hashCode;
}

extension $ArticleSummaryDtoExtension on ArticleSummaryDto {
  ArticleSummaryDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? categoryId,
    String? categoryName,
    String? title,
    String? slug,
    String? headline,
    String? coverImageUrl,
    String? authorId,
    enums.ArticleSummaryDtoStatus? status,
    bool? isFeatured,
    DateTime? publishedAt,
  }) {
    return ArticleSummaryDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      headline: headline ?? this.headline,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      authorId: authorId ?? this.authorId,
      status: status ?? this.status,
      isFeatured: isFeatured ?? this.isFeatured,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  ArticleSummaryDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? categoryId,
    Wrapped<String>? categoryName,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String>? headline,
    Wrapped<String?>? coverImageUrl,
    Wrapped<String>? authorId,
    Wrapped<enums.ArticleSummaryDtoStatus>? status,
    Wrapped<bool>? isFeatured,
    Wrapped<DateTime?>? publishedAt,
  }) {
    return ArticleSummaryDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      headline: (headline != null ? headline.value : this.headline),
      coverImageUrl: (coverImageUrl != null
          ? coverImageUrl.value
          : this.coverImageUrl),
      authorId: (authorId != null ? authorId.value : this.authorId),
      status: (status != null ? status.value : this.status),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      publishedAt: (publishedAt != null ? publishedAt.value : this.publishedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleSummaryDtoPaginatedResult {
  const ArticleSummaryDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory ArticleSummaryDtoPaginatedResult.fromJson(
    Map<String, dynamic> json,
  ) => _$ArticleSummaryDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$ArticleSummaryDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() =>
      _$ArticleSummaryDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <ArticleSummaryDto>[])
  final List<ArticleSummaryDto> items;
  static const fromJsonFactory = _$ArticleSummaryDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleSummaryDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ArticleSummaryDtoPaginatedResultExtension
    on ArticleSummaryDtoPaginatedResult {
  ArticleSummaryDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<ArticleSummaryDto>? items,
  }) {
    return ArticleSummaryDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  ArticleSummaryDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<ArticleSummaryDto>>? items,
  }) {
    return ArticleSummaryDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BrowserMetrics {
  const BrowserMetrics({
    required this.chrome,
    required this.firefox,
    required this.safari,
    required this.edge,
    required this.opera,
    required this.internetExplorer,
    required this.googleSearchApp,
    required this.samsung,
    required this.unknown,
  });

  factory BrowserMetrics.fromJson(Map<String, dynamic> json) =>
      _$BrowserMetricsFromJson(json);

  static const toJsonFactory = _$BrowserMetricsToJson;
  Map<String, dynamic> toJson() => _$BrowserMetricsToJson(this);

  @JsonKey(name: 'chrome')
  final int chrome;
  @JsonKey(name: 'firefox')
  final int firefox;
  @JsonKey(name: 'safari')
  final int safari;
  @JsonKey(name: 'edge')
  final int edge;
  @JsonKey(name: 'opera')
  final int opera;
  @JsonKey(name: 'internetExplorer')
  final int internetExplorer;
  @JsonKey(name: 'googleSearchApp')
  final int googleSearchApp;
  @JsonKey(name: 'samsung')
  final int samsung;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$BrowserMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BrowserMetrics &&
            (identical(other.chrome, chrome) ||
                const DeepCollectionEquality().equals(other.chrome, chrome)) &&
            (identical(other.firefox, firefox) ||
                const DeepCollectionEquality().equals(
                  other.firefox,
                  firefox,
                )) &&
            (identical(other.safari, safari) ||
                const DeepCollectionEquality().equals(other.safari, safari)) &&
            (identical(other.edge, edge) ||
                const DeepCollectionEquality().equals(other.edge, edge)) &&
            (identical(other.opera, opera) ||
                const DeepCollectionEquality().equals(other.opera, opera)) &&
            (identical(other.internetExplorer, internetExplorer) ||
                const DeepCollectionEquality().equals(
                  other.internetExplorer,
                  internetExplorer,
                )) &&
            (identical(other.googleSearchApp, googleSearchApp) ||
                const DeepCollectionEquality().equals(
                  other.googleSearchApp,
                  googleSearchApp,
                )) &&
            (identical(other.samsung, samsung) ||
                const DeepCollectionEquality().equals(
                  other.samsung,
                  samsung,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrome) ^
      const DeepCollectionEquality().hash(firefox) ^
      const DeepCollectionEquality().hash(safari) ^
      const DeepCollectionEquality().hash(edge) ^
      const DeepCollectionEquality().hash(opera) ^
      const DeepCollectionEquality().hash(internetExplorer) ^
      const DeepCollectionEquality().hash(googleSearchApp) ^
      const DeepCollectionEquality().hash(samsung) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $BrowserMetricsExtension on BrowserMetrics {
  BrowserMetrics copyWith({
    int? chrome,
    int? firefox,
    int? safari,
    int? edge,
    int? opera,
    int? internetExplorer,
    int? googleSearchApp,
    int? samsung,
    int? unknown,
  }) {
    return BrowserMetrics(
      chrome: chrome ?? this.chrome,
      firefox: firefox ?? this.firefox,
      safari: safari ?? this.safari,
      edge: edge ?? this.edge,
      opera: opera ?? this.opera,
      internetExplorer: internetExplorer ?? this.internetExplorer,
      googleSearchApp: googleSearchApp ?? this.googleSearchApp,
      samsung: samsung ?? this.samsung,
      unknown: unknown ?? this.unknown,
    );
  }

  BrowserMetrics copyWithWrapped({
    Wrapped<int>? chrome,
    Wrapped<int>? firefox,
    Wrapped<int>? safari,
    Wrapped<int>? edge,
    Wrapped<int>? opera,
    Wrapped<int>? internetExplorer,
    Wrapped<int>? googleSearchApp,
    Wrapped<int>? samsung,
    Wrapped<int>? unknown,
  }) {
    return BrowserMetrics(
      chrome: (chrome != null ? chrome.value : this.chrome),
      firefox: (firefox != null ? firefox.value : this.firefox),
      safari: (safari != null ? safari.value : this.safari),
      edge: (edge != null ? edge.value : this.edge),
      opera: (opera != null ? opera.value : this.opera),
      internetExplorer: (internetExplorer != null
          ? internetExplorer.value
          : this.internetExplorer),
      googleSearchApp: (googleSearchApp != null
          ? googleSearchApp.value
          : this.googleSearchApp),
      samsung: (samsung != null ? samsung.value : this.samsung),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDto {
  const CategoryDto({
    required this.id,
    required this.contentTypeId,
    required this.contentTypeName,
    required this.name,
    required this.slug,
    required this.isFree,
    required this.isActive,
    required this.pricing,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  static const toJsonFactory = _$CategoryDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'contentTypeId')
  final String contentTypeId;
  @JsonKey(name: 'contentTypeName')
  final String contentTypeName;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'isFree')
  final bool isFree;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'pricing', defaultValue: <CategoryPricingDto>[])
  final List<CategoryPricingDto> pricing;
  static const fromJsonFactory = _$CategoryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contentTypeId, contentTypeId) ||
                const DeepCollectionEquality().equals(
                  other.contentTypeId,
                  contentTypeId,
                )) &&
            (identical(other.contentTypeName, contentTypeName) ||
                const DeepCollectionEquality().equals(
                  other.contentTypeName,
                  contentTypeName,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.isFree, isFree) ||
                const DeepCollectionEquality().equals(other.isFree, isFree)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality().equals(other.pricing, pricing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contentTypeId) ^
      const DeepCollectionEquality().hash(contentTypeName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(isFree) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(pricing) ^
      runtimeType.hashCode;
}

extension $CategoryDtoExtension on CategoryDto {
  CategoryDto copyWith({
    String? id,
    String? contentTypeId,
    String? contentTypeName,
    String? name,
    String? slug,
    bool? isFree,
    bool? isActive,
    List<CategoryPricingDto>? pricing,
  }) {
    return CategoryDto(
      id: id ?? this.id,
      contentTypeId: contentTypeId ?? this.contentTypeId,
      contentTypeName: contentTypeName ?? this.contentTypeName,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      isFree: isFree ?? this.isFree,
      isActive: isActive ?? this.isActive,
      pricing: pricing ?? this.pricing,
    );
  }

  CategoryDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? contentTypeId,
    Wrapped<String>? contentTypeName,
    Wrapped<String>? name,
    Wrapped<String>? slug,
    Wrapped<bool>? isFree,
    Wrapped<bool>? isActive,
    Wrapped<List<CategoryPricingDto>>? pricing,
  }) {
    return CategoryDto(
      id: (id != null ? id.value : this.id),
      contentTypeId: (contentTypeId != null
          ? contentTypeId.value
          : this.contentTypeId),
      contentTypeName: (contentTypeName != null
          ? contentTypeName.value
          : this.contentTypeName),
      name: (name != null ? name.value : this.name),
      slug: (slug != null ? slug.value : this.slug),
      isFree: (isFree != null ? isFree.value : this.isFree),
      isActive: (isActive != null ? isActive.value : this.isActive),
      pricing: (pricing != null ? pricing.value : this.pricing),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDtoPaginatedResult {
  const CategoryDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory CategoryDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$CategoryDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$CategoryDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <CategoryDto>[])
  final List<CategoryDto> items;
  static const fromJsonFactory = _$CategoryDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CategoryDtoPaginatedResultExtension on CategoryDtoPaginatedResult {
  CategoryDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<CategoryDto>? items,
  }) {
    return CategoryDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  CategoryDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<CategoryDto>>? items,
  }) {
    return CategoryDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryPricingDto {
  const CategoryPricingDto({
    required this.tierId,
    required this.tierName,
    required this.priceUsd,
  });

  factory CategoryPricingDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryPricingDtoFromJson(json);

  static const toJsonFactory = _$CategoryPricingDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryPricingDtoToJson(this);

  @JsonKey(name: 'tierId')
  final String tierId;
  @JsonKey(name: 'tierName')
  final String tierName;
  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  static const fromJsonFactory = _$CategoryPricingDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryPricingDto &&
            (identical(other.tierId, tierId) ||
                const DeepCollectionEquality().equals(other.tierId, tierId)) &&
            (identical(other.tierName, tierName) ||
                const DeepCollectionEquality().equals(
                  other.tierName,
                  tierName,
                )) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tierId) ^
      const DeepCollectionEquality().hash(tierName) ^
      const DeepCollectionEquality().hash(priceUsd) ^
      runtimeType.hashCode;
}

extension $CategoryPricingDtoExtension on CategoryPricingDto {
  CategoryPricingDto copyWith({
    String? tierId,
    String? tierName,
    double? priceUsd,
  }) {
    return CategoryPricingDto(
      tierId: tierId ?? this.tierId,
      tierName: tierName ?? this.tierName,
      priceUsd: priceUsd ?? this.priceUsd,
    );
  }

  CategoryPricingDto copyWithWrapped({
    Wrapped<String>? tierId,
    Wrapped<String>? tierName,
    Wrapped<double>? priceUsd,
  }) {
    return CategoryPricingDto(
      tierId: (tierId != null ? tierId.value : this.tierId),
      tierName: (tierName != null ? tierName.value : this.tierName),
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientMetrics {
  const ClientMetrics({
    required this.mobileApp,
    required this.webApp,
    required this.dashboard,
    required this.unknown,
  });

  factory ClientMetrics.fromJson(Map<String, dynamic> json) =>
      _$ClientMetricsFromJson(json);

  static const toJsonFactory = _$ClientMetricsToJson;
  Map<String, dynamic> toJson() => _$ClientMetricsToJson(this);

  @JsonKey(name: 'mobileApp')
  final int mobileApp;
  @JsonKey(name: 'webApp')
  final int webApp;
  @JsonKey(name: 'dashboard')
  final int dashboard;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$ClientMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientMetrics &&
            (identical(other.mobileApp, mobileApp) ||
                const DeepCollectionEquality().equals(
                  other.mobileApp,
                  mobileApp,
                )) &&
            (identical(other.webApp, webApp) ||
                const DeepCollectionEquality().equals(other.webApp, webApp)) &&
            (identical(other.dashboard, dashboard) ||
                const DeepCollectionEquality().equals(
                  other.dashboard,
                  dashboard,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mobileApp) ^
      const DeepCollectionEquality().hash(webApp) ^
      const DeepCollectionEquality().hash(dashboard) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $ClientMetricsExtension on ClientMetrics {
  ClientMetrics copyWith({
    int? mobileApp,
    int? webApp,
    int? dashboard,
    int? unknown,
  }) {
    return ClientMetrics(
      mobileApp: mobileApp ?? this.mobileApp,
      webApp: webApp ?? this.webApp,
      dashboard: dashboard ?? this.dashboard,
      unknown: unknown ?? this.unknown,
    );
  }

  ClientMetrics copyWithWrapped({
    Wrapped<int>? mobileApp,
    Wrapped<int>? webApp,
    Wrapped<int>? dashboard,
    Wrapped<int>? unknown,
  }) {
    return ClientMetrics(
      mobileApp: (mobileApp != null ? mobileApp.value : this.mobileApp),
      webApp: (webApp != null ? webApp.value : this.webApp),
      dashboard: (dashboard != null ? dashboard.value : this.dashboard),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentOrderDetailDto {
  const ContentOrderDetailDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.customerName,
    required this.status,
    required this.totalAmountUsd,
    required this.items,
    this.payment,
  });

  factory ContentOrderDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ContentOrderDetailDtoFromJson(json);

  static const toJsonFactory = _$ContentOrderDetailDtoToJson;
  Map<String, dynamic> toJson() => _$ContentOrderDetailDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'customerName')
  final String customerName;
  @JsonKey(
    name: 'status',
    toJson: contentOrderDetailDtoStatusToJson,
    fromJson: contentOrderDetailDtoStatusFromJson,
  )
  final enums.ContentOrderDetailDtoStatus status;
  @JsonKey(name: 'totalAmountUsd')
  final double totalAmountUsd;
  @JsonKey(name: 'items', defaultValue: <OrderItemDto>[])
  final List<OrderItemDto> items;
  @JsonKey(name: 'payment')
  final PaymentDto? payment;
  static const fromJsonFactory = _$ContentOrderDetailDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentOrderDetailDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality().equals(
                  other.customerName,
                  customerName,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.totalAmountUsd, totalAmountUsd) ||
                const DeepCollectionEquality().equals(
                  other.totalAmountUsd,
                  totalAmountUsd,
                )) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(totalAmountUsd) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(payment) ^
      runtimeType.hashCode;
}

extension $ContentOrderDetailDtoExtension on ContentOrderDetailDto {
  ContentOrderDetailDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? customerName,
    enums.ContentOrderDetailDtoStatus? status,
    double? totalAmountUsd,
    List<OrderItemDto>? items,
    PaymentDto? payment,
  }) {
    return ContentOrderDetailDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      status: status ?? this.status,
      totalAmountUsd: totalAmountUsd ?? this.totalAmountUsd,
      items: items ?? this.items,
      payment: payment ?? this.payment,
    );
  }

  ContentOrderDetailDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? customerName,
    Wrapped<enums.ContentOrderDetailDtoStatus>? status,
    Wrapped<double>? totalAmountUsd,
    Wrapped<List<OrderItemDto>>? items,
    Wrapped<PaymentDto?>? payment,
  }) {
    return ContentOrderDetailDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      customerName: (customerName != null
          ? customerName.value
          : this.customerName),
      status: (status != null ? status.value : this.status),
      totalAmountUsd: (totalAmountUsd != null
          ? totalAmountUsd.value
          : this.totalAmountUsd),
      items: (items != null ? items.value : this.items),
      payment: (payment != null ? payment.value : this.payment),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentOrderSummaryDto {
  const ContentOrderSummaryDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.customerName,
    required this.status,
    required this.totalAmountUsd,
    required this.itemCount,
  });

  factory ContentOrderSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ContentOrderSummaryDtoFromJson(json);

  static const toJsonFactory = _$ContentOrderSummaryDtoToJson;
  Map<String, dynamic> toJson() => _$ContentOrderSummaryDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'customerName')
  final String customerName;
  @JsonKey(
    name: 'status',
    toJson: contentOrderSummaryDtoStatusToJson,
    fromJson: contentOrderSummaryDtoStatusFromJson,
  )
  final enums.ContentOrderSummaryDtoStatus status;
  @JsonKey(name: 'totalAmountUsd')
  final double totalAmountUsd;
  @JsonKey(name: 'itemCount')
  final int itemCount;
  static const fromJsonFactory = _$ContentOrderSummaryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentOrderSummaryDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality().equals(
                  other.customerName,
                  customerName,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.totalAmountUsd, totalAmountUsd) ||
                const DeepCollectionEquality().equals(
                  other.totalAmountUsd,
                  totalAmountUsd,
                )) &&
            (identical(other.itemCount, itemCount) ||
                const DeepCollectionEquality().equals(
                  other.itemCount,
                  itemCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(totalAmountUsd) ^
      const DeepCollectionEquality().hash(itemCount) ^
      runtimeType.hashCode;
}

extension $ContentOrderSummaryDtoExtension on ContentOrderSummaryDto {
  ContentOrderSummaryDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? customerName,
    enums.ContentOrderSummaryDtoStatus? status,
    double? totalAmountUsd,
    int? itemCount,
  }) {
    return ContentOrderSummaryDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      status: status ?? this.status,
      totalAmountUsd: totalAmountUsd ?? this.totalAmountUsd,
      itemCount: itemCount ?? this.itemCount,
    );
  }

  ContentOrderSummaryDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? customerName,
    Wrapped<enums.ContentOrderSummaryDtoStatus>? status,
    Wrapped<double>? totalAmountUsd,
    Wrapped<int>? itemCount,
  }) {
    return ContentOrderSummaryDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      customerName: (customerName != null
          ? customerName.value
          : this.customerName),
      status: (status != null ? status.value : this.status),
      totalAmountUsd: (totalAmountUsd != null
          ? totalAmountUsd.value
          : this.totalAmountUsd),
      itemCount: (itemCount != null ? itemCount.value : this.itemCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentOrderSummaryDtoPaginatedResult {
  const ContentOrderSummaryDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory ContentOrderSummaryDtoPaginatedResult.fromJson(
    Map<String, dynamic> json,
  ) => _$ContentOrderSummaryDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$ContentOrderSummaryDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() =>
      _$ContentOrderSummaryDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <ContentOrderSummaryDto>[])
  final List<ContentOrderSummaryDto> items;
  static const fromJsonFactory =
      _$ContentOrderSummaryDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentOrderSummaryDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ContentOrderSummaryDtoPaginatedResultExtension
    on ContentOrderSummaryDtoPaginatedResult {
  ContentOrderSummaryDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<ContentOrderSummaryDto>? items,
  }) {
    return ContentOrderSummaryDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  ContentOrderSummaryDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<ContentOrderSummaryDto>>? items,
  }) {
    return ContentOrderSummaryDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentTypeDto {
  const ContentTypeDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.name,
    required this.isActive,
  });

  factory ContentTypeDto.fromJson(Map<String, dynamic> json) =>
      _$ContentTypeDtoFromJson(json);

  static const toJsonFactory = _$ContentTypeDtoToJson;
  Map<String, dynamic> toJson() => _$ContentTypeDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'isActive')
  final bool isActive;
  static const fromJsonFactory = _$ContentTypeDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentTypeDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $ContentTypeDtoExtension on ContentTypeDto {
  ContentTypeDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? name,
    bool? isActive,
  }) {
    return ContentTypeDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
    );
  }

  ContentTypeDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<bool>? isActive,
  }) {
    return ContentTypeDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      isActive: (isActive != null ? isActive.value : this.isActive),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerDto {
  const CustomerDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.fullName,
    required this.email,
    this.phone,
    this.company,
    this.notes,
  });

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  static const toJsonFactory = _$CustomerDtoToJson;
  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'company')
  final String? company;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$CustomerDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CustomerDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality().equals(
                  other.fullName,
                  fullName,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(
                  other.company,
                  company,
                )) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $CustomerDtoExtension on CustomerDto {
  CustomerDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? fullName,
    String? email,
    String? phone,
    String? company,
    String? notes,
  }) {
    return CustomerDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      company: company ?? this.company,
      notes: notes ?? this.notes,
    );
  }

  CustomerDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? fullName,
    Wrapped<String>? email,
    Wrapped<String?>? phone,
    Wrapped<String?>? company,
    Wrapped<String?>? notes,
  }) {
    return CustomerDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      fullName: (fullName != null ? fullName.value : this.fullName),
      email: (email != null ? email.value : this.email),
      phone: (phone != null ? phone.value : this.phone),
      company: (company != null ? company.value : this.company),
      notes: (notes != null ? notes.value : this.notes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerDtoPaginatedResult {
  const CustomerDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory CustomerDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$CustomerDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$CustomerDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <CustomerDto>[])
  final List<CustomerDto> items;
  static const fromJsonFactory = _$CustomerDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CustomerDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CustomerDtoPaginatedResultExtension on CustomerDtoPaginatedResult {
  CustomerDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<CustomerDto>? items,
  }) {
    return CustomerDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  CustomerDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<CustomerDto>>? items,
  }) {
    return CustomerDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceMetrics {
  const DeviceMetrics({
    required this.desktop,
    required this.mobile,
    required this.tablet,
    required this.watch,
    required this.tv,
    required this.console,
    required this.car,
    required this.ioT,
    required this.unknown,
  });

  factory DeviceMetrics.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricsFromJson(json);

  static const toJsonFactory = _$DeviceMetricsToJson;
  Map<String, dynamic> toJson() => _$DeviceMetricsToJson(this);

  @JsonKey(name: 'desktop')
  final int desktop;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'tablet')
  final int tablet;
  @JsonKey(name: 'watch')
  final int watch;
  @JsonKey(name: 'tv')
  final int tv;
  @JsonKey(name: 'console')
  final int console;
  @JsonKey(name: 'car')
  final int car;
  @JsonKey(name: 'ioT')
  final int ioT;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$DeviceMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeviceMetrics &&
            (identical(other.desktop, desktop) ||
                const DeepCollectionEquality().equals(
                  other.desktop,
                  desktop,
                )) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.tablet, tablet) ||
                const DeepCollectionEquality().equals(other.tablet, tablet)) &&
            (identical(other.watch, watch) ||
                const DeepCollectionEquality().equals(other.watch, watch)) &&
            (identical(other.tv, tv) ||
                const DeepCollectionEquality().equals(other.tv, tv)) &&
            (identical(other.console, console) ||
                const DeepCollectionEquality().equals(
                  other.console,
                  console,
                )) &&
            (identical(other.car, car) ||
                const DeepCollectionEquality().equals(other.car, car)) &&
            (identical(other.ioT, ioT) ||
                const DeepCollectionEquality().equals(other.ioT, ioT)) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desktop) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(tablet) ^
      const DeepCollectionEquality().hash(watch) ^
      const DeepCollectionEquality().hash(tv) ^
      const DeepCollectionEquality().hash(console) ^
      const DeepCollectionEquality().hash(car) ^
      const DeepCollectionEquality().hash(ioT) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $DeviceMetricsExtension on DeviceMetrics {
  DeviceMetrics copyWith({
    int? desktop,
    int? mobile,
    int? tablet,
    int? watch,
    int? tv,
    int? console,
    int? car,
    int? ioT,
    int? unknown,
  }) {
    return DeviceMetrics(
      desktop: desktop ?? this.desktop,
      mobile: mobile ?? this.mobile,
      tablet: tablet ?? this.tablet,
      watch: watch ?? this.watch,
      tv: tv ?? this.tv,
      console: console ?? this.console,
      car: car ?? this.car,
      ioT: ioT ?? this.ioT,
      unknown: unknown ?? this.unknown,
    );
  }

  DeviceMetrics copyWithWrapped({
    Wrapped<int>? desktop,
    Wrapped<int>? mobile,
    Wrapped<int>? tablet,
    Wrapped<int>? watch,
    Wrapped<int>? tv,
    Wrapped<int>? console,
    Wrapped<int>? car,
    Wrapped<int>? ioT,
    Wrapped<int>? unknown,
  }) {
    return DeviceMetrics(
      desktop: (desktop != null ? desktop.value : this.desktop),
      mobile: (mobile != null ? mobile.value : this.mobile),
      tablet: (tablet != null ? tablet.value : this.tablet),
      watch: (watch != null ? watch.value : this.watch),
      tv: (tv != null ? tv.value : this.tv),
      console: (console != null ? console.value : this.console),
      car: (car != null ? car.value : this.car),
      ioT: (ioT != null ? ioT.value : this.ioT),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileDto {
  const FileDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.fileName,
    required this.originalFileName,
    required this.mimeType,
    required this.storageUrl,
    required this.sizeInBytes,
    required this.isDeleted,
  });

  factory FileDto.fromJson(Map<String, dynamic> json) =>
      _$FileDtoFromJson(json);

  static const toJsonFactory = _$FileDtoToJson;
  Map<String, dynamic> toJson() => _$FileDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'fileName')
  final String fileName;
  @JsonKey(name: 'originalFileName')
  final String originalFileName;
  @JsonKey(name: 'mimeType')
  final String mimeType;
  @JsonKey(name: 'storageUrl')
  final String storageUrl;
  @JsonKey(name: 'sizeInBytes')
  final int sizeInBytes;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  static const fromJsonFactory = _$FileDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.originalFileName, originalFileName) ||
                const DeepCollectionEquality().equals(
                  other.originalFileName,
                  originalFileName,
                )) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality().equals(
                  other.mimeType,
                  mimeType,
                )) &&
            (identical(other.storageUrl, storageUrl) ||
                const DeepCollectionEquality().equals(
                  other.storageUrl,
                  storageUrl,
                )) &&
            (identical(other.sizeInBytes, sizeInBytes) ||
                const DeepCollectionEquality().equals(
                  other.sizeInBytes,
                  sizeInBytes,
                )) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(originalFileName) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(storageUrl) ^
      const DeepCollectionEquality().hash(sizeInBytes) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      runtimeType.hashCode;
}

extension $FileDtoExtension on FileDto {
  FileDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? fileName,
    String? originalFileName,
    String? mimeType,
    String? storageUrl,
    int? sizeInBytes,
    bool? isDeleted,
  }) {
    return FileDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      originalFileName: originalFileName ?? this.originalFileName,
      mimeType: mimeType ?? this.mimeType,
      storageUrl: storageUrl ?? this.storageUrl,
      sizeInBytes: sizeInBytes ?? this.sizeInBytes,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  FileDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? fileName,
    Wrapped<String>? originalFileName,
    Wrapped<String>? mimeType,
    Wrapped<String>? storageUrl,
    Wrapped<int>? sizeInBytes,
    Wrapped<bool>? isDeleted,
  }) {
    return FileDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      fileName: (fileName != null ? fileName.value : this.fileName),
      originalFileName: (originalFileName != null
          ? originalFileName.value
          : this.originalFileName),
      mimeType: (mimeType != null ? mimeType.value : this.mimeType),
      storageUrl: (storageUrl != null ? storageUrl.value : this.storageUrl),
      sizeInBytes: (sizeInBytes != null ? sizeInBytes.value : this.sizeInBytes),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class HttpValidationProblemDetails {
  const HttpValidationProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
    required this.errors,
  });

  factory HttpValidationProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$HttpValidationProblemDetailsFromJson(json);

  static const toJsonFactory = _$HttpValidationProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$HttpValidationProblemDetailsToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  @JsonKey(name: 'errors')
  final Map<String, dynamic> errors;
  static const fromJsonFactory = _$HttpValidationProblemDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is HttpValidationProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality().equals(
                  other.instance,
                  instance,
                )) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $HttpValidationProblemDetailsExtension
    on HttpValidationProblemDetails {
  HttpValidationProblemDetails copyWith({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? instance,
    Map<String, dynamic>? errors,
  }) {
    return HttpValidationProblemDetails(
      type: type ?? this.type,
      title: title ?? this.title,
      status: status ?? this.status,
      detail: detail ?? this.detail,
      instance: instance ?? this.instance,
      errors: errors ?? this.errors,
    );
  }

  HttpValidationProblemDetails copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<String?>? title,
    Wrapped<int?>? status,
    Wrapped<String?>? detail,
    Wrapped<String?>? instance,
    Wrapped<Map<String, dynamic>>? errors,
  }) {
    return HttpValidationProblemDetails(
      type: (type != null ? type.value : this.type),
      title: (title != null ? title.value : this.title),
      status: (status != null ? status.value : this.status),
      detail: (detail != null ? detail.value : this.detail),
      instance: (instance != null ? instance.value : this.instance),
      errors: (errors != null ? errors.value : this.errors),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ItemTierDto {
  const ItemTierDto({required this.tierName, required this.priceSnapshotUsd});

  factory ItemTierDto.fromJson(Map<String, dynamic> json) =>
      _$ItemTierDtoFromJson(json);

  static const toJsonFactory = _$ItemTierDtoToJson;
  Map<String, dynamic> toJson() => _$ItemTierDtoToJson(this);

  @JsonKey(name: 'tierName')
  final String tierName;
  @JsonKey(name: 'priceSnapshotUsd')
  final double priceSnapshotUsd;
  static const fromJsonFactory = _$ItemTierDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ItemTierDto &&
            (identical(other.tierName, tierName) ||
                const DeepCollectionEquality().equals(
                  other.tierName,
                  tierName,
                )) &&
            (identical(other.priceSnapshotUsd, priceSnapshotUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceSnapshotUsd,
                  priceSnapshotUsd,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tierName) ^
      const DeepCollectionEquality().hash(priceSnapshotUsd) ^
      runtimeType.hashCode;
}

extension $ItemTierDtoExtension on ItemTierDto {
  ItemTierDto copyWith({String? tierName, double? priceSnapshotUsd}) {
    return ItemTierDto(
      tierName: tierName ?? this.tierName,
      priceSnapshotUsd: priceSnapshotUsd ?? this.priceSnapshotUsd,
    );
  }

  ItemTierDto copyWithWrapped({
    Wrapped<String>? tierName,
    Wrapped<double>? priceSnapshotUsd,
  }) {
    return ItemTierDto(
      tierName: (tierName != null ? tierName.value : this.tierName),
      priceSnapshotUsd: (priceSnapshotUsd != null
          ? priceSnapshotUsd.value
          : this.priceSnapshotUsd),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LyricsDto {
  const LyricsDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.songTitle,
    required this.artistName,
    required this.lyricsText,
    required this.language,
    this.videoId,
    this.articleId,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
  });

  factory LyricsDto.fromJson(Map<String, dynamic> json) =>
      _$LyricsDtoFromJson(json);

  static const toJsonFactory = _$LyricsDtoToJson;
  Map<String, dynamic> toJson() => _$LyricsDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'songTitle')
  final String songTitle;
  @JsonKey(name: 'artistName')
  final String artistName;
  @JsonKey(name: 'lyricsText')
  final String lyricsText;
  @JsonKey(name: 'language')
  final String language;
  @JsonKey(name: 'videoId')
  final String? videoId;
  @JsonKey(name: 'articleId')
  final String? articleId;
  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  @JsonKey(name: 'metaKeywords')
  final String? metaKeywords;
  static const fromJsonFactory = _$LyricsDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LyricsDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.songTitle, songTitle) ||
                const DeepCollectionEquality().equals(
                  other.songTitle,
                  songTitle,
                )) &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality().equals(
                  other.artistName,
                  artistName,
                )) &&
            (identical(other.lyricsText, lyricsText) ||
                const DeepCollectionEquality().equals(
                  other.lyricsText,
                  lyricsText,
                )) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality().equals(
                  other.language,
                  language,
                )) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(
                  other.videoId,
                  videoId,
                )) &&
            (identical(other.articleId, articleId) ||
                const DeepCollectionEquality().equals(
                  other.articleId,
                  articleId,
                )) &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )) &&
            (identical(other.metaKeywords, metaKeywords) ||
                const DeepCollectionEquality().equals(
                  other.metaKeywords,
                  metaKeywords,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(songTitle) ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(lyricsText) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(articleId) ^
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      const DeepCollectionEquality().hash(metaKeywords) ^
      runtimeType.hashCode;
}

extension $LyricsDtoExtension on LyricsDto {
  LyricsDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? songTitle,
    String? artistName,
    String? lyricsText,
    String? language,
    String? videoId,
    String? articleId,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
  }) {
    return LyricsDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      songTitle: songTitle ?? this.songTitle,
      artistName: artistName ?? this.artistName,
      lyricsText: lyricsText ?? this.lyricsText,
      language: language ?? this.language,
      videoId: videoId ?? this.videoId,
      articleId: articleId ?? this.articleId,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
      metaKeywords: metaKeywords ?? this.metaKeywords,
    );
  }

  LyricsDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? songTitle,
    Wrapped<String>? artistName,
    Wrapped<String>? lyricsText,
    Wrapped<String>? language,
    Wrapped<String?>? videoId,
    Wrapped<String?>? articleId,
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
    Wrapped<String?>? metaKeywords,
  }) {
    return LyricsDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      songTitle: (songTitle != null ? songTitle.value : this.songTitle),
      artistName: (artistName != null ? artistName.value : this.artistName),
      lyricsText: (lyricsText != null ? lyricsText.value : this.lyricsText),
      language: (language != null ? language.value : this.language),
      videoId: (videoId != null ? videoId.value : this.videoId),
      articleId: (articleId != null ? articleId.value : this.articleId),
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
      metaKeywords: (metaKeywords != null
          ? metaKeywords.value
          : this.metaKeywords),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LyricsDtoPaginatedResult {
  const LyricsDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory LyricsDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$LyricsDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$LyricsDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$LyricsDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <LyricsDto>[])
  final List<LyricsDto> items;
  static const fromJsonFactory = _$LyricsDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LyricsDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LyricsDtoPaginatedResultExtension on LyricsDtoPaginatedResult {
  LyricsDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<LyricsDto>? items,
  }) {
    return LyricsDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  LyricsDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<LyricsDto>>? items,
  }) {
    return LyricsDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemDto {
  const OrderItemDto({
    required this.id,
    required this.contentKind,
    required this.categoryName,
    this.promotionLevelName,
    this.promoPriceUsd,
    required this.socialBoost,
    required this.isBonus,
    required this.tiers,
  });

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);

  static const toJsonFactory = _$OrderItemDtoToJson;
  Map<String, dynamic> toJson() => _$OrderItemDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(
    name: 'contentKind',
    toJson: orderItemDtoContentKindToJson,
    fromJson: orderItemDtoContentKindFromJson,
  )
  final enums.OrderItemDtoContentKind contentKind;
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'promotionLevelName')
  final String? promotionLevelName;
  @JsonKey(name: 'promoPriceUsd')
  final double? promoPriceUsd;
  @JsonKey(name: 'socialBoost')
  final bool socialBoost;
  @JsonKey(name: 'isBonus')
  final bool isBonus;
  @JsonKey(name: 'tiers', defaultValue: <ItemTierDto>[])
  final List<ItemTierDto> tiers;
  static const fromJsonFactory = _$OrderItemDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrderItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality().equals(
                  other.contentKind,
                  contentKind,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.promotionLevelName, promotionLevelName) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevelName,
                  promotionLevelName,
                )) &&
            (identical(other.promoPriceUsd, promoPriceUsd) ||
                const DeepCollectionEquality().equals(
                  other.promoPriceUsd,
                  promoPriceUsd,
                )) &&
            (identical(other.socialBoost, socialBoost) ||
                const DeepCollectionEquality().equals(
                  other.socialBoost,
                  socialBoost,
                )) &&
            (identical(other.isBonus, isBonus) ||
                const DeepCollectionEquality().equals(
                  other.isBonus,
                  isBonus,
                )) &&
            (identical(other.tiers, tiers) ||
                const DeepCollectionEquality().equals(other.tiers, tiers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(promotionLevelName) ^
      const DeepCollectionEquality().hash(promoPriceUsd) ^
      const DeepCollectionEquality().hash(socialBoost) ^
      const DeepCollectionEquality().hash(isBonus) ^
      const DeepCollectionEquality().hash(tiers) ^
      runtimeType.hashCode;
}

extension $OrderItemDtoExtension on OrderItemDto {
  OrderItemDto copyWith({
    String? id,
    enums.OrderItemDtoContentKind? contentKind,
    String? categoryName,
    String? promotionLevelName,
    double? promoPriceUsd,
    bool? socialBoost,
    bool? isBonus,
    List<ItemTierDto>? tiers,
  }) {
    return OrderItemDto(
      id: id ?? this.id,
      contentKind: contentKind ?? this.contentKind,
      categoryName: categoryName ?? this.categoryName,
      promotionLevelName: promotionLevelName ?? this.promotionLevelName,
      promoPriceUsd: promoPriceUsd ?? this.promoPriceUsd,
      socialBoost: socialBoost ?? this.socialBoost,
      isBonus: isBonus ?? this.isBonus,
      tiers: tiers ?? this.tiers,
    );
  }

  OrderItemDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<enums.OrderItemDtoContentKind>? contentKind,
    Wrapped<String>? categoryName,
    Wrapped<String?>? promotionLevelName,
    Wrapped<double?>? promoPriceUsd,
    Wrapped<bool>? socialBoost,
    Wrapped<bool>? isBonus,
    Wrapped<List<ItemTierDto>>? tiers,
  }) {
    return OrderItemDto(
      id: (id != null ? id.value : this.id),
      contentKind: (contentKind != null ? contentKind.value : this.contentKind),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      promotionLevelName: (promotionLevelName != null
          ? promotionLevelName.value
          : this.promotionLevelName),
      promoPriceUsd: (promoPriceUsd != null
          ? promoPriceUsd.value
          : this.promoPriceUsd),
      socialBoost: (socialBoost != null ? socialBoost.value : this.socialBoost),
      isBonus: (isBonus != null ? isBonus.value : this.isBonus),
      tiers: (tiers != null ? tiers.value : this.tiers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PackageDto {
  const PackageDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.name,
    this.description,
    required this.flatPriceUsd,
    required this.isActive,
    required this.slots,
  });

  factory PackageDto.fromJson(Map<String, dynamic> json) =>
      _$PackageDtoFromJson(json);

  static const toJsonFactory = _$PackageDtoToJson;
  Map<String, dynamic> toJson() => _$PackageDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'flatPriceUsd')
  final double flatPriceUsd;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'slots', defaultValue: <PackageSlotDto>[])
  final List<PackageSlotDto> slots;
  static const fromJsonFactory = _$PackageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PackageDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.flatPriceUsd, flatPriceUsd) ||
                const DeepCollectionEquality().equals(
                  other.flatPriceUsd,
                  flatPriceUsd,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.slots, slots) ||
                const DeepCollectionEquality().equals(other.slots, slots)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(flatPriceUsd) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(slots) ^
      runtimeType.hashCode;
}

extension $PackageDtoExtension on PackageDto {
  PackageDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? name,
    String? description,
    double? flatPriceUsd,
    bool? isActive,
    List<PackageSlotDto>? slots,
  }) {
    return PackageDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      flatPriceUsd: flatPriceUsd ?? this.flatPriceUsd,
      isActive: isActive ?? this.isActive,
      slots: slots ?? this.slots,
    );
  }

  PackageDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String?>? description,
    Wrapped<double>? flatPriceUsd,
    Wrapped<bool>? isActive,
    Wrapped<List<PackageSlotDto>>? slots,
  }) {
    return PackageDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      flatPriceUsd: (flatPriceUsd != null
          ? flatPriceUsd.value
          : this.flatPriceUsd),
      isActive: (isActive != null ? isActive.value : this.isActive),
      slots: (slots != null ? slots.value : this.slots),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PackageDtoPaginatedResult {
  const PackageDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory PackageDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$PackageDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$PackageDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$PackageDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <PackageDto>[])
  final List<PackageDto> items;
  static const fromJsonFactory = _$PackageDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PackageDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PackageDtoPaginatedResultExtension on PackageDtoPaginatedResult {
  PackageDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<PackageDto>? items,
  }) {
    return PackageDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  PackageDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<PackageDto>>? items,
  }) {
    return PackageDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PackageSlotDto {
  const PackageSlotDto({
    required this.id,
    this.categoryId,
    this.categoryName,
    required this.isRequired,
    required this.quantity,
  });

  factory PackageSlotDto.fromJson(Map<String, dynamic> json) =>
      _$PackageSlotDtoFromJson(json);

  static const toJsonFactory = _$PackageSlotDtoToJson;
  Map<String, dynamic> toJson() => _$PackageSlotDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  @JsonKey(name: 'isRequired')
  final bool isRequired;
  @JsonKey(name: 'quantity')
  final int quantity;
  static const fromJsonFactory = _$PackageSlotDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PackageSlotDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.isRequired, isRequired) ||
                const DeepCollectionEquality().equals(
                  other.isRequired,
                  isRequired,
                )) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(isRequired) ^
      const DeepCollectionEquality().hash(quantity) ^
      runtimeType.hashCode;
}

extension $PackageSlotDtoExtension on PackageSlotDto {
  PackageSlotDto copyWith({
    String? id,
    String? categoryId,
    String? categoryName,
    bool? isRequired,
    int? quantity,
  }) {
    return PackageSlotDto(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      isRequired: isRequired ?? this.isRequired,
      quantity: quantity ?? this.quantity,
    );
  }

  PackageSlotDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String?>? categoryId,
    Wrapped<String?>? categoryName,
    Wrapped<bool>? isRequired,
    Wrapped<int>? quantity,
  }) {
    return PackageSlotDto(
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      isRequired: (isRequired != null ? isRequired.value : this.isRequired),
      quantity: (quantity != null ? quantity.value : this.quantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PaymentDto {
  const PaymentDto({
    required this.id,
    required this.amountUsd,
    this.paymentMethod,
    this.paymentProof,
    required this.status,
    this.verifiedBy,
    this.verifiedAt,
    this.receiptUrl,
  });

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);

  static const toJsonFactory = _$PaymentDtoToJson;
  Map<String, dynamic> toJson() => _$PaymentDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'amountUsd')
  final double amountUsd;
  @JsonKey(
    name: 'paymentMethod',
    toJson: enumPaymentMethodNullableToJson,
    fromJson: enumPaymentMethodNullableFromJson,
  )
  final enums.EnumPaymentMethod? paymentMethod;
  @JsonKey(name: 'paymentProof')
  final FileDto? paymentProof;
  @JsonKey(
    name: 'status',
    toJson: paymentDtoStatusToJson,
    fromJson: paymentDtoStatusFromJson,
  )
  final enums.PaymentDtoStatus status;
  @JsonKey(name: 'verifiedBy')
  final String? verifiedBy;
  @JsonKey(name: 'verifiedAt')
  final DateTime? verifiedAt;
  @JsonKey(name: 'receiptUrl')
  final String? receiptUrl;
  static const fromJsonFactory = _$PaymentDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PaymentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amountUsd, amountUsd) ||
                const DeepCollectionEquality().equals(
                  other.amountUsd,
                  amountUsd,
                )) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality().equals(
                  other.paymentMethod,
                  paymentMethod,
                )) &&
            (identical(other.paymentProof, paymentProof) ||
                const DeepCollectionEquality().equals(
                  other.paymentProof,
                  paymentProof,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.verifiedBy, verifiedBy) ||
                const DeepCollectionEquality().equals(
                  other.verifiedBy,
                  verifiedBy,
                )) &&
            (identical(other.verifiedAt, verifiedAt) ||
                const DeepCollectionEquality().equals(
                  other.verifiedAt,
                  verifiedAt,
                )) &&
            (identical(other.receiptUrl, receiptUrl) ||
                const DeepCollectionEquality().equals(
                  other.receiptUrl,
                  receiptUrl,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amountUsd) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(paymentProof) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(verifiedBy) ^
      const DeepCollectionEquality().hash(verifiedAt) ^
      const DeepCollectionEquality().hash(receiptUrl) ^
      runtimeType.hashCode;
}

extension $PaymentDtoExtension on PaymentDto {
  PaymentDto copyWith({
    String? id,
    double? amountUsd,
    enums.EnumPaymentMethod? paymentMethod,
    FileDto? paymentProof,
    enums.PaymentDtoStatus? status,
    String? verifiedBy,
    DateTime? verifiedAt,
    String? receiptUrl,
  }) {
    return PaymentDto(
      id: id ?? this.id,
      amountUsd: amountUsd ?? this.amountUsd,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentProof: paymentProof ?? this.paymentProof,
      status: status ?? this.status,
      verifiedBy: verifiedBy ?? this.verifiedBy,
      verifiedAt: verifiedAt ?? this.verifiedAt,
      receiptUrl: receiptUrl ?? this.receiptUrl,
    );
  }

  PaymentDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<double>? amountUsd,
    Wrapped<enums.EnumPaymentMethod?>? paymentMethod,
    Wrapped<FileDto?>? paymentProof,
    Wrapped<enums.PaymentDtoStatus>? status,
    Wrapped<String?>? verifiedBy,
    Wrapped<DateTime?>? verifiedAt,
    Wrapped<String?>? receiptUrl,
  }) {
    return PaymentDto(
      id: (id != null ? id.value : this.id),
      amountUsd: (amountUsd != null ? amountUsd.value : this.amountUsd),
      paymentMethod: (paymentMethod != null
          ? paymentMethod.value
          : this.paymentMethod),
      paymentProof: (paymentProof != null
          ? paymentProof.value
          : this.paymentProof),
      status: (status != null ? status.value : this.status),
      verifiedBy: (verifiedBy != null ? verifiedBy.value : this.verifiedBy),
      verifiedAt: (verifiedAt != null ? verifiedAt.value : this.verifiedAt),
      receiptUrl: (receiptUrl != null ? receiptUrl.value : this.receiptUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionDto {
  const PermissionDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.resource,
    required this.action,
    required this.description,
    required this.isActive,
    required this.isDeleted,
    this.deletedAt,
  });

  factory PermissionDto.fromJson(Map<String, dynamic> json) =>
      _$PermissionDtoFromJson(json);

  static const toJsonFactory = _$PermissionDtoToJson;
  Map<String, dynamic> toJson() => _$PermissionDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'resource')
  final String resource;
  @JsonKey(name: 'action')
  final String action;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$PermissionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PermissionDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality().equals(
                  other.resource,
                  resource,
                )) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(resource) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $PermissionDtoExtension on PermissionDto {
  PermissionDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? resource,
    String? action,
    String? description,
    bool? isActive,
    bool? isDeleted,
    DateTime? deletedAt,
  }) {
    return PermissionDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      resource: resource ?? this.resource,
      action: action ?? this.action,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  PermissionDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? resource,
    Wrapped<String>? action,
    Wrapped<String>? description,
    Wrapped<bool>? isActive,
    Wrapped<bool>? isDeleted,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return PermissionDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      resource: (resource != null ? resource.value : this.resource),
      action: (action != null ? action.value : this.action),
      description: (description != null ? description.value : this.description),
      isActive: (isActive != null ? isActive.value : this.isActive),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionDtoPaginatedResult {
  const PermissionDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory PermissionDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$PermissionDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$PermissionDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$PermissionDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <PermissionDto>[])
  final List<PermissionDto> items;
  static const fromJsonFactory = _$PermissionDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PermissionDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PermissionDtoPaginatedResultExtension
    on PermissionDtoPaginatedResult {
  PermissionDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<PermissionDto>? items,
  }) {
    return PermissionDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  PermissionDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<PermissionDto>>? items,
  }) {
    return PermissionDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PlatformMetrics {
  const PlatformMetrics({
    required this.windows,
    required this.mac,
    required this.ios,
    required this.ipadOs,
    required this.linux,
    required this.android,
    required this.chromeOs,
    required this.unknown,
  });

  factory PlatformMetrics.fromJson(Map<String, dynamic> json) =>
      _$PlatformMetricsFromJson(json);

  static const toJsonFactory = _$PlatformMetricsToJson;
  Map<String, dynamic> toJson() => _$PlatformMetricsToJson(this);

  @JsonKey(name: 'windows')
  final int windows;
  @JsonKey(name: 'mac')
  final int mac;
  @JsonKey(name: 'ios')
  final int ios;
  @JsonKey(name: 'ipadOs')
  final int ipadOs;
  @JsonKey(name: 'linux')
  final int linux;
  @JsonKey(name: 'android')
  final int android;
  @JsonKey(name: 'chromeOs')
  final int chromeOs;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$PlatformMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlatformMetrics &&
            (identical(other.windows, windows) ||
                const DeepCollectionEquality().equals(
                  other.windows,
                  windows,
                )) &&
            (identical(other.mac, mac) ||
                const DeepCollectionEquality().equals(other.mac, mac)) &&
            (identical(other.ios, ios) ||
                const DeepCollectionEquality().equals(other.ios, ios)) &&
            (identical(other.ipadOs, ipadOs) ||
                const DeepCollectionEquality().equals(other.ipadOs, ipadOs)) &&
            (identical(other.linux, linux) ||
                const DeepCollectionEquality().equals(other.linux, linux)) &&
            (identical(other.android, android) ||
                const DeepCollectionEquality().equals(
                  other.android,
                  android,
                )) &&
            (identical(other.chromeOs, chromeOs) ||
                const DeepCollectionEquality().equals(
                  other.chromeOs,
                  chromeOs,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(windows) ^
      const DeepCollectionEquality().hash(mac) ^
      const DeepCollectionEquality().hash(ios) ^
      const DeepCollectionEquality().hash(ipadOs) ^
      const DeepCollectionEquality().hash(linux) ^
      const DeepCollectionEquality().hash(android) ^
      const DeepCollectionEquality().hash(chromeOs) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $PlatformMetricsExtension on PlatformMetrics {
  PlatformMetrics copyWith({
    int? windows,
    int? mac,
    int? ios,
    int? ipadOs,
    int? linux,
    int? android,
    int? chromeOs,
    int? unknown,
  }) {
    return PlatformMetrics(
      windows: windows ?? this.windows,
      mac: mac ?? this.mac,
      ios: ios ?? this.ios,
      ipadOs: ipadOs ?? this.ipadOs,
      linux: linux ?? this.linux,
      android: android ?? this.android,
      chromeOs: chromeOs ?? this.chromeOs,
      unknown: unknown ?? this.unknown,
    );
  }

  PlatformMetrics copyWithWrapped({
    Wrapped<int>? windows,
    Wrapped<int>? mac,
    Wrapped<int>? ios,
    Wrapped<int>? ipadOs,
    Wrapped<int>? linux,
    Wrapped<int>? android,
    Wrapped<int>? chromeOs,
    Wrapped<int>? unknown,
  }) {
    return PlatformMetrics(
      windows: (windows != null ? windows.value : this.windows),
      mac: (mac != null ? mac.value : this.mac),
      ios: (ios != null ? ios.value : this.ios),
      ipadOs: (ipadOs != null ? ipadOs.value : this.ipadOs),
      linux: (linux != null ? linux.value : this.linux),
      android: (android != null ? android.value : this.android),
      chromeOs: (chromeOs != null ? chromeOs.value : this.chromeOs),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistDetailDto {
  const PlaylistDetailDto({
    required this.id,
    required this.name,
    required this.videos,
  });

  factory PlaylistDetailDto.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailDtoFromJson(json);

  static const toJsonFactory = _$PlaylistDetailDtoToJson;
  Map<String, dynamic> toJson() => _$PlaylistDetailDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'videos', defaultValue: <VideoInPlaylistDto>[])
  final List<VideoInPlaylistDto> videos;
  static const fromJsonFactory = _$PlaylistDetailDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaylistDetailDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(videos) ^
      runtimeType.hashCode;
}

extension $PlaylistDetailDtoExtension on PlaylistDetailDto {
  PlaylistDetailDto copyWith({
    String? id,
    String? name,
    List<VideoInPlaylistDto>? videos,
  }) {
    return PlaylistDetailDto(
      id: id ?? this.id,
      name: name ?? this.name,
      videos: videos ?? this.videos,
    );
  }

  PlaylistDetailDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<List<VideoInPlaylistDto>>? videos,
  }) {
    return PlaylistDetailDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      videos: (videos != null ? videos.value : this.videos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PlaylistDto {
  const PlaylistDto({
    required this.id,
    required this.name,
    required this.videoCount,
  });

  factory PlaylistDto.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDtoFromJson(json);

  static const toJsonFactory = _$PlaylistDtoToJson;
  Map<String, dynamic> toJson() => _$PlaylistDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'videoCount')
  final int videoCount;
  static const fromJsonFactory = _$PlaylistDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaylistDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.videoCount, videoCount) ||
                const DeepCollectionEquality().equals(
                  other.videoCount,
                  videoCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(videoCount) ^
      runtimeType.hashCode;
}

extension $PlaylistDtoExtension on PlaylistDto {
  PlaylistDto copyWith({String? id, String? name, int? videoCount}) {
    return PlaylistDto(
      id: id ?? this.id,
      name: name ?? this.name,
      videoCount: videoCount ?? this.videoCount,
    );
  }

  PlaylistDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<int>? videoCount,
  }) {
    return PlaylistDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      videoCount: (videoCount != null ? videoCount.value : this.videoCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PricingTierDto {
  const PricingTierDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.name,
    this.description,
    required this.isActive,
  });

  factory PricingTierDto.fromJson(Map<String, dynamic> json) =>
      _$PricingTierDtoFromJson(json);

  static const toJsonFactory = _$PricingTierDtoToJson;
  Map<String, dynamic> toJson() => _$PricingTierDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isActive')
  final bool isActive;
  static const fromJsonFactory = _$PricingTierDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PricingTierDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $PricingTierDtoExtension on PricingTierDto {
  PricingTierDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? name,
    String? description,
    bool? isActive,
  }) {
    return PricingTierDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
    );
  }

  PricingTierDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String?>? description,
    Wrapped<bool>? isActive,
  }) {
    return PricingTierDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      isActive: (isActive != null ? isActive.value : this.isActive),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  const ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality().equals(
                  other.instance,
                  instance,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? instance,
  }) {
    return ProblemDetails(
      type: type ?? this.type,
      title: title ?? this.title,
      status: status ?? this.status,
      detail: detail ?? this.detail,
      instance: instance ?? this.instance,
    );
  }

  ProblemDetails copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<String?>? title,
    Wrapped<int?>? status,
    Wrapped<String?>? detail,
    Wrapped<String?>? instance,
  }) {
    return ProblemDetails(
      type: (type != null ? type.value : this.type),
      title: (title != null ? title.value : this.title),
      status: (status != null ? status.value : this.status),
      detail: (detail != null ? detail.value : this.detail),
      instance: (instance != null ? instance.value : this.instance),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PromotionLevelDto {
  const PromotionLevelDto({
    required this.id,
    required this.name,
    required this.durationDays,
    required this.priceUsd,
    required this.isActive,
  });

  factory PromotionLevelDto.fromJson(Map<String, dynamic> json) =>
      _$PromotionLevelDtoFromJson(json);

  static const toJsonFactory = _$PromotionLevelDtoToJson;
  Map<String, dynamic> toJson() => _$PromotionLevelDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'durationDays')
  final int durationDays;
  @JsonKey(name: 'priceUsd')
  final double priceUsd;
  @JsonKey(name: 'isActive')
  final bool isActive;
  static const fromJsonFactory = _$PromotionLevelDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PromotionLevelDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.durationDays, durationDays) ||
                const DeepCollectionEquality().equals(
                  other.durationDays,
                  durationDays,
                )) &&
            (identical(other.priceUsd, priceUsd) ||
                const DeepCollectionEquality().equals(
                  other.priceUsd,
                  priceUsd,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(durationDays) ^
      const DeepCollectionEquality().hash(priceUsd) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $PromotionLevelDtoExtension on PromotionLevelDto {
  PromotionLevelDto copyWith({
    String? id,
    String? name,
    int? durationDays,
    double? priceUsd,
    bool? isActive,
  }) {
    return PromotionLevelDto(
      id: id ?? this.id,
      name: name ?? this.name,
      durationDays: durationDays ?? this.durationDays,
      priceUsd: priceUsd ?? this.priceUsd,
      isActive: isActive ?? this.isActive,
    );
  }

  PromotionLevelDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<int>? durationDays,
    Wrapped<double>? priceUsd,
    Wrapped<bool>? isActive,
  }) {
    return PromotionLevelDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      durationDays: (durationDays != null
          ? durationDays.value
          : this.durationDays),
      priceUsd: (priceUsd != null ? priceUsd.value : this.priceUsd),
      isActive: (isActive != null ? isActive.value : this.isActive),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicAddArticleCommentRequest {
  const PublicAddArticleCommentRequest({required this.body});

  factory PublicAddArticleCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicAddArticleCommentRequestFromJson(json);

  static const toJsonFactory = _$PublicAddArticleCommentRequestToJson;
  Map<String, dynamic> toJson() => _$PublicAddArticleCommentRequestToJson(this);

  @JsonKey(name: 'body')
  final String body;
  static const fromJsonFactory = _$PublicAddArticleCommentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicAddArticleCommentRequest &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(body) ^ runtimeType.hashCode;
}

extension $PublicAddArticleCommentRequestExtension
    on PublicAddArticleCommentRequest {
  PublicAddArticleCommentRequest copyWith({String? body}) {
    return PublicAddArticleCommentRequest(body: body ?? this.body);
  }

  PublicAddArticleCommentRequest copyWithWrapped({Wrapped<String>? body}) {
    return PublicAddArticleCommentRequest(
      body: (body != null ? body.value : this.body),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicAddArticleCommentResponse {
  const PublicAddArticleCommentResponse({required this.comment});

  factory PublicAddArticleCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicAddArticleCommentResponseFromJson(json);

  static const toJsonFactory = _$PublicAddArticleCommentResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicAddArticleCommentResponseToJson(this);

  @JsonKey(name: 'comment')
  final ArticleCommentDto comment;
  static const fromJsonFactory = _$PublicAddArticleCommentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicAddArticleCommentResponse &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(comment) ^ runtimeType.hashCode;
}

extension $PublicAddArticleCommentResponseExtension
    on PublicAddArticleCommentResponse {
  PublicAddArticleCommentResponse copyWith({ArticleCommentDto? comment}) {
    return PublicAddArticleCommentResponse(comment: comment ?? this.comment);
  }

  PublicAddArticleCommentResponse copyWithWrapped({
    Wrapped<ArticleCommentDto>? comment,
  }) {
    return PublicAddArticleCommentResponse(
      comment: (comment != null ? comment.value : this.comment),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicAddVideoToPlaylistRequest {
  const PublicAddVideoToPlaylistRequest({
    required this.videoId,
    required this.sortOrder,
  });

  factory PublicAddVideoToPlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicAddVideoToPlaylistRequestFromJson(json);

  static const toJsonFactory = _$PublicAddVideoToPlaylistRequestToJson;
  Map<String, dynamic> toJson() =>
      _$PublicAddVideoToPlaylistRequestToJson(this);

  @JsonKey(name: 'videoId')
  final String videoId;
  @JsonKey(name: 'sortOrder')
  final int sortOrder;
  static const fromJsonFactory = _$PublicAddVideoToPlaylistRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicAddVideoToPlaylistRequest &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(
                  other.videoId,
                  videoId,
                )) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality().equals(
                  other.sortOrder,
                  sortOrder,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      runtimeType.hashCode;
}

extension $PublicAddVideoToPlaylistRequestExtension
    on PublicAddVideoToPlaylistRequest {
  PublicAddVideoToPlaylistRequest copyWith({String? videoId, int? sortOrder}) {
    return PublicAddVideoToPlaylistRequest(
      videoId: videoId ?? this.videoId,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  PublicAddVideoToPlaylistRequest copyWithWrapped({
    Wrapped<String>? videoId,
    Wrapped<int>? sortOrder,
  }) {
    return PublicAddVideoToPlaylistRequest(
      videoId: (videoId != null ? videoId.value : this.videoId),
      sortOrder: (sortOrder != null ? sortOrder.value : this.sortOrder),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicAddVideoToPlaylistResponse {
  const PublicAddVideoToPlaylistResponse({required this.isSuccess});

  factory PublicAddVideoToPlaylistResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicAddVideoToPlaylistResponseFromJson(json);

  static const toJsonFactory = _$PublicAddVideoToPlaylistResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicAddVideoToPlaylistResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicAddVideoToPlaylistResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicAddVideoToPlaylistResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicAddVideoToPlaylistResponseExtension
    on PublicAddVideoToPlaylistResponse {
  PublicAddVideoToPlaylistResponse copyWith({bool? isSuccess}) {
    return PublicAddVideoToPlaylistResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicAddVideoToPlaylistResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicAddVideoToPlaylistResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicBookmarkArticleResponse {
  const PublicBookmarkArticleResponse({required this.isSuccess});

  factory PublicBookmarkArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicBookmarkArticleResponseFromJson(json);

  static const toJsonFactory = _$PublicBookmarkArticleResponseToJson;
  Map<String, dynamic> toJson() => _$PublicBookmarkArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicBookmarkArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicBookmarkArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicBookmarkArticleResponseExtension
    on PublicBookmarkArticleResponse {
  PublicBookmarkArticleResponse copyWith({bool? isSuccess}) {
    return PublicBookmarkArticleResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicBookmarkArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicBookmarkArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicBookmarkShortVideoResponse {
  const PublicBookmarkShortVideoResponse({required this.isSuccess});

  factory PublicBookmarkShortVideoResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicBookmarkShortVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicBookmarkShortVideoResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicBookmarkShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicBookmarkShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicBookmarkShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicBookmarkShortVideoResponseExtension
    on PublicBookmarkShortVideoResponse {
  PublicBookmarkShortVideoResponse copyWith({bool? isSuccess}) {
    return PublicBookmarkShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicBookmarkShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicBookmarkShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicChangePasswordRequest {
  const PublicChangePasswordRequest({
    required this.oldPassword,
    required this.newPassword,
  });

  factory PublicChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicChangePasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicChangePasswordRequestToJson(this);

  @JsonKey(name: 'oldPassword')
  final String oldPassword;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$PublicChangePasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicChangePasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality().equals(
                  other.oldPassword,
                  oldPassword,
                )) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $PublicChangePasswordRequestExtension on PublicChangePasswordRequest {
  PublicChangePasswordRequest copyWith({
    String? oldPassword,
    String? newPassword,
  }) {
    return PublicChangePasswordRequest(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  PublicChangePasswordRequest copyWithWrapped({
    Wrapped<String>? oldPassword,
    Wrapped<String>? newPassword,
  }) {
    return PublicChangePasswordRequest(
      oldPassword: (oldPassword != null ? oldPassword.value : this.oldPassword),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicChangePasswordResponse {
  const PublicChangePasswordResponse({required this.isSuccess});

  factory PublicChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicChangePasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicChangePasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicChangePasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicChangePasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicChangePasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicChangePasswordResponseExtension
    on PublicChangePasswordResponse {
  PublicChangePasswordResponse copyWith({bool? isSuccess}) {
    return PublicChangePasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicChangePasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicChangePasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicCreatePlaylistRequest {
  const PublicCreatePlaylistRequest({required this.name});

  factory PublicCreatePlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicCreatePlaylistRequestFromJson(json);

  static const toJsonFactory = _$PublicCreatePlaylistRequestToJson;
  Map<String, dynamic> toJson() => _$PublicCreatePlaylistRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$PublicCreatePlaylistRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicCreatePlaylistRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $PublicCreatePlaylistRequestExtension on PublicCreatePlaylistRequest {
  PublicCreatePlaylistRequest copyWith({String? name}) {
    return PublicCreatePlaylistRequest(name: name ?? this.name);
  }

  PublicCreatePlaylistRequest copyWithWrapped({Wrapped<String>? name}) {
    return PublicCreatePlaylistRequest(
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicCreatePlaylistResponse {
  const PublicCreatePlaylistResponse({required this.playlist});

  factory PublicCreatePlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicCreatePlaylistResponseFromJson(json);

  static const toJsonFactory = _$PublicCreatePlaylistResponseToJson;
  Map<String, dynamic> toJson() => _$PublicCreatePlaylistResponseToJson(this);

  @JsonKey(name: 'playlist')
  final PlaylistDto playlist;
  static const fromJsonFactory = _$PublicCreatePlaylistResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicCreatePlaylistResponse &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality().equals(
                  other.playlist,
                  playlist,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(playlist) ^ runtimeType.hashCode;
}

extension $PublicCreatePlaylistResponseExtension
    on PublicCreatePlaylistResponse {
  PublicCreatePlaylistResponse copyWith({PlaylistDto? playlist}) {
    return PublicCreatePlaylistResponse(playlist: playlist ?? this.playlist);
  }

  PublicCreatePlaylistResponse copyWithWrapped({
    Wrapped<PlaylistDto>? playlist,
  }) {
    return PublicCreatePlaylistResponse(
      playlist: (playlist != null ? playlist.value : this.playlist),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicDeleteArticleCommentResponse {
  const PublicDeleteArticleCommentResponse({required this.isSuccess});

  factory PublicDeleteArticleCommentResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicDeleteArticleCommentResponseFromJson(json);

  static const toJsonFactory = _$PublicDeleteArticleCommentResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicDeleteArticleCommentResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicDeleteArticleCommentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicDeleteArticleCommentResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicDeleteArticleCommentResponseExtension
    on PublicDeleteArticleCommentResponse {
  PublicDeleteArticleCommentResponse copyWith({bool? isSuccess}) {
    return PublicDeleteArticleCommentResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicDeleteArticleCommentResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicDeleteArticleCommentResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicDeletePlaylistResponse {
  const PublicDeletePlaylistResponse({required this.isSuccess});

  factory PublicDeletePlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicDeletePlaylistResponseFromJson(json);

  static const toJsonFactory = _$PublicDeletePlaylistResponseToJson;
  Map<String, dynamic> toJson() => _$PublicDeletePlaylistResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicDeletePlaylistResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicDeletePlaylistResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicDeletePlaylistResponseExtension
    on PublicDeletePlaylistResponse {
  PublicDeletePlaylistResponse copyWith({bool? isSuccess}) {
    return PublicDeletePlaylistResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicDeletePlaylistResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicDeletePlaylistResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicEditArticleCommentRequest {
  const PublicEditArticleCommentRequest({required this.body});

  factory PublicEditArticleCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicEditArticleCommentRequestFromJson(json);

  static const toJsonFactory = _$PublicEditArticleCommentRequestToJson;
  Map<String, dynamic> toJson() =>
      _$PublicEditArticleCommentRequestToJson(this);

  @JsonKey(name: 'body')
  final String body;
  static const fromJsonFactory = _$PublicEditArticleCommentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicEditArticleCommentRequest &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(body) ^ runtimeType.hashCode;
}

extension $PublicEditArticleCommentRequestExtension
    on PublicEditArticleCommentRequest {
  PublicEditArticleCommentRequest copyWith({String? body}) {
    return PublicEditArticleCommentRequest(body: body ?? this.body);
  }

  PublicEditArticleCommentRequest copyWithWrapped({Wrapped<String>? body}) {
    return PublicEditArticleCommentRequest(
      body: (body != null ? body.value : this.body),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicEditArticleCommentResponse {
  const PublicEditArticleCommentResponse({required this.isSuccess});

  factory PublicEditArticleCommentResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicEditArticleCommentResponseFromJson(json);

  static const toJsonFactory = _$PublicEditArticleCommentResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicEditArticleCommentResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicEditArticleCommentResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicEditArticleCommentResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicEditArticleCommentResponseExtension
    on PublicEditArticleCommentResponse {
  PublicEditArticleCommentResponse copyWith({bool? isSuccess}) {
    return PublicEditArticleCommentResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicEditArticleCommentResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicEditArticleCommentResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicForgotPasswordRequest {
  const PublicForgotPasswordRequest({required this.email});

  factory PublicForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicForgotPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicForgotPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicForgotPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PublicForgotPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicForgotPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $PublicForgotPasswordRequestExtension on PublicForgotPasswordRequest {
  PublicForgotPasswordRequest copyWith({String? email}) {
    return PublicForgotPasswordRequest(email: email ?? this.email);
  }

  PublicForgotPasswordRequest copyWithWrapped({Wrapped<String>? email}) {
    return PublicForgotPasswordRequest(
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicForgotPasswordResponse {
  const PublicForgotPasswordResponse({
    required this.isSuccess,
    required this.email,
  });

  factory PublicForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicForgotPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicForgotPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicForgotPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PublicForgotPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicForgotPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $PublicForgotPasswordResponseExtension
    on PublicForgotPasswordResponse {
  PublicForgotPasswordResponse copyWith({bool? isSuccess, String? email}) {
    return PublicForgotPasswordResponse(
      isSuccess: isSuccess ?? this.isSuccess,
      email: email ?? this.email,
    );
  }

  PublicForgotPasswordResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
    Wrapped<String>? email,
  }) {
    return PublicForgotPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetActiveCategoriesResponse {
  const PublicGetActiveCategoriesResponse({required this.categories});

  factory PublicGetActiveCategoriesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetActiveCategoriesResponseFromJson(json);

  static const toJsonFactory = _$PublicGetActiveCategoriesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetActiveCategoriesResponseToJson(this);

  @JsonKey(name: 'categories', defaultValue: <CategoryDto>[])
  final List<CategoryDto> categories;
  static const fromJsonFactory = _$PublicGetActiveCategoriesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetActiveCategoriesResponse &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality().equals(
                  other.categories,
                  categories,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^ runtimeType.hashCode;
}

extension $PublicGetActiveCategoriesResponseExtension
    on PublicGetActiveCategoriesResponse {
  PublicGetActiveCategoriesResponse copyWith({List<CategoryDto>? categories}) {
    return PublicGetActiveCategoriesResponse(
      categories: categories ?? this.categories,
    );
  }

  PublicGetActiveCategoriesResponse copyWithWrapped({
    Wrapped<List<CategoryDto>>? categories,
  }) {
    return PublicGetActiveCategoriesResponse(
      categories: (categories != null ? categories.value : this.categories),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetActivePromotionLevelsResponse {
  const PublicGetActivePromotionLevelsResponse({required this.promotionLevels});

  factory PublicGetActivePromotionLevelsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetActivePromotionLevelsResponseFromJson(json);

  static const toJsonFactory = _$PublicGetActivePromotionLevelsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetActivePromotionLevelsResponseToJson(this);

  @JsonKey(name: 'promotionLevels', defaultValue: <PromotionLevelDto>[])
  final List<PromotionLevelDto> promotionLevels;
  static const fromJsonFactory =
      _$PublicGetActivePromotionLevelsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetActivePromotionLevelsResponse &&
            (identical(other.promotionLevels, promotionLevels) ||
                const DeepCollectionEquality().equals(
                  other.promotionLevels,
                  promotionLevels,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionLevels) ^
      runtimeType.hashCode;
}

extension $PublicGetActivePromotionLevelsResponseExtension
    on PublicGetActivePromotionLevelsResponse {
  PublicGetActivePromotionLevelsResponse copyWith({
    List<PromotionLevelDto>? promotionLevels,
  }) {
    return PublicGetActivePromotionLevelsResponse(
      promotionLevels: promotionLevels ?? this.promotionLevels,
    );
  }

  PublicGetActivePromotionLevelsResponse copyWithWrapped({
    Wrapped<List<PromotionLevelDto>>? promotionLevels,
  }) {
    return PublicGetActivePromotionLevelsResponse(
      promotionLevels: (promotionLevels != null
          ? promotionLevels.value
          : this.promotionLevels),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetAllTagsResponse {
  const PublicGetAllTagsResponse({required this.tags});

  factory PublicGetAllTagsResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetAllTagsResponseFromJson(json);

  static const toJsonFactory = _$PublicGetAllTagsResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetAllTagsResponseToJson(this);

  @JsonKey(name: 'tags', defaultValue: <TagDto>[])
  final List<TagDto> tags;
  static const fromJsonFactory = _$PublicGetAllTagsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetAllTagsResponse &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tags) ^ runtimeType.hashCode;
}

extension $PublicGetAllTagsResponseExtension on PublicGetAllTagsResponse {
  PublicGetAllTagsResponse copyWith({List<TagDto>? tags}) {
    return PublicGetAllTagsResponse(tags: tags ?? this.tags);
  }

  PublicGetAllTagsResponse copyWithWrapped({Wrapped<List<TagDto>>? tags}) {
    return PublicGetAllTagsResponse(
      tags: (tags != null ? tags.value : this.tags),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetArticleBySlugResponse {
  const PublicGetArticleBySlugResponse({required this.article});

  factory PublicGetArticleBySlugResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetArticleBySlugResponseFromJson(json);

  static const toJsonFactory = _$PublicGetArticleBySlugResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetArticleBySlugResponseToJson(this);

  @JsonKey(name: 'article')
  final ArticleDetailDto article;
  static const fromJsonFactory = _$PublicGetArticleBySlugResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetArticleBySlugResponse &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(article) ^ runtimeType.hashCode;
}

extension $PublicGetArticleBySlugResponseExtension
    on PublicGetArticleBySlugResponse {
  PublicGetArticleBySlugResponse copyWith({ArticleDetailDto? article}) {
    return PublicGetArticleBySlugResponse(article: article ?? this.article);
  }

  PublicGetArticleBySlugResponse copyWithWrapped({
    Wrapped<ArticleDetailDto>? article,
  }) {
    return PublicGetArticleBySlugResponse(
      article: (article != null ? article.value : this.article),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetFeaturedArticlesResponse {
  const PublicGetFeaturedArticlesResponse({required this.articles});

  factory PublicGetFeaturedArticlesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetFeaturedArticlesResponseFromJson(json);

  static const toJsonFactory = _$PublicGetFeaturedArticlesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetFeaturedArticlesResponseToJson(this);

  @JsonKey(name: 'articles', defaultValue: <ArticleSummaryDto>[])
  final List<ArticleSummaryDto> articles;
  static const fromJsonFactory = _$PublicGetFeaturedArticlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetFeaturedArticlesResponse &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality().equals(
                  other.articles,
                  articles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(articles) ^ runtimeType.hashCode;
}

extension $PublicGetFeaturedArticlesResponseExtension
    on PublicGetFeaturedArticlesResponse {
  PublicGetFeaturedArticlesResponse copyWith({
    List<ArticleSummaryDto>? articles,
  }) {
    return PublicGetFeaturedArticlesResponse(
      articles: articles ?? this.articles,
    );
  }

  PublicGetFeaturedArticlesResponse copyWithWrapped({
    Wrapped<List<ArticleSummaryDto>>? articles,
  }) {
    return PublicGetFeaturedArticlesResponse(
      articles: (articles != null ? articles.value : this.articles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetFeaturedVideosResponse {
  const PublicGetFeaturedVideosResponse({required this.videos});

  factory PublicGetFeaturedVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetFeaturedVideosResponseFromJson(json);

  static const toJsonFactory = _$PublicGetFeaturedVideosResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetFeaturedVideosResponseToJson(this);

  @JsonKey(name: 'videos', defaultValue: <VideoSummaryDto>[])
  final List<VideoSummaryDto> videos;
  static const fromJsonFactory = _$PublicGetFeaturedVideosResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetFeaturedVideosResponse &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videos) ^ runtimeType.hashCode;
}

extension $PublicGetFeaturedVideosResponseExtension
    on PublicGetFeaturedVideosResponse {
  PublicGetFeaturedVideosResponse copyWith({List<VideoSummaryDto>? videos}) {
    return PublicGetFeaturedVideosResponse(videos: videos ?? this.videos);
  }

  PublicGetFeaturedVideosResponse copyWithWrapped({
    Wrapped<List<VideoSummaryDto>>? videos,
  }) {
    return PublicGetFeaturedVideosResponse(
      videos: (videos != null ? videos.value : this.videos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetLyricsBySlugResponse {
  const PublicGetLyricsBySlugResponse({required this.lyrics});

  factory PublicGetLyricsBySlugResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetLyricsBySlugResponseFromJson(json);

  static const toJsonFactory = _$PublicGetLyricsBySlugResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetLyricsBySlugResponseToJson(this);

  @JsonKey(name: 'lyrics')
  final LyricsDto lyrics;
  static const fromJsonFactory = _$PublicGetLyricsBySlugResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetLyricsBySlugResponse &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lyrics) ^ runtimeType.hashCode;
}

extension $PublicGetLyricsBySlugResponseExtension
    on PublicGetLyricsBySlugResponse {
  PublicGetLyricsBySlugResponse copyWith({LyricsDto? lyrics}) {
    return PublicGetLyricsBySlugResponse(lyrics: lyrics ?? this.lyrics);
  }

  PublicGetLyricsBySlugResponse copyWithWrapped({Wrapped<LyricsDto>? lyrics}) {
    return PublicGetLyricsBySlugResponse(
      lyrics: (lyrics != null ? lyrics.value : this.lyrics),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnProfileResponse {
  const PublicGetOwnProfileResponse({required this.user});

  factory PublicGetOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicGetOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicGetOwnProfileResponseExtension on PublicGetOwnProfileResponse {
  PublicGetOwnProfileResponse copyWith({UserResponseDto? user}) {
    return PublicGetOwnProfileResponse(user: user ?? this.user);
  }

  PublicGetOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicGetOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnRolesResponse {
  const PublicGetOwnRolesResponse({required this.roles});

  factory PublicGetOwnRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnRolesResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnRolesResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetOwnRolesResponseToJson(this);

  @JsonKey(name: 'roles', defaultValue: <RoleWithPermissionsDto>[])
  final List<RoleWithPermissionsDto> roles;
  static const fromJsonFactory = _$PublicGetOwnRolesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnRolesResponse &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $PublicGetOwnRolesResponseExtension on PublicGetOwnRolesResponse {
  PublicGetOwnRolesResponse copyWith({List<RoleWithPermissionsDto>? roles}) {
    return PublicGetOwnRolesResponse(roles: roles ?? this.roles);
  }

  PublicGetOwnRolesResponse copyWithWrapped({
    Wrapped<List<RoleWithPermissionsDto>>? roles,
  }) {
    return PublicGetOwnRolesResponse(
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnSessionByIdResponse {
  const PublicGetOwnSessionByIdResponse({required this.session});

  factory PublicGetOwnSessionByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnSessionByIdResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnSessionByIdResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetOwnSessionByIdResponseToJson(this);

  @JsonKey(name: 'session')
  final SessionDto session;
  static const fromJsonFactory = _$PublicGetOwnSessionByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnSessionByIdResponse &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(session) ^ runtimeType.hashCode;
}

extension $PublicGetOwnSessionByIdResponseExtension
    on PublicGetOwnSessionByIdResponse {
  PublicGetOwnSessionByIdResponse copyWith({SessionDto? session}) {
    return PublicGetOwnSessionByIdResponse(session: session ?? this.session);
  }

  PublicGetOwnSessionByIdResponse copyWithWrapped({
    Wrapped<SessionDto>? session,
  }) {
    return PublicGetOwnSessionByIdResponse(
      session: (session != null ? session.value : this.session),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnSessionsResponse {
  const PublicGetOwnSessionsResponse({required this.sessions});

  factory PublicGetOwnSessionsResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnSessionsResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnSessionsResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetOwnSessionsResponseToJson(this);

  @JsonKey(name: 'sessions', defaultValue: <SessionDto>[])
  final List<SessionDto> sessions;
  static const fromJsonFactory = _$PublicGetOwnSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnSessionsResponse &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality().equals(
                  other.sessions,
                  sessions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessions) ^ runtimeType.hashCode;
}

extension $PublicGetOwnSessionsResponseExtension
    on PublicGetOwnSessionsResponse {
  PublicGetOwnSessionsResponse copyWith({List<SessionDto>? sessions}) {
    return PublicGetOwnSessionsResponse(sessions: sessions ?? this.sessions);
  }

  PublicGetOwnSessionsResponse copyWithWrapped({
    Wrapped<List<SessionDto>>? sessions,
  }) {
    return PublicGetOwnSessionsResponse(
      sessions: (sessions != null ? sessions.value : this.sessions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetPublicShortBySlugResponse {
  const PublicGetPublicShortBySlugResponse({required this.shortVideo});

  factory PublicGetPublicShortBySlugResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetPublicShortBySlugResponseFromJson(json);

  static const toJsonFactory = _$PublicGetPublicShortBySlugResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetPublicShortBySlugResponseToJson(this);

  @JsonKey(name: 'shortVideo')
  final ShortVideoDto shortVideo;
  static const fromJsonFactory = _$PublicGetPublicShortBySlugResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetPublicShortBySlugResponse &&
            (identical(other.shortVideo, shortVideo) ||
                const DeepCollectionEquality().equals(
                  other.shortVideo,
                  shortVideo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortVideo) ^ runtimeType.hashCode;
}

extension $PublicGetPublicShortBySlugResponseExtension
    on PublicGetPublicShortBySlugResponse {
  PublicGetPublicShortBySlugResponse copyWith({ShortVideoDto? shortVideo}) {
    return PublicGetPublicShortBySlugResponse(
      shortVideo: shortVideo ?? this.shortVideo,
    );
  }

  PublicGetPublicShortBySlugResponse copyWithWrapped({
    Wrapped<ShortVideoDto>? shortVideo,
  }) {
    return PublicGetPublicShortBySlugResponse(
      shortVideo: (shortVideo != null ? shortVideo.value : this.shortVideo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetPublicShortsResponse {
  const PublicGetPublicShortsResponse({required this.shortVideos});

  factory PublicGetPublicShortsResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetPublicShortsResponseFromJson(json);

  static const toJsonFactory = _$PublicGetPublicShortsResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetPublicShortsResponseToJson(this);

  @JsonKey(name: 'shortVideos')
  final ShortVideoDtoPaginatedResult shortVideos;
  static const fromJsonFactory = _$PublicGetPublicShortsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetPublicShortsResponse &&
            (identical(other.shortVideos, shortVideos) ||
                const DeepCollectionEquality().equals(
                  other.shortVideos,
                  shortVideos,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortVideos) ^ runtimeType.hashCode;
}

extension $PublicGetPublicShortsResponseExtension
    on PublicGetPublicShortsResponse {
  PublicGetPublicShortsResponse copyWith({
    ShortVideoDtoPaginatedResult? shortVideos,
  }) {
    return PublicGetPublicShortsResponse(
      shortVideos: shortVideos ?? this.shortVideos,
    );
  }

  PublicGetPublicShortsResponse copyWithWrapped({
    Wrapped<ShortVideoDtoPaginatedResult>? shortVideos,
  }) {
    return PublicGetPublicShortsResponse(
      shortVideos: (shortVideos != null ? shortVideos.value : this.shortVideos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetPublishedArticlesResponse {
  const PublicGetPublishedArticlesResponse({required this.articles});

  factory PublicGetPublishedArticlesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetPublishedArticlesResponseFromJson(json);

  static const toJsonFactory = _$PublicGetPublishedArticlesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetPublishedArticlesResponseToJson(this);

  @JsonKey(name: 'articles')
  final ArticleSummaryDtoPaginatedResult articles;
  static const fromJsonFactory = _$PublicGetPublishedArticlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetPublishedArticlesResponse &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality().equals(
                  other.articles,
                  articles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(articles) ^ runtimeType.hashCode;
}

extension $PublicGetPublishedArticlesResponseExtension
    on PublicGetPublishedArticlesResponse {
  PublicGetPublishedArticlesResponse copyWith({
    ArticleSummaryDtoPaginatedResult? articles,
  }) {
    return PublicGetPublishedArticlesResponse(
      articles: articles ?? this.articles,
    );
  }

  PublicGetPublishedArticlesResponse copyWithWrapped({
    Wrapped<ArticleSummaryDtoPaginatedResult>? articles,
  }) {
    return PublicGetPublishedArticlesResponse(
      articles: (articles != null ? articles.value : this.articles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetPublishedVideosResponse {
  const PublicGetPublishedVideosResponse({required this.videos});

  factory PublicGetPublishedVideosResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicGetPublishedVideosResponseFromJson(json);

  static const toJsonFactory = _$PublicGetPublishedVideosResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetPublishedVideosResponseToJson(this);

  @JsonKey(name: 'videos')
  final VideoSummaryDtoPaginatedResult videos;
  static const fromJsonFactory = _$PublicGetPublishedVideosResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetPublishedVideosResponse &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videos) ^ runtimeType.hashCode;
}

extension $PublicGetPublishedVideosResponseExtension
    on PublicGetPublishedVideosResponse {
  PublicGetPublishedVideosResponse copyWith({
    VideoSummaryDtoPaginatedResult? videos,
  }) {
    return PublicGetPublishedVideosResponse(videos: videos ?? this.videos);
  }

  PublicGetPublishedVideosResponse copyWithWrapped({
    Wrapped<VideoSummaryDtoPaginatedResult>? videos,
  }) {
    return PublicGetPublishedVideosResponse(
      videos: (videos != null ? videos.value : this.videos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetVideoBySlugResponse {
  const PublicGetVideoBySlugResponse({required this.video});

  factory PublicGetVideoBySlugResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetVideoBySlugResponseFromJson(json);

  static const toJsonFactory = _$PublicGetVideoBySlugResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetVideoBySlugResponseToJson(this);

  @JsonKey(name: 'video')
  final VideoDetailDto video;
  static const fromJsonFactory = _$PublicGetVideoBySlugResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetVideoBySlugResponse &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(video) ^ runtimeType.hashCode;
}

extension $PublicGetVideoBySlugResponseExtension
    on PublicGetVideoBySlugResponse {
  PublicGetVideoBySlugResponse copyWith({VideoDetailDto? video}) {
    return PublicGetVideoBySlugResponse(video: video ?? this.video);
  }

  PublicGetVideoBySlugResponse copyWithWrapped({
    Wrapped<VideoDetailDto>? video,
  }) {
    return PublicGetVideoBySlugResponse(
      video: (video != null ? video.value : this.video),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLikeArticleResponse {
  const PublicLikeArticleResponse({required this.isSuccess});

  factory PublicLikeArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicLikeArticleResponseFromJson(json);

  static const toJsonFactory = _$PublicLikeArticleResponseToJson;
  Map<String, dynamic> toJson() => _$PublicLikeArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicLikeArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLikeArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicLikeArticleResponseExtension on PublicLikeArticleResponse {
  PublicLikeArticleResponse copyWith({bool? isSuccess}) {
    return PublicLikeArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicLikeArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicLikeArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLikeShortVideoResponse {
  const PublicLikeShortVideoResponse({required this.isSuccess});

  factory PublicLikeShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicLikeShortVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicLikeShortVideoResponseToJson;
  Map<String, dynamic> toJson() => _$PublicLikeShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicLikeShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLikeShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicLikeShortVideoResponseExtension
    on PublicLikeShortVideoResponse {
  PublicLikeShortVideoResponse copyWith({bool? isSuccess}) {
    return PublicLikeShortVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicLikeShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicLikeShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLoginRequest {
  const PublicLoginRequest({required this.credentials, required this.password});

  factory PublicLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicLoginRequestFromJson(json);

  static const toJsonFactory = _$PublicLoginRequestToJson;
  Map<String, dynamic> toJson() => _$PublicLoginRequestToJson(this);

  @JsonKey(name: 'credentials')
  final String credentials;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLoginRequest &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality().equals(
                  other.credentials,
                  credentials,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credentials) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $PublicLoginRequestExtension on PublicLoginRequest {
  PublicLoginRequest copyWith({String? credentials, String? password}) {
    return PublicLoginRequest(
      credentials: credentials ?? this.credentials,
      password: password ?? this.password,
    );
  }

  PublicLoginRequest copyWithWrapped({
    Wrapped<String>? credentials,
    Wrapped<String>? password,
  }) {
    return PublicLoginRequest(
      credentials: (credentials != null ? credentials.value : this.credentials),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLoginWebResponse {
  const PublicLoginWebResponse({required this.user});

  factory PublicLoginWebResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicLoginWebResponseFromJson(json);

  static const toJsonFactory = _$PublicLoginWebResponseToJson;
  Map<String, dynamic> toJson() => _$PublicLoginWebResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicLoginWebResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLoginWebResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicLoginWebResponseExtension on PublicLoginWebResponse {
  PublicLoginWebResponse copyWith({UserResponseDto? user}) {
    return PublicLoginWebResponse(user: user ?? this.user);
  }

  PublicLoginWebResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return PublicLoginWebResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRateVideoRequest {
  const PublicRateVideoRequest({required this.stars});

  factory PublicRateVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicRateVideoRequestFromJson(json);

  static const toJsonFactory = _$PublicRateVideoRequestToJson;
  Map<String, dynamic> toJson() => _$PublicRateVideoRequestToJson(this);

  @JsonKey(name: 'stars')
  final int stars;
  static const fromJsonFactory = _$PublicRateVideoRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRateVideoRequest &&
            (identical(other.stars, stars) ||
                const DeepCollectionEquality().equals(other.stars, stars)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(stars) ^ runtimeType.hashCode;
}

extension $PublicRateVideoRequestExtension on PublicRateVideoRequest {
  PublicRateVideoRequest copyWith({int? stars}) {
    return PublicRateVideoRequest(stars: stars ?? this.stars);
  }

  PublicRateVideoRequest copyWithWrapped({Wrapped<int>? stars}) {
    return PublicRateVideoRequest(
      stars: (stars != null ? stars.value : this.stars),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRateVideoResponse {
  const PublicRateVideoResponse({required this.isSuccess});

  factory PublicRateVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRateVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicRateVideoResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRateVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicRateVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRateVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRateVideoResponseExtension on PublicRateVideoResponse {
  PublicRateVideoResponse copyWith({bool? isSuccess}) {
    return PublicRateVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicRateVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicRateVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRecordShortVideoViewResponse {
  const PublicRecordShortVideoViewResponse({required this.isSuccess});

  factory PublicRecordShortVideoViewResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicRecordShortVideoViewResponseFromJson(json);

  static const toJsonFactory = _$PublicRecordShortVideoViewResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicRecordShortVideoViewResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicRecordShortVideoViewResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRecordShortVideoViewResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRecordShortVideoViewResponseExtension
    on PublicRecordShortVideoViewResponse {
  PublicRecordShortVideoViewResponse copyWith({bool? isSuccess}) {
    return PublicRecordShortVideoViewResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicRecordShortVideoViewResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicRecordShortVideoViewResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRefreshTokenRequest {
  const PublicRefreshTokenRequest({required this.refreshToken});

  factory PublicRefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicRefreshTokenRequestFromJson(json);

  static const toJsonFactory = _$PublicRefreshTokenRequestToJson;
  Map<String, dynamic> toJson() => _$PublicRefreshTokenRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$PublicRefreshTokenRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $PublicRefreshTokenRequestExtension on PublicRefreshTokenRequest {
  PublicRefreshTokenRequest copyWith({String? refreshToken}) {
    return PublicRefreshTokenRequest(
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  PublicRefreshTokenRequest copyWithWrapped({Wrapped<String>? refreshToken}) {
    return PublicRefreshTokenRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRefreshTokenWebResponse {
  const PublicRefreshTokenWebResponse({required this.user});

  factory PublicRefreshTokenWebResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRefreshTokenWebResponseFromJson(json);

  static const toJsonFactory = _$PublicRefreshTokenWebResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRefreshTokenWebResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicRefreshTokenWebResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRefreshTokenWebResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicRefreshTokenWebResponseExtension
    on PublicRefreshTokenWebResponse {
  PublicRefreshTokenWebResponse copyWith({UserResponseDto? user}) {
    return PublicRefreshTokenWebResponse(user: user ?? this.user);
  }

  PublicRefreshTokenWebResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicRefreshTokenWebResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRemoveVideoFromPlaylistResponse {
  const PublicRemoveVideoFromPlaylistResponse({required this.isSuccess});

  factory PublicRemoveVideoFromPlaylistResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicRemoveVideoFromPlaylistResponseFromJson(json);

  static const toJsonFactory = _$PublicRemoveVideoFromPlaylistResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicRemoveVideoFromPlaylistResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory =
      _$PublicRemoveVideoFromPlaylistResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRemoveVideoFromPlaylistResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRemoveVideoFromPlaylistResponseExtension
    on PublicRemoveVideoFromPlaylistResponse {
  PublicRemoveVideoFromPlaylistResponse copyWith({bool? isSuccess}) {
    return PublicRemoveVideoFromPlaylistResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicRemoveVideoFromPlaylistResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicRemoveVideoFromPlaylistResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRenamePlaylistRequest {
  const PublicRenamePlaylistRequest({required this.name});

  factory PublicRenamePlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicRenamePlaylistRequestFromJson(json);

  static const toJsonFactory = _$PublicRenamePlaylistRequestToJson;
  Map<String, dynamic> toJson() => _$PublicRenamePlaylistRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$PublicRenamePlaylistRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRenamePlaylistRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $PublicRenamePlaylistRequestExtension on PublicRenamePlaylistRequest {
  PublicRenamePlaylistRequest copyWith({String? name}) {
    return PublicRenamePlaylistRequest(name: name ?? this.name);
  }

  PublicRenamePlaylistRequest copyWithWrapped({Wrapped<String>? name}) {
    return PublicRenamePlaylistRequest(
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRenamePlaylistResponse {
  const PublicRenamePlaylistResponse({required this.isSuccess});

  factory PublicRenamePlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRenamePlaylistResponseFromJson(json);

  static const toJsonFactory = _$PublicRenamePlaylistResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRenamePlaylistResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicRenamePlaylistResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRenamePlaylistResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRenamePlaylistResponseExtension
    on PublicRenamePlaylistResponse {
  PublicRenamePlaylistResponse copyWith({bool? isSuccess}) {
    return PublicRenamePlaylistResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicRenamePlaylistResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicRenamePlaylistResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResendOtpRequest {
  const PublicResendOtpRequest({required this.email, required this.purpose});

  factory PublicResendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicResendOtpRequestFromJson(json);

  static const toJsonFactory = _$PublicResendOtpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicResendOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$PublicResendOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResendOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $PublicResendOtpRequestExtension on PublicResendOtpRequest {
  PublicResendOtpRequest copyWith({String? email, String? purpose}) {
    return PublicResendOtpRequest(
      email: email ?? this.email,
      purpose: purpose ?? this.purpose,
    );
  }

  PublicResendOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? purpose,
  }) {
    return PublicResendOtpRequest(
      email: (email != null ? email.value : this.email),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResendOtpResponse {
  const PublicResendOtpResponse({required this.isSuccess});

  factory PublicResendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicResendOtpResponseFromJson(json);

  static const toJsonFactory = _$PublicResendOtpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicResendOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicResendOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResendOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicResendOtpResponseExtension on PublicResendOtpResponse {
  PublicResendOtpResponse copyWith({bool? isSuccess}) {
    return PublicResendOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicResendOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicResendOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResetPasswordRequest {
  const PublicResetPasswordRequest({
    required this.email,
    required this.code,
    required this.newPassword,
  });

  factory PublicResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicResetPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicResetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicResetPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$PublicResetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResetPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $PublicResetPasswordRequestExtension on PublicResetPasswordRequest {
  PublicResetPasswordRequest copyWith({
    String? email,
    String? code,
    String? newPassword,
  }) {
    return PublicResetPasswordRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  PublicResetPasswordRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? newPassword,
  }) {
    return PublicResetPasswordRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResetPasswordResponse {
  const PublicResetPasswordResponse({required this.isSuccess});

  factory PublicResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicResetPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicResetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicResetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicResetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicResetPasswordResponseExtension on PublicResetPasswordResponse {
  PublicResetPasswordResponse copyWith({bool? isSuccess}) {
    return PublicResetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicResetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicResetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRevokeSessionResponse {
  const PublicRevokeSessionResponse({required this.isSuccess});

  factory PublicRevokeSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRevokeSessionResponseFromJson(json);

  static const toJsonFactory = _$PublicRevokeSessionResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRevokeSessionResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicRevokeSessionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRevokeSessionResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRevokeSessionResponseExtension on PublicRevokeSessionResponse {
  PublicRevokeSessionResponse copyWith({bool? isSuccess}) {
    return PublicRevokeSessionResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicRevokeSessionResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicRevokeSessionResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSetPasswordRequest {
  const PublicSetPasswordRequest({required this.password});

  factory PublicSetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSetPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicSetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSetPasswordRequestToJson(this);

  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicSetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSetPasswordRequest &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^ runtimeType.hashCode;
}

extension $PublicSetPasswordRequestExtension on PublicSetPasswordRequest {
  PublicSetPasswordRequest copyWith({String? password}) {
    return PublicSetPasswordRequest(password: password ?? this.password);
  }

  PublicSetPasswordRequest copyWithWrapped({Wrapped<String>? password}) {
    return PublicSetPasswordRequest(
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSetPasswordResponse {
  const PublicSetPasswordResponse({required this.isSuccess});

  factory PublicSetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSetPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicSetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSetPasswordResponseExtension on PublicSetPasswordResponse {
  PublicSetPasswordResponse copyWith({bool? isSuccess}) {
    return PublicSetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicSetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicSetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicShareArticleResponse {
  const PublicShareArticleResponse({required this.isSuccess});

  factory PublicShareArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicShareArticleResponseFromJson(json);

  static const toJsonFactory = _$PublicShareArticleResponseToJson;
  Map<String, dynamic> toJson() => _$PublicShareArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicShareArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicShareArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicShareArticleResponseExtension on PublicShareArticleResponse {
  PublicShareArticleResponse copyWith({bool? isSuccess}) {
    return PublicShareArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicShareArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicShareArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicShareShortVideoResponse {
  const PublicShareShortVideoResponse({required this.isSuccess});

  factory PublicShareShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicShareShortVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicShareShortVideoResponseToJson;
  Map<String, dynamic> toJson() => _$PublicShareShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicShareShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicShareShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicShareShortVideoResponseExtension
    on PublicShareShortVideoResponse {
  PublicShareShortVideoResponse copyWith({bool? isSuccess}) {
    return PublicShareShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicShareShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicShareShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicShareVideoResponse {
  const PublicShareVideoResponse({required this.isSuccess});

  factory PublicShareVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicShareVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicShareVideoResponseToJson;
  Map<String, dynamic> toJson() => _$PublicShareVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicShareVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicShareVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicShareVideoResponseExtension on PublicShareVideoResponse {
  PublicShareVideoResponse copyWith({bool? isSuccess}) {
    return PublicShareVideoResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicShareVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicShareVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutFromAllDevicesResponse {
  const PublicSignOutFromAllDevicesResponse({required this.isSuccess});

  factory PublicSignOutFromAllDevicesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicSignOutFromAllDevicesResponseFromJson(json);

  static const toJsonFactory = _$PublicSignOutFromAllDevicesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicSignOutFromAllDevicesResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSignOutFromAllDevicesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutFromAllDevicesResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSignOutFromAllDevicesResponseExtension
    on PublicSignOutFromAllDevicesResponse {
  PublicSignOutFromAllDevicesResponse copyWith({bool? isSuccess}) {
    return PublicSignOutFromAllDevicesResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicSignOutFromAllDevicesResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicSignOutFromAllDevicesResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutRequest {
  const PublicSignOutRequest({this.refreshToken});

  factory PublicSignOutRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSignOutRequestFromJson(json);

  static const toJsonFactory = _$PublicSignOutRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSignOutRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  static const fromJsonFactory = _$PublicSignOutRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $PublicSignOutRequestExtension on PublicSignOutRequest {
  PublicSignOutRequest copyWith({String? refreshToken}) {
    return PublicSignOutRequest(
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  PublicSignOutRequest copyWithWrapped({Wrapped<String?>? refreshToken}) {
    return PublicSignOutRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutResponse {
  const PublicSignOutResponse({required this.isSuccess});

  factory PublicSignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSignOutResponseFromJson(json);

  static const toJsonFactory = _$PublicSignOutResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSignOutResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSignOutResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSignOutResponseExtension on PublicSignOutResponse {
  PublicSignOutResponse copyWith({bool? isSuccess}) {
    return PublicSignOutResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicSignOutResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicSignOutResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignUpRequest {
  const PublicSignUpRequest({
    required this.email,
    required this.userName,
    required this.password,
  });

  factory PublicSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSignUpRequestFromJson(json);

  static const toJsonFactory = _$PublicSignUpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSignUpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicSignUpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignUpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $PublicSignUpRequestExtension on PublicSignUpRequest {
  PublicSignUpRequest copyWith({
    String? email,
    String? userName,
    String? password,
  }) {
    return PublicSignUpRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  PublicSignUpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? userName,
    Wrapped<String>? password,
  }) {
    return PublicSignUpRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignUpWebResponse {
  const PublicSignUpWebResponse({
    required this.user,
    required this.verificationRequired,
  });

  factory PublicSignUpWebResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSignUpWebResponseFromJson(json);

  static const toJsonFactory = _$PublicSignUpWebResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSignUpWebResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'verificationRequired')
  final bool verificationRequired;
  static const fromJsonFactory = _$PublicSignUpWebResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignUpWebResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.verificationRequired, verificationRequired) ||
                const DeepCollectionEquality().equals(
                  other.verificationRequired,
                  verificationRequired,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(verificationRequired) ^
      runtimeType.hashCode;
}

extension $PublicSignUpWebResponseExtension on PublicSignUpWebResponse {
  PublicSignUpWebResponse copyWith({
    UserResponseDto? user,
    bool? verificationRequired,
  }) {
    return PublicSignUpWebResponse(
      user: user ?? this.user,
      verificationRequired: verificationRequired ?? this.verificationRequired,
    );
  }

  PublicSignUpWebResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<bool>? verificationRequired,
  }) {
    return PublicSignUpWebResponse(
      user: (user != null ? user.value : this.user),
      verificationRequired: (verificationRequired != null
          ? verificationRequired.value
          : this.verificationRequired),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSocialLoginRequest {
  const PublicSocialLoginRequest({
    required this.email,
    required this.userName,
    this.avatarUrl,
    required this.provider,
  });

  factory PublicSocialLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSocialLoginRequestFromJson(json);

  static const toJsonFactory = _$PublicSocialLoginRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSocialLoginRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'provider')
  final String provider;
  static const fromJsonFactory = _$PublicSocialLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSocialLoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality().equals(
                  other.avatarUrl,
                  avatarUrl,
                )) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality().equals(
                  other.provider,
                  provider,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      runtimeType.hashCode;
}

extension $PublicSocialLoginRequestExtension on PublicSocialLoginRequest {
  PublicSocialLoginRequest copyWith({
    String? email,
    String? userName,
    String? avatarUrl,
    String? provider,
  }) {
    return PublicSocialLoginRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      provider: provider ?? this.provider,
    );
  }

  PublicSocialLoginRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? userName,
    Wrapped<String?>? avatarUrl,
    Wrapped<String>? provider,
  }) {
    return PublicSocialLoginRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
      provider: (provider != null ? provider.value : this.provider),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSocialLoginWebResponse {
  const PublicSocialLoginWebResponse({required this.user});

  factory PublicSocialLoginWebResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSocialLoginWebResponseFromJson(json);

  static const toJsonFactory = _$PublicSocialLoginWebResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSocialLoginWebResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicSocialLoginWebResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSocialLoginWebResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicSocialLoginWebResponseExtension
    on PublicSocialLoginWebResponse {
  PublicSocialLoginWebResponse copyWith({UserResponseDto? user}) {
    return PublicSocialLoginWebResponse(user: user ?? this.user);
  }

  PublicSocialLoginWebResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicSocialLoginWebResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUnbookmarkArticleResponse {
  const PublicUnbookmarkArticleResponse({required this.isSuccess});

  factory PublicUnbookmarkArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUnbookmarkArticleResponseFromJson(json);

  static const toJsonFactory = _$PublicUnbookmarkArticleResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicUnbookmarkArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicUnbookmarkArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUnbookmarkArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicUnbookmarkArticleResponseExtension
    on PublicUnbookmarkArticleResponse {
  PublicUnbookmarkArticleResponse copyWith({bool? isSuccess}) {
    return PublicUnbookmarkArticleResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicUnbookmarkArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicUnbookmarkArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUnbookmarkShortVideoResponse {
  const PublicUnbookmarkShortVideoResponse({required this.isSuccess});

  factory PublicUnbookmarkShortVideoResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicUnbookmarkShortVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicUnbookmarkShortVideoResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicUnbookmarkShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicUnbookmarkShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUnbookmarkShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicUnbookmarkShortVideoResponseExtension
    on PublicUnbookmarkShortVideoResponse {
  PublicUnbookmarkShortVideoResponse copyWith({bool? isSuccess}) {
    return PublicUnbookmarkShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicUnbookmarkShortVideoResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicUnbookmarkShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUnlikeArticleResponse {
  const PublicUnlikeArticleResponse({required this.isSuccess});

  factory PublicUnlikeArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUnlikeArticleResponseFromJson(json);

  static const toJsonFactory = _$PublicUnlikeArticleResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUnlikeArticleResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicUnlikeArticleResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUnlikeArticleResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicUnlikeArticleResponseExtension on PublicUnlikeArticleResponse {
  PublicUnlikeArticleResponse copyWith({bool? isSuccess}) {
    return PublicUnlikeArticleResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicUnlikeArticleResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicUnlikeArticleResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUnlikeShortVideoResponse {
  const PublicUnlikeShortVideoResponse({required this.isSuccess});

  factory PublicUnlikeShortVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUnlikeShortVideoResponseFromJson(json);

  static const toJsonFactory = _$PublicUnlikeShortVideoResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUnlikeShortVideoResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicUnlikeShortVideoResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUnlikeShortVideoResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicUnlikeShortVideoResponseExtension
    on PublicUnlikeShortVideoResponse {
  PublicUnlikeShortVideoResponse copyWith({bool? isSuccess}) {
    return PublicUnlikeShortVideoResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicUnlikeShortVideoResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicUnlikeShortVideoResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateAvatarResponse {
  const PublicUpdateAvatarResponse({required this.user});

  factory PublicUpdateAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateAvatarResponseFromJson(json);

  static const toJsonFactory = _$PublicUpdateAvatarResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateAvatarResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicUpdateAvatarResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateAvatarResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicUpdateAvatarResponseExtension on PublicUpdateAvatarResponse {
  PublicUpdateAvatarResponse copyWith({UserResponseDto? user}) {
    return PublicUpdateAvatarResponse(user: user ?? this.user);
  }

  PublicUpdateAvatarResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return PublicUpdateAvatarResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateOwnProfileRequest {
  const PublicUpdateOwnProfileRequest({
    this.email,
    this.userName,
    this.countryName,
    this.partialPhoneNumber,
    this.countryIsoCode,
    this.countryDialCode,
  });

  factory PublicUpdateOwnProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateOwnProfileRequestFromJson(json);

  static const toJsonFactory = _$PublicUpdateOwnProfileRequestToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateOwnProfileRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  static const fromJsonFactory = _$PublicUpdateOwnProfileRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateOwnProfileRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      runtimeType.hashCode;
}

extension $PublicUpdateOwnProfileRequestExtension
    on PublicUpdateOwnProfileRequest {
  PublicUpdateOwnProfileRequest copyWith({
    String? email,
    String? userName,
    String? countryName,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  PublicUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? email,
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateOwnProfileResponse {
  const PublicUpdateOwnProfileResponse({required this.user});

  factory PublicUpdateOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$PublicUpdateOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicUpdateOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicUpdateOwnProfileResponseExtension
    on PublicUpdateOwnProfileResponse {
  PublicUpdateOwnProfileResponse copyWith({UserResponseDto? user}) {
    return PublicUpdateOwnProfileResponse(user: user ?? this.user);
  }

  PublicUpdateOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicUpdateOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicVerifyOtpRequest {
  const PublicVerifyOtpRequest({
    required this.email,
    required this.code,
    required this.purpose,
  });

  factory PublicVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicVerifyOtpRequestFromJson(json);

  static const toJsonFactory = _$PublicVerifyOtpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicVerifyOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$PublicVerifyOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicVerifyOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $PublicVerifyOtpRequestExtension on PublicVerifyOtpRequest {
  PublicVerifyOtpRequest copyWith({
    String? email,
    String? code,
    String? purpose,
  }) {
    return PublicVerifyOtpRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      purpose: purpose ?? this.purpose,
    );
  }

  PublicVerifyOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? purpose,
  }) {
    return PublicVerifyOtpRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicVerifyOtpResponse {
  const PublicVerifyOtpResponse({required this.isSuccess});

  factory PublicVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicVerifyOtpResponseFromJson(json);

  static const toJsonFactory = _$PublicVerifyOtpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicVerifyOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicVerifyOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicVerifyOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicVerifyOtpResponseExtension on PublicVerifyOtpResponse {
  PublicVerifyOtpResponse copyWith({bool? isSuccess}) {
    return PublicVerifyOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicVerifyOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicVerifyOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDto {
  const RoleDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.name,
    required this.description,
    required this.isActive,
    required this.isDeleted,
    this.deletedAt,
  });

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);

  static const toJsonFactory = _$RoleDtoToJson;
  Map<String, dynamic> toJson() => _$RoleDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$RoleDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $RoleDtoExtension on RoleDto {
  RoleDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? name,
    String? description,
    bool? isActive,
    bool? isDeleted,
    DateTime? deletedAt,
  }) {
    return RoleDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  RoleDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String>? description,
    Wrapped<bool>? isActive,
    Wrapped<bool>? isDeleted,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return RoleDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      isActive: (isActive != null ? isActive.value : this.isActive),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDtoPaginatedResult {
  const RoleDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory RoleDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$RoleDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$RoleDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <RoleDto>[])
  final List<RoleDto> items;
  static const fromJsonFactory = _$RoleDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RoleDtoPaginatedResultExtension on RoleDtoPaginatedResult {
  RoleDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<RoleDto>? items,
  }) {
    return RoleDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  RoleDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<RoleDto>>? items,
  }) {
    return RoleDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleWithPermissionsDto {
  const RoleWithPermissionsDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.name,
    required this.description,
    required this.isActive,
    required this.isDeleted,
    this.deletedAt,
    required this.permissions,
  });

  factory RoleWithPermissionsDto.fromJson(Map<String, dynamic> json) =>
      _$RoleWithPermissionsDtoFromJson(json);

  static const toJsonFactory = _$RoleWithPermissionsDtoToJson;
  Map<String, dynamic> toJson() => _$RoleWithPermissionsDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  @JsonKey(name: 'permissions', defaultValue: <PermissionDto>[])
  final List<PermissionDto> permissions;
  static const fromJsonFactory = _$RoleWithPermissionsDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleWithPermissionsDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality().equals(
                  other.permissions,
                  permissions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(permissions) ^
      runtimeType.hashCode;
}

extension $RoleWithPermissionsDtoExtension on RoleWithPermissionsDto {
  RoleWithPermissionsDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? name,
    String? description,
    bool? isActive,
    bool? isDeleted,
    DateTime? deletedAt,
    List<PermissionDto>? permissions,
  }) {
    return RoleWithPermissionsDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedAt: deletedAt ?? this.deletedAt,
      permissions: permissions ?? this.permissions,
    );
  }

  RoleWithPermissionsDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String>? description,
    Wrapped<bool>? isActive,
    Wrapped<bool>? isDeleted,
    Wrapped<DateTime?>? deletedAt,
    Wrapped<List<PermissionDto>>? permissions,
  }) {
    return RoleWithPermissionsDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
      isActive: (isActive != null ? isActive.value : this.isActive),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
      permissions: (permissions != null ? permissions.value : this.permissions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SessionDto {
  const SessionDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    this.ipAddress,
    this.userAgent,
    required this.browser,
    required this.device,
    required this.platform,
    required this.$client,
    required this.expiresAt,
    required this.isActive,
    required this.isCurrent,
  });

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);

  static const toJsonFactory = _$SessionDtoToJson;
  Map<String, dynamic> toJson() => _$SessionDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'ipAddress')
  final String? ipAddress;
  @JsonKey(name: 'userAgent')
  final String? userAgent;
  @JsonKey(
    name: 'browser',
    toJson: sessionDtoBrowserToJson,
    fromJson: sessionDtoBrowserFromJson,
  )
  final enums.SessionDtoBrowser browser;
  @JsonKey(
    name: 'device',
    toJson: sessionDtoDeviceToJson,
    fromJson: sessionDtoDeviceFromJson,
  )
  final enums.SessionDtoDevice device;
  @JsonKey(
    name: 'platform',
    toJson: sessionDtoPlatformToJson,
    fromJson: sessionDtoPlatformFromJson,
  )
  final enums.SessionDtoPlatform platform;
  @JsonKey(
    name: 'client',
    toJson: sessionDtoClientToJson,
    fromJson: sessionDtoClientFromJson,
  )
  final enums.SessionDtoClient $client;
  @JsonKey(name: 'expiresAt')
  final DateTime expiresAt;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'isCurrent')
  final bool isCurrent;
  static const fromJsonFactory = _$SessionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SessionDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ipAddress, ipAddress) ||
                const DeepCollectionEquality().equals(
                  other.ipAddress,
                  ipAddress,
                )) &&
            (identical(other.userAgent, userAgent) ||
                const DeepCollectionEquality().equals(
                  other.userAgent,
                  userAgent,
                )) &&
            (identical(other.browser, browser) ||
                const DeepCollectionEquality().equals(
                  other.browser,
                  browser,
                )) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality().equals(
                  other.platform,
                  platform,
                )) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality().equals(
                  other.$client,
                  $client,
                )) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality().equals(
                  other.expiresAt,
                  expiresAt,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.isCurrent, isCurrent) ||
                const DeepCollectionEquality().equals(
                  other.isCurrent,
                  isCurrent,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ipAddress) ^
      const DeepCollectionEquality().hash(userAgent) ^
      const DeepCollectionEquality().hash(browser) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(isCurrent) ^
      runtimeType.hashCode;
}

extension $SessionDtoExtension on SessionDto {
  SessionDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? ipAddress,
    String? userAgent,
    enums.SessionDtoBrowser? browser,
    enums.SessionDtoDevice? device,
    enums.SessionDtoPlatform? platform,
    enums.SessionDtoClient? $client,
    DateTime? expiresAt,
    bool? isActive,
    bool? isCurrent,
  }) {
    return SessionDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      userAgent: userAgent ?? this.userAgent,
      browser: browser ?? this.browser,
      device: device ?? this.device,
      platform: platform ?? this.platform,
      $client: $client ?? this.$client,
      expiresAt: expiresAt ?? this.expiresAt,
      isActive: isActive ?? this.isActive,
      isCurrent: isCurrent ?? this.isCurrent,
    );
  }

  SessionDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String?>? ipAddress,
    Wrapped<String?>? userAgent,
    Wrapped<enums.SessionDtoBrowser>? browser,
    Wrapped<enums.SessionDtoDevice>? device,
    Wrapped<enums.SessionDtoPlatform>? platform,
    Wrapped<enums.SessionDtoClient>? $client,
    Wrapped<DateTime>? expiresAt,
    Wrapped<bool>? isActive,
    Wrapped<bool>? isCurrent,
  }) {
    return SessionDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      ipAddress: (ipAddress != null ? ipAddress.value : this.ipAddress),
      userAgent: (userAgent != null ? userAgent.value : this.userAgent),
      browser: (browser != null ? browser.value : this.browser),
      device: (device != null ? device.value : this.device),
      platform: (platform != null ? platform.value : this.platform),
      $client: ($client != null ? $client.value : this.$client),
      expiresAt: (expiresAt != null ? expiresAt.value : this.expiresAt),
      isActive: (isActive != null ? isActive.value : this.isActive),
      isCurrent: (isCurrent != null ? isCurrent.value : this.isCurrent),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SessionDtoPaginatedResult {
  const SessionDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory SessionDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$SessionDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$SessionDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <SessionDto>[])
  final List<SessionDto> items;
  static const fromJsonFactory = _$SessionDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SessionDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $SessionDtoPaginatedResultExtension on SessionDtoPaginatedResult {
  SessionDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<SessionDto>? items,
  }) {
    return SessionDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  SessionDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<SessionDto>>? items,
  }) {
    return SessionDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShortVideoDto {
  const ShortVideoDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.title,
    required this.slug,
    required this.videoUrl,
    this.thumbnailUrl,
    required this.hasFullVideo,
    required this.isActive,
    required this.viewCount,
    required this.likeCount,
    required this.shareCount,
    required this.bookmarkCount,
  });

  factory ShortVideoDto.fromJson(Map<String, dynamic> json) =>
      _$ShortVideoDtoFromJson(json);

  static const toJsonFactory = _$ShortVideoDtoToJson;
  Map<String, dynamic> toJson() => _$ShortVideoDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;
  @JsonKey(name: 'hasFullVideo')
  final bool hasFullVideo;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'viewCount')
  final int viewCount;
  @JsonKey(name: 'likeCount')
  final int likeCount;
  @JsonKey(name: 'shareCount')
  final int shareCount;
  @JsonKey(name: 'bookmarkCount')
  final int bookmarkCount;
  static const fromJsonFactory = _$ShortVideoDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShortVideoDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.hasFullVideo, hasFullVideo) ||
                const DeepCollectionEquality().equals(
                  other.hasFullVideo,
                  hasFullVideo,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.viewCount, viewCount) ||
                const DeepCollectionEquality().equals(
                  other.viewCount,
                  viewCount,
                )) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality().equals(
                  other.likeCount,
                  likeCount,
                )) &&
            (identical(other.shareCount, shareCount) ||
                const DeepCollectionEquality().equals(
                  other.shareCount,
                  shareCount,
                )) &&
            (identical(other.bookmarkCount, bookmarkCount) ||
                const DeepCollectionEquality().equals(
                  other.bookmarkCount,
                  bookmarkCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(hasFullVideo) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(viewCount) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(shareCount) ^
      const DeepCollectionEquality().hash(bookmarkCount) ^
      runtimeType.hashCode;
}

extension $ShortVideoDtoExtension on ShortVideoDto {
  ShortVideoDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? title,
    String? slug,
    String? videoUrl,
    String? thumbnailUrl,
    bool? hasFullVideo,
    bool? isActive,
    int? viewCount,
    int? likeCount,
    int? shareCount,
    int? bookmarkCount,
  }) {
    return ShortVideoDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      videoUrl: videoUrl ?? this.videoUrl,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      hasFullVideo: hasFullVideo ?? this.hasFullVideo,
      isActive: isActive ?? this.isActive,
      viewCount: viewCount ?? this.viewCount,
      likeCount: likeCount ?? this.likeCount,
      shareCount: shareCount ?? this.shareCount,
      bookmarkCount: bookmarkCount ?? this.bookmarkCount,
    );
  }

  ShortVideoDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String>? videoUrl,
    Wrapped<String?>? thumbnailUrl,
    Wrapped<bool>? hasFullVideo,
    Wrapped<bool>? isActive,
    Wrapped<int>? viewCount,
    Wrapped<int>? likeCount,
    Wrapped<int>? shareCount,
    Wrapped<int>? bookmarkCount,
  }) {
    return ShortVideoDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      hasFullVideo: (hasFullVideo != null
          ? hasFullVideo.value
          : this.hasFullVideo),
      isActive: (isActive != null ? isActive.value : this.isActive),
      viewCount: (viewCount != null ? viewCount.value : this.viewCount),
      likeCount: (likeCount != null ? likeCount.value : this.likeCount),
      shareCount: (shareCount != null ? shareCount.value : this.shareCount),
      bookmarkCount: (bookmarkCount != null
          ? bookmarkCount.value
          : this.bookmarkCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShortVideoDtoPaginatedResult {
  const ShortVideoDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory ShortVideoDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$ShortVideoDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$ShortVideoDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$ShortVideoDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <ShortVideoDto>[])
  final List<ShortVideoDto> items;
  static const fromJsonFactory = _$ShortVideoDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShortVideoDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ShortVideoDtoPaginatedResultExtension
    on ShortVideoDtoPaginatedResult {
  ShortVideoDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<ShortVideoDto>? items,
  }) {
    return ShortVideoDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  ShortVideoDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<ShortVideoDto>>? items,
  }) {
    return ShortVideoDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TagDto {
  const TagDto({required this.id, required this.name, required this.slug});

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  static const toJsonFactory = _$TagDtoToJson;
  Map<String, dynamic> toJson() => _$TagDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'slug')
  final String slug;
  static const fromJsonFactory = _$TagDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TagDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      runtimeType.hashCode;
}

extension $TagDtoExtension on TagDto {
  TagDto copyWith({String? id, String? name, String? slug}) {
    return TagDto(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
    );
  }

  TagDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String>? slug,
  }) {
    return TagDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      slug: (slug != null ? slug.value : this.slug),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseDto {
  const UserResponseDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    this.email,
    required this.userName,
    required this.roles,
    required this.permissions,
    required this.authProvider,
    required this.isVerified,
    required this.isActive,
    this.avatar,
    this.countryName,
    this.countryIsoCode,
    this.countryDialCode,
    this.partialPhoneNumber,
    this.fullPhoneNumber,
  });

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);

  static const toJsonFactory = _$UserResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserResponseDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'roles', defaultValue: <RoleDto>[])
  final List<RoleDto> roles;
  @JsonKey(name: 'permissions', defaultValue: <PermissionDto>[])
  final List<PermissionDto> permissions;
  @JsonKey(
    name: 'authProvider',
    toJson: userResponseDtoAuthProviderToJson,
    fromJson: userResponseDtoAuthProviderFromJson,
  )
  final enums.UserResponseDtoAuthProvider authProvider;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'avatar')
  final FileDto? avatar;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'fullPhoneNumber')
  final String? fullPhoneNumber;
  static const fromJsonFactory = _$UserResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserResponseDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality().equals(
                  other.permissions,
                  permissions,
                )) &&
            (identical(other.authProvider, authProvider) ||
                const DeepCollectionEquality().equals(
                  other.authProvider,
                  authProvider,
                )) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality().equals(
                  other.isVerified,
                  isVerified,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.fullPhoneNumber, fullPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.fullPhoneNumber,
                  fullPhoneNumber,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(authProvider) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(fullPhoneNumber) ^
      runtimeType.hashCode;
}

extension $UserResponseDtoExtension on UserResponseDto {
  UserResponseDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? email,
    String? userName,
    List<RoleDto>? roles,
    List<PermissionDto>? permissions,
    enums.UserResponseDtoAuthProvider? authProvider,
    bool? isVerified,
    bool? isActive,
    FileDto? avatar,
    String? countryName,
    String? countryIsoCode,
    String? countryDialCode,
    String? partialPhoneNumber,
    String? fullPhoneNumber,
  }) {
    return UserResponseDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      email: email ?? this.email,
      userName: userName ?? this.userName,
      roles: roles ?? this.roles,
      permissions: permissions ?? this.permissions,
      authProvider: authProvider ?? this.authProvider,
      isVerified: isVerified ?? this.isVerified,
      isActive: isActive ?? this.isActive,
      avatar: avatar ?? this.avatar,
      countryName: countryName ?? this.countryName,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      fullPhoneNumber: fullPhoneNumber ?? this.fullPhoneNumber,
    );
  }

  UserResponseDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String?>? email,
    Wrapped<String>? userName,
    Wrapped<List<RoleDto>>? roles,
    Wrapped<List<PermissionDto>>? permissions,
    Wrapped<enums.UserResponseDtoAuthProvider>? authProvider,
    Wrapped<bool>? isVerified,
    Wrapped<bool>? isActive,
    Wrapped<FileDto?>? avatar,
    Wrapped<String?>? countryName,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? fullPhoneNumber,
  }) {
    return UserResponseDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      roles: (roles != null ? roles.value : this.roles),
      permissions: (permissions != null ? permissions.value : this.permissions),
      authProvider: (authProvider != null
          ? authProvider.value
          : this.authProvider),
      isVerified: (isVerified != null ? isVerified.value : this.isVerified),
      isActive: (isActive != null ? isActive.value : this.isActive),
      avatar: (avatar != null ? avatar.value : this.avatar),
      countryName: (countryName != null ? countryName.value : this.countryName),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      fullPhoneNumber: (fullPhoneNumber != null
          ? fullPhoneNumber.value
          : this.fullPhoneNumber),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VideoDetailDto {
  const VideoDetailDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.slug,
    this.description,
    this.thumbnailUrl,
    this.thumbnailStorageKey,
    required this.authorId,
    required this.status,
    this.rejectionReason,
    this.youtubeVideoId,
    required this.isFeatured,
    this.featuredUntil,
    required this.hasLyrics,
    this.shootingScheduledAt,
    this.publishedAt,
    this.metaTitle,
    this.metaDescription,
    required this.tags,
  });

  factory VideoDetailDto.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailDtoFromJson(json);

  static const toJsonFactory = _$VideoDetailDtoToJson;
  Map<String, dynamic> toJson() => _$VideoDetailDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;
  @JsonKey(name: 'thumbnailStorageKey')
  final String? thumbnailStorageKey;
  @JsonKey(name: 'authorId')
  final String authorId;
  @JsonKey(
    name: 'status',
    toJson: videoDetailDtoStatusToJson,
    fromJson: videoDetailDtoStatusFromJson,
  )
  final enums.VideoDetailDtoStatus status;
  @JsonKey(name: 'rejectionReason')
  final String? rejectionReason;
  @JsonKey(name: 'youtubeVideoId')
  final String? youtubeVideoId;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'featuredUntil')
  final DateTime? featuredUntil;
  @JsonKey(name: 'hasLyrics')
  final bool hasLyrics;
  @JsonKey(name: 'shootingScheduledAt')
  final DateTime? shootingScheduledAt;
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;
  @JsonKey(name: 'metaTitle')
  final String? metaTitle;
  @JsonKey(name: 'metaDescription')
  final String? metaDescription;
  @JsonKey(name: 'tags', defaultValue: <TagDto>[])
  final List<TagDto> tags;
  static const fromJsonFactory = _$VideoDetailDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VideoDetailDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.thumbnailStorageKey, thumbnailStorageKey) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailStorageKey,
                  thumbnailStorageKey,
                )) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality().equals(
                  other.authorId,
                  authorId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.rejectionReason, rejectionReason) ||
                const DeepCollectionEquality().equals(
                  other.rejectionReason,
                  rejectionReason,
                )) &&
            (identical(other.youtubeVideoId, youtubeVideoId) ||
                const DeepCollectionEquality().equals(
                  other.youtubeVideoId,
                  youtubeVideoId,
                )) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.featuredUntil, featuredUntil) ||
                const DeepCollectionEquality().equals(
                  other.featuredUntil,
                  featuredUntil,
                )) &&
            (identical(other.hasLyrics, hasLyrics) ||
                const DeepCollectionEquality().equals(
                  other.hasLyrics,
                  hasLyrics,
                )) &&
            (identical(other.shootingScheduledAt, shootingScheduledAt) ||
                const DeepCollectionEquality().equals(
                  other.shootingScheduledAt,
                  shootingScheduledAt,
                )) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality().equals(
                  other.publishedAt,
                  publishedAt,
                )) &&
            (identical(other.metaTitle, metaTitle) ||
                const DeepCollectionEquality().equals(
                  other.metaTitle,
                  metaTitle,
                )) &&
            (identical(other.metaDescription, metaDescription) ||
                const DeepCollectionEquality().equals(
                  other.metaDescription,
                  metaDescription,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(thumbnailStorageKey) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(rejectionReason) ^
      const DeepCollectionEquality().hash(youtubeVideoId) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(featuredUntil) ^
      const DeepCollectionEquality().hash(hasLyrics) ^
      const DeepCollectionEquality().hash(shootingScheduledAt) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(metaTitle) ^
      const DeepCollectionEquality().hash(metaDescription) ^
      const DeepCollectionEquality().hash(tags) ^
      runtimeType.hashCode;
}

extension $VideoDetailDtoExtension on VideoDetailDto {
  VideoDetailDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? categoryId,
    String? categoryName,
    String? title,
    String? slug,
    String? description,
    String? thumbnailUrl,
    String? thumbnailStorageKey,
    String? authorId,
    enums.VideoDetailDtoStatus? status,
    String? rejectionReason,
    String? youtubeVideoId,
    bool? isFeatured,
    DateTime? featuredUntil,
    bool? hasLyrics,
    DateTime? shootingScheduledAt,
    DateTime? publishedAt,
    String? metaTitle,
    String? metaDescription,
    List<TagDto>? tags,
  }) {
    return VideoDetailDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailStorageKey: thumbnailStorageKey ?? this.thumbnailStorageKey,
      authorId: authorId ?? this.authorId,
      status: status ?? this.status,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      youtubeVideoId: youtubeVideoId ?? this.youtubeVideoId,
      isFeatured: isFeatured ?? this.isFeatured,
      featuredUntil: featuredUntil ?? this.featuredUntil,
      hasLyrics: hasLyrics ?? this.hasLyrics,
      shootingScheduledAt: shootingScheduledAt ?? this.shootingScheduledAt,
      publishedAt: publishedAt ?? this.publishedAt,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
      tags: tags ?? this.tags,
    );
  }

  VideoDetailDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? categoryId,
    Wrapped<String>? categoryName,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String?>? description,
    Wrapped<String?>? thumbnailUrl,
    Wrapped<String?>? thumbnailStorageKey,
    Wrapped<String>? authorId,
    Wrapped<enums.VideoDetailDtoStatus>? status,
    Wrapped<String?>? rejectionReason,
    Wrapped<String?>? youtubeVideoId,
    Wrapped<bool>? isFeatured,
    Wrapped<DateTime?>? featuredUntil,
    Wrapped<bool>? hasLyrics,
    Wrapped<DateTime?>? shootingScheduledAt,
    Wrapped<DateTime?>? publishedAt,
    Wrapped<String?>? metaTitle,
    Wrapped<String?>? metaDescription,
    Wrapped<List<TagDto>>? tags,
  }) {
    return VideoDetailDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      description: (description != null ? description.value : this.description),
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      thumbnailStorageKey: (thumbnailStorageKey != null
          ? thumbnailStorageKey.value
          : this.thumbnailStorageKey),
      authorId: (authorId != null ? authorId.value : this.authorId),
      status: (status != null ? status.value : this.status),
      rejectionReason: (rejectionReason != null
          ? rejectionReason.value
          : this.rejectionReason),
      youtubeVideoId: (youtubeVideoId != null
          ? youtubeVideoId.value
          : this.youtubeVideoId),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      featuredUntil: (featuredUntil != null
          ? featuredUntil.value
          : this.featuredUntil),
      hasLyrics: (hasLyrics != null ? hasLyrics.value : this.hasLyrics),
      shootingScheduledAt: (shootingScheduledAt != null
          ? shootingScheduledAt.value
          : this.shootingScheduledAt),
      publishedAt: (publishedAt != null ? publishedAt.value : this.publishedAt),
      metaTitle: (metaTitle != null ? metaTitle.value : this.metaTitle),
      metaDescription: (metaDescription != null
          ? metaDescription.value
          : this.metaDescription),
      tags: (tags != null ? tags.value : this.tags),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VideoInPlaylistDto {
  const VideoInPlaylistDto({
    required this.videoId,
    required this.title,
    this.thumbnailUrl,
    required this.ratingAverage,
    required this.ratingCount,
    required this.sortOrder,
  });

  factory VideoInPlaylistDto.fromJson(Map<String, dynamic> json) =>
      _$VideoInPlaylistDtoFromJson(json);

  static const toJsonFactory = _$VideoInPlaylistDtoToJson;
  Map<String, dynamic> toJson() => _$VideoInPlaylistDtoToJson(this);

  @JsonKey(name: 'videoId')
  final String videoId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;
  @JsonKey(name: 'ratingAverage')
  final double ratingAverage;
  @JsonKey(name: 'ratingCount')
  final int ratingCount;
  @JsonKey(name: 'sortOrder')
  final int sortOrder;
  static const fromJsonFactory = _$VideoInPlaylistDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VideoInPlaylistDto &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(
                  other.videoId,
                  videoId,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.ratingAverage, ratingAverage) ||
                const DeepCollectionEquality().equals(
                  other.ratingAverage,
                  ratingAverage,
                )) &&
            (identical(other.ratingCount, ratingCount) ||
                const DeepCollectionEquality().equals(
                  other.ratingCount,
                  ratingCount,
                )) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality().equals(
                  other.sortOrder,
                  sortOrder,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(ratingAverage) ^
      const DeepCollectionEquality().hash(ratingCount) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      runtimeType.hashCode;
}

extension $VideoInPlaylistDtoExtension on VideoInPlaylistDto {
  VideoInPlaylistDto copyWith({
    String? videoId,
    String? title,
    String? thumbnailUrl,
    double? ratingAverage,
    int? ratingCount,
    int? sortOrder,
  }) {
    return VideoInPlaylistDto(
      videoId: videoId ?? this.videoId,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      ratingAverage: ratingAverage ?? this.ratingAverage,
      ratingCount: ratingCount ?? this.ratingCount,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  VideoInPlaylistDto copyWithWrapped({
    Wrapped<String>? videoId,
    Wrapped<String>? title,
    Wrapped<String?>? thumbnailUrl,
    Wrapped<double>? ratingAverage,
    Wrapped<int>? ratingCount,
    Wrapped<int>? sortOrder,
  }) {
    return VideoInPlaylistDto(
      videoId: (videoId != null ? videoId.value : this.videoId),
      title: (title != null ? title.value : this.title),
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      ratingAverage: (ratingAverage != null
          ? ratingAverage.value
          : this.ratingAverage),
      ratingCount: (ratingCount != null ? ratingCount.value : this.ratingCount),
      sortOrder: (sortOrder != null ? sortOrder.value : this.sortOrder),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VideoSummaryDto {
  const VideoSummaryDto({
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.slug,
    this.thumbnailUrl,
    required this.authorId,
    required this.status,
    this.youtubeVideoId,
    required this.isFeatured,
    required this.hasLyrics,
    this.publishedAt,
  });

  factory VideoSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$VideoSummaryDtoFromJson(json);

  static const toJsonFactory = _$VideoSummaryDtoToJson;
  Map<String, dynamic> toJson() => _$VideoSummaryDtoToJson(this);

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'createdBy')
  final String? createdBy;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;
  @JsonKey(name: 'authorId')
  final String authorId;
  @JsonKey(
    name: 'status',
    toJson: videoSummaryDtoStatusToJson,
    fromJson: videoSummaryDtoStatusFromJson,
  )
  final enums.VideoSummaryDtoStatus status;
  @JsonKey(name: 'youtubeVideoId')
  final String? youtubeVideoId;
  @JsonKey(name: 'isFeatured')
  final bool isFeatured;
  @JsonKey(name: 'hasLyrics')
  final bool hasLyrics;
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;
  static const fromJsonFactory = _$VideoSummaryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VideoSummaryDto &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(
                  other.updatedBy,
                  updatedBy,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality().equals(
                  other.thumbnailUrl,
                  thumbnailUrl,
                )) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality().equals(
                  other.authorId,
                  authorId,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.youtubeVideoId, youtubeVideoId) ||
                const DeepCollectionEquality().equals(
                  other.youtubeVideoId,
                  youtubeVideoId,
                )) &&
            (identical(other.isFeatured, isFeatured) ||
                const DeepCollectionEquality().equals(
                  other.isFeatured,
                  isFeatured,
                )) &&
            (identical(other.hasLyrics, hasLyrics) ||
                const DeepCollectionEquality().equals(
                  other.hasLyrics,
                  hasLyrics,
                )) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality().equals(
                  other.publishedAt,
                  publishedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(youtubeVideoId) ^
      const DeepCollectionEquality().hash(isFeatured) ^
      const DeepCollectionEquality().hash(hasLyrics) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      runtimeType.hashCode;
}

extension $VideoSummaryDtoExtension on VideoSummaryDto {
  VideoSummaryDto copyWith({
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    String? id,
    String? categoryId,
    String? categoryName,
    String? title,
    String? slug,
    String? thumbnailUrl,
    String? authorId,
    enums.VideoSummaryDtoStatus? status,
    String? youtubeVideoId,
    bool? isFeatured,
    bool? hasLyrics,
    DateTime? publishedAt,
  }) {
    return VideoSummaryDto(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      authorId: authorId ?? this.authorId,
      status: status ?? this.status,
      youtubeVideoId: youtubeVideoId ?? this.youtubeVideoId,
      isFeatured: isFeatured ?? this.isFeatured,
      hasLyrics: hasLyrics ?? this.hasLyrics,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  VideoSummaryDto copyWithWrapped({
    Wrapped<DateTime?>? createdAt,
    Wrapped<String?>? createdBy,
    Wrapped<DateTime?>? updatedAt,
    Wrapped<String?>? updatedBy,
    Wrapped<String>? id,
    Wrapped<String>? categoryId,
    Wrapped<String>? categoryName,
    Wrapped<String>? title,
    Wrapped<String>? slug,
    Wrapped<String?>? thumbnailUrl,
    Wrapped<String>? authorId,
    Wrapped<enums.VideoSummaryDtoStatus>? status,
    Wrapped<String?>? youtubeVideoId,
    Wrapped<bool>? isFeatured,
    Wrapped<bool>? hasLyrics,
    Wrapped<DateTime?>? publishedAt,
  }) {
    return VideoSummaryDto(
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
      id: (id != null ? id.value : this.id),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      title: (title != null ? title.value : this.title),
      slug: (slug != null ? slug.value : this.slug),
      thumbnailUrl: (thumbnailUrl != null
          ? thumbnailUrl.value
          : this.thumbnailUrl),
      authorId: (authorId != null ? authorId.value : this.authorId),
      status: (status != null ? status.value : this.status),
      youtubeVideoId: (youtubeVideoId != null
          ? youtubeVideoId.value
          : this.youtubeVideoId),
      isFeatured: (isFeatured != null ? isFeatured.value : this.isFeatured),
      hasLyrics: (hasLyrics != null ? hasLyrics.value : this.hasLyrics),
      publishedAt: (publishedAt != null ? publishedAt.value : this.publishedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VideoSummaryDtoPaginatedResult {
  const VideoSummaryDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory VideoSummaryDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$VideoSummaryDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$VideoSummaryDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$VideoSummaryDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <VideoSummaryDto>[])
  final List<VideoSummaryDto> items;
  static const fromJsonFactory = _$VideoSummaryDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VideoSummaryDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VideoSummaryDtoPaginatedResultExtension
    on VideoSummaryDtoPaginatedResult {
  VideoSummaryDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<VideoSummaryDto>? items,
  }) {
    return VideoSummaryDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  VideoSummaryDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<VideoSummaryDto>>? items,
  }) {
    return VideoSummaryDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminArticlesIdImagesPost$RequestBody {
  const ApiV1AdminArticlesIdImagesPost$RequestBody({required this.file});

  factory ApiV1AdminArticlesIdImagesPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminArticlesIdImagesPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AdminArticlesIdImagesPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminArticlesIdImagesPost$RequestBodyToJson(this);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$ApiV1AdminArticlesIdImagesPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminArticlesIdImagesPost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $ApiV1AdminArticlesIdImagesPost$RequestBodyExtension
    on ApiV1AdminArticlesIdImagesPost$RequestBody {
  ApiV1AdminArticlesIdImagesPost$RequestBody copyWith({String? file}) {
    return ApiV1AdminArticlesIdImagesPost$RequestBody(file: file ?? this.file);
  }

  ApiV1AdminArticlesIdImagesPost$RequestBody copyWithWrapped({
    Wrapped<String>? file,
  }) {
    return ApiV1AdminArticlesIdImagesPost$RequestBody(
      file: (file != null ? file.value : this.file),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminMeAvatarPatch$RequestBody {
  const ApiV1AdminMeAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1AdminMeAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminMeAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1AdminMeAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminMeAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory = _$ApiV1AdminMeAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminMeAvatarPatch$RequestBody &&
            (identical(other.avatarFile, avatarFile) ||
                const DeepCollectionEquality().equals(
                  other.avatarFile,
                  avatarFile,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(avatarFile) ^ runtimeType.hashCode;
}

extension $ApiV1AdminMeAvatarPatch$RequestBodyExtension
    on ApiV1AdminMeAvatarPatch$RequestBody {
  ApiV1AdminMeAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1AdminMeAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1AdminMeAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1AdminMeAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminOrdersIdPaymentProofPost$RequestBody {
  const ApiV1AdminOrdersIdPaymentProofPost$RequestBody({required this.file});

  factory ApiV1AdminOrdersIdPaymentProofPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyToJson(this);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminOrdersIdPaymentProofPost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $ApiV1AdminOrdersIdPaymentProofPost$RequestBodyExtension
    on ApiV1AdminOrdersIdPaymentProofPost$RequestBody {
  ApiV1AdminOrdersIdPaymentProofPost$RequestBody copyWith({String? file}) {
    return ApiV1AdminOrdersIdPaymentProofPost$RequestBody(
      file: file ?? this.file,
    );
  }

  ApiV1AdminOrdersIdPaymentProofPost$RequestBody copyWithWrapped({
    Wrapped<String>? file,
  }) {
    return ApiV1AdminOrdersIdPaymentProofPost$RequestBody(
      file: (file != null ? file.value : this.file),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminShortsPost$RequestBody {
  const ApiV1AdminShortsPost$RequestBody({required this.videoFile});

  factory ApiV1AdminShortsPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminShortsPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1AdminShortsPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminShortsPost$RequestBodyToJson(this);

  @JsonKey(name: 'videoFile')
  final String videoFile;
  static const fromJsonFactory = _$ApiV1AdminShortsPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminShortsPost$RequestBody &&
            (identical(other.videoFile, videoFile) ||
                const DeepCollectionEquality().equals(
                  other.videoFile,
                  videoFile,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoFile) ^ runtimeType.hashCode;
}

extension $ApiV1AdminShortsPost$RequestBodyExtension
    on ApiV1AdminShortsPost$RequestBody {
  ApiV1AdminShortsPost$RequestBody copyWith({String? videoFile}) {
    return ApiV1AdminShortsPost$RequestBody(
      videoFile: videoFile ?? this.videoFile,
    );
  }

  ApiV1AdminShortsPost$RequestBody copyWithWrapped({
    Wrapped<String>? videoFile,
  }) {
    return ApiV1AdminShortsPost$RequestBody(
      videoFile: (videoFile != null ? videoFile.value : this.videoFile),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminShortsIdThumbnailPost$RequestBody {
  const ApiV1AdminShortsIdThumbnailPost$RequestBody({required this.file});

  factory ApiV1AdminShortsIdThumbnailPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminShortsIdThumbnailPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AdminShortsIdThumbnailPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminShortsIdThumbnailPost$RequestBodyToJson(this);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$ApiV1AdminShortsIdThumbnailPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminShortsIdThumbnailPost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $ApiV1AdminShortsIdThumbnailPost$RequestBodyExtension
    on ApiV1AdminShortsIdThumbnailPost$RequestBody {
  ApiV1AdminShortsIdThumbnailPost$RequestBody copyWith({String? file}) {
    return ApiV1AdminShortsIdThumbnailPost$RequestBody(file: file ?? this.file);
  }

  ApiV1AdminShortsIdThumbnailPost$RequestBody copyWithWrapped({
    Wrapped<String>? file,
  }) {
    return ApiV1AdminShortsIdThumbnailPost$RequestBody(
      file: (file != null ? file.value : this.file),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminVideosIdThumbnailPost$RequestBody {
  const ApiV1AdminVideosIdThumbnailPost$RequestBody({required this.file});

  factory ApiV1AdminVideosIdThumbnailPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminVideosIdThumbnailPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AdminVideosIdThumbnailPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminVideosIdThumbnailPost$RequestBodyToJson(this);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$ApiV1AdminVideosIdThumbnailPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminVideosIdThumbnailPost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $ApiV1AdminVideosIdThumbnailPost$RequestBodyExtension
    on ApiV1AdminVideosIdThumbnailPost$RequestBody {
  ApiV1AdminVideosIdThumbnailPost$RequestBody copyWith({String? file}) {
    return ApiV1AdminVideosIdThumbnailPost$RequestBody(file: file ?? this.file);
  }

  ApiV1AdminVideosIdThumbnailPost$RequestBody copyWithWrapped({
    Wrapped<String>? file,
  }) {
    return ApiV1AdminVideosIdThumbnailPost$RequestBody(
      file: (file != null ? file.value : this.file),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1PublicMeAvatarPatch$RequestBody {
  const ApiV1PublicMeAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1PublicMeAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1PublicMeAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1PublicMeAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1PublicMeAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory = _$ApiV1PublicMeAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1PublicMeAvatarPatch$RequestBody &&
            (identical(other.avatarFile, avatarFile) ||
                const DeepCollectionEquality().equals(
                  other.avatarFile,
                  avatarFile,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(avatarFile) ^ runtimeType.hashCode;
}

extension $ApiV1PublicMeAvatarPatch$RequestBodyExtension
    on ApiV1PublicMeAvatarPatch$RequestBody {
  ApiV1PublicMeAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1PublicMeAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1PublicMeAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1PublicMeAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
}

String? adminAddOrderItemRequestContentKindNullableToJson(
  enums.AdminAddOrderItemRequestContentKind?
  adminAddOrderItemRequestContentKind,
) {
  return adminAddOrderItemRequestContentKind?.value;
}

String? adminAddOrderItemRequestContentKindToJson(
  enums.AdminAddOrderItemRequestContentKind adminAddOrderItemRequestContentKind,
) {
  return adminAddOrderItemRequestContentKind.value;
}

enums.AdminAddOrderItemRequestContentKind
adminAddOrderItemRequestContentKindFromJson(
  Object? adminAddOrderItemRequestContentKind, [
  enums.AdminAddOrderItemRequestContentKind? defaultValue,
]) {
  return enums.AdminAddOrderItemRequestContentKind.values.firstWhereOrNull(
        (e) => e.value == adminAddOrderItemRequestContentKind,
      ) ??
      defaultValue ??
      enums.AdminAddOrderItemRequestContentKind.swaggerGeneratedUnknown;
}

enums.AdminAddOrderItemRequestContentKind?
adminAddOrderItemRequestContentKindNullableFromJson(
  Object? adminAddOrderItemRequestContentKind, [
  enums.AdminAddOrderItemRequestContentKind? defaultValue,
]) {
  if (adminAddOrderItemRequestContentKind == null) {
    return null;
  }
  return enums.AdminAddOrderItemRequestContentKind.values.firstWhereOrNull(
        (e) => e.value == adminAddOrderItemRequestContentKind,
      ) ??
      defaultValue;
}

String adminAddOrderItemRequestContentKindExplodedListToJson(
  List<enums.AdminAddOrderItemRequestContentKind>?
  adminAddOrderItemRequestContentKind,
) {
  return adminAddOrderItemRequestContentKind?.map((e) => e.value!).join(',') ??
      '';
}

List<String> adminAddOrderItemRequestContentKindListToJson(
  List<enums.AdminAddOrderItemRequestContentKind>?
  adminAddOrderItemRequestContentKind,
) {
  if (adminAddOrderItemRequestContentKind == null) {
    return [];
  }

  return adminAddOrderItemRequestContentKind.map((e) => e.value!).toList();
}

List<enums.AdminAddOrderItemRequestContentKind>
adminAddOrderItemRequestContentKindListFromJson(
  List? adminAddOrderItemRequestContentKind, [
  List<enums.AdminAddOrderItemRequestContentKind>? defaultValue,
]) {
  if (adminAddOrderItemRequestContentKind == null) {
    return defaultValue ?? [];
  }

  return adminAddOrderItemRequestContentKind
      .map((e) => adminAddOrderItemRequestContentKindFromJson(e.toString()))
      .toList();
}

List<enums.AdminAddOrderItemRequestContentKind>?
adminAddOrderItemRequestContentKindNullableListFromJson(
  List? adminAddOrderItemRequestContentKind, [
  List<enums.AdminAddOrderItemRequestContentKind>? defaultValue,
]) {
  if (adminAddOrderItemRequestContentKind == null) {
    return defaultValue;
  }

  return adminAddOrderItemRequestContentKind
      .map((e) => adminAddOrderItemRequestContentKindFromJson(e.toString()))
      .toList();
}

String? articleDetailDtoStatusNullableToJson(
  enums.ArticleDetailDtoStatus? articleDetailDtoStatus,
) {
  return articleDetailDtoStatus?.value;
}

String? articleDetailDtoStatusToJson(
  enums.ArticleDetailDtoStatus articleDetailDtoStatus,
) {
  return articleDetailDtoStatus.value;
}

enums.ArticleDetailDtoStatus articleDetailDtoStatusFromJson(
  Object? articleDetailDtoStatus, [
  enums.ArticleDetailDtoStatus? defaultValue,
]) {
  return enums.ArticleDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == articleDetailDtoStatus,
      ) ??
      defaultValue ??
      enums.ArticleDetailDtoStatus.swaggerGeneratedUnknown;
}

enums.ArticleDetailDtoStatus? articleDetailDtoStatusNullableFromJson(
  Object? articleDetailDtoStatus, [
  enums.ArticleDetailDtoStatus? defaultValue,
]) {
  if (articleDetailDtoStatus == null) {
    return null;
  }
  return enums.ArticleDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == articleDetailDtoStatus,
      ) ??
      defaultValue;
}

String articleDetailDtoStatusExplodedListToJson(
  List<enums.ArticleDetailDtoStatus>? articleDetailDtoStatus,
) {
  return articleDetailDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> articleDetailDtoStatusListToJson(
  List<enums.ArticleDetailDtoStatus>? articleDetailDtoStatus,
) {
  if (articleDetailDtoStatus == null) {
    return [];
  }

  return articleDetailDtoStatus.map((e) => e.value!).toList();
}

List<enums.ArticleDetailDtoStatus> articleDetailDtoStatusListFromJson(
  List? articleDetailDtoStatus, [
  List<enums.ArticleDetailDtoStatus>? defaultValue,
]) {
  if (articleDetailDtoStatus == null) {
    return defaultValue ?? [];
  }

  return articleDetailDtoStatus
      .map((e) => articleDetailDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ArticleDetailDtoStatus>? articleDetailDtoStatusNullableListFromJson(
  List? articleDetailDtoStatus, [
  List<enums.ArticleDetailDtoStatus>? defaultValue,
]) {
  if (articleDetailDtoStatus == null) {
    return defaultValue;
  }

  return articleDetailDtoStatus
      .map((e) => articleDetailDtoStatusFromJson(e.toString()))
      .toList();
}

String? articleImageDtoImageTypeNullableToJson(
  enums.ArticleImageDtoImageType? articleImageDtoImageType,
) {
  return articleImageDtoImageType?.value;
}

String? articleImageDtoImageTypeToJson(
  enums.ArticleImageDtoImageType articleImageDtoImageType,
) {
  return articleImageDtoImageType.value;
}

enums.ArticleImageDtoImageType articleImageDtoImageTypeFromJson(
  Object? articleImageDtoImageType, [
  enums.ArticleImageDtoImageType? defaultValue,
]) {
  return enums.ArticleImageDtoImageType.values.firstWhereOrNull(
        (e) => e.value == articleImageDtoImageType,
      ) ??
      defaultValue ??
      enums.ArticleImageDtoImageType.swaggerGeneratedUnknown;
}

enums.ArticleImageDtoImageType? articleImageDtoImageTypeNullableFromJson(
  Object? articleImageDtoImageType, [
  enums.ArticleImageDtoImageType? defaultValue,
]) {
  if (articleImageDtoImageType == null) {
    return null;
  }
  return enums.ArticleImageDtoImageType.values.firstWhereOrNull(
        (e) => e.value == articleImageDtoImageType,
      ) ??
      defaultValue;
}

String articleImageDtoImageTypeExplodedListToJson(
  List<enums.ArticleImageDtoImageType>? articleImageDtoImageType,
) {
  return articleImageDtoImageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> articleImageDtoImageTypeListToJson(
  List<enums.ArticleImageDtoImageType>? articleImageDtoImageType,
) {
  if (articleImageDtoImageType == null) {
    return [];
  }

  return articleImageDtoImageType.map((e) => e.value!).toList();
}

List<enums.ArticleImageDtoImageType> articleImageDtoImageTypeListFromJson(
  List? articleImageDtoImageType, [
  List<enums.ArticleImageDtoImageType>? defaultValue,
]) {
  if (articleImageDtoImageType == null) {
    return defaultValue ?? [];
  }

  return articleImageDtoImageType
      .map((e) => articleImageDtoImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ArticleImageDtoImageType>?
articleImageDtoImageTypeNullableListFromJson(
  List? articleImageDtoImageType, [
  List<enums.ArticleImageDtoImageType>? defaultValue,
]) {
  if (articleImageDtoImageType == null) {
    return defaultValue;
  }

  return articleImageDtoImageType
      .map((e) => articleImageDtoImageTypeFromJson(e.toString()))
      .toList();
}

String? articleSummaryDtoStatusNullableToJson(
  enums.ArticleSummaryDtoStatus? articleSummaryDtoStatus,
) {
  return articleSummaryDtoStatus?.value;
}

String? articleSummaryDtoStatusToJson(
  enums.ArticleSummaryDtoStatus articleSummaryDtoStatus,
) {
  return articleSummaryDtoStatus.value;
}

enums.ArticleSummaryDtoStatus articleSummaryDtoStatusFromJson(
  Object? articleSummaryDtoStatus, [
  enums.ArticleSummaryDtoStatus? defaultValue,
]) {
  return enums.ArticleSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == articleSummaryDtoStatus,
      ) ??
      defaultValue ??
      enums.ArticleSummaryDtoStatus.swaggerGeneratedUnknown;
}

enums.ArticleSummaryDtoStatus? articleSummaryDtoStatusNullableFromJson(
  Object? articleSummaryDtoStatus, [
  enums.ArticleSummaryDtoStatus? defaultValue,
]) {
  if (articleSummaryDtoStatus == null) {
    return null;
  }
  return enums.ArticleSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == articleSummaryDtoStatus,
      ) ??
      defaultValue;
}

String articleSummaryDtoStatusExplodedListToJson(
  List<enums.ArticleSummaryDtoStatus>? articleSummaryDtoStatus,
) {
  return articleSummaryDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> articleSummaryDtoStatusListToJson(
  List<enums.ArticleSummaryDtoStatus>? articleSummaryDtoStatus,
) {
  if (articleSummaryDtoStatus == null) {
    return [];
  }

  return articleSummaryDtoStatus.map((e) => e.value!).toList();
}

List<enums.ArticleSummaryDtoStatus> articleSummaryDtoStatusListFromJson(
  List? articleSummaryDtoStatus, [
  List<enums.ArticleSummaryDtoStatus>? defaultValue,
]) {
  if (articleSummaryDtoStatus == null) {
    return defaultValue ?? [];
  }

  return articleSummaryDtoStatus
      .map((e) => articleSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ArticleSummaryDtoStatus>?
articleSummaryDtoStatusNullableListFromJson(
  List? articleSummaryDtoStatus, [
  List<enums.ArticleSummaryDtoStatus>? defaultValue,
]) {
  if (articleSummaryDtoStatus == null) {
    return defaultValue;
  }

  return articleSummaryDtoStatus
      .map((e) => articleSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

String? contentOrderDetailDtoStatusNullableToJson(
  enums.ContentOrderDetailDtoStatus? contentOrderDetailDtoStatus,
) {
  return contentOrderDetailDtoStatus?.value;
}

String? contentOrderDetailDtoStatusToJson(
  enums.ContentOrderDetailDtoStatus contentOrderDetailDtoStatus,
) {
  return contentOrderDetailDtoStatus.value;
}

enums.ContentOrderDetailDtoStatus contentOrderDetailDtoStatusFromJson(
  Object? contentOrderDetailDtoStatus, [
  enums.ContentOrderDetailDtoStatus? defaultValue,
]) {
  return enums.ContentOrderDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == contentOrderDetailDtoStatus,
      ) ??
      defaultValue ??
      enums.ContentOrderDetailDtoStatus.swaggerGeneratedUnknown;
}

enums.ContentOrderDetailDtoStatus? contentOrderDetailDtoStatusNullableFromJson(
  Object? contentOrderDetailDtoStatus, [
  enums.ContentOrderDetailDtoStatus? defaultValue,
]) {
  if (contentOrderDetailDtoStatus == null) {
    return null;
  }
  return enums.ContentOrderDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == contentOrderDetailDtoStatus,
      ) ??
      defaultValue;
}

String contentOrderDetailDtoStatusExplodedListToJson(
  List<enums.ContentOrderDetailDtoStatus>? contentOrderDetailDtoStatus,
) {
  return contentOrderDetailDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> contentOrderDetailDtoStatusListToJson(
  List<enums.ContentOrderDetailDtoStatus>? contentOrderDetailDtoStatus,
) {
  if (contentOrderDetailDtoStatus == null) {
    return [];
  }

  return contentOrderDetailDtoStatus.map((e) => e.value!).toList();
}

List<enums.ContentOrderDetailDtoStatus> contentOrderDetailDtoStatusListFromJson(
  List? contentOrderDetailDtoStatus, [
  List<enums.ContentOrderDetailDtoStatus>? defaultValue,
]) {
  if (contentOrderDetailDtoStatus == null) {
    return defaultValue ?? [];
  }

  return contentOrderDetailDtoStatus
      .map((e) => contentOrderDetailDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ContentOrderDetailDtoStatus>?
contentOrderDetailDtoStatusNullableListFromJson(
  List? contentOrderDetailDtoStatus, [
  List<enums.ContentOrderDetailDtoStatus>? defaultValue,
]) {
  if (contentOrderDetailDtoStatus == null) {
    return defaultValue;
  }

  return contentOrderDetailDtoStatus
      .map((e) => contentOrderDetailDtoStatusFromJson(e.toString()))
      .toList();
}

String? contentOrderSummaryDtoStatusNullableToJson(
  enums.ContentOrderSummaryDtoStatus? contentOrderSummaryDtoStatus,
) {
  return contentOrderSummaryDtoStatus?.value;
}

String? contentOrderSummaryDtoStatusToJson(
  enums.ContentOrderSummaryDtoStatus contentOrderSummaryDtoStatus,
) {
  return contentOrderSummaryDtoStatus.value;
}

enums.ContentOrderSummaryDtoStatus contentOrderSummaryDtoStatusFromJson(
  Object? contentOrderSummaryDtoStatus, [
  enums.ContentOrderSummaryDtoStatus? defaultValue,
]) {
  return enums.ContentOrderSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == contentOrderSummaryDtoStatus,
      ) ??
      defaultValue ??
      enums.ContentOrderSummaryDtoStatus.swaggerGeneratedUnknown;
}

enums.ContentOrderSummaryDtoStatus?
contentOrderSummaryDtoStatusNullableFromJson(
  Object? contentOrderSummaryDtoStatus, [
  enums.ContentOrderSummaryDtoStatus? defaultValue,
]) {
  if (contentOrderSummaryDtoStatus == null) {
    return null;
  }
  return enums.ContentOrderSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == contentOrderSummaryDtoStatus,
      ) ??
      defaultValue;
}

String contentOrderSummaryDtoStatusExplodedListToJson(
  List<enums.ContentOrderSummaryDtoStatus>? contentOrderSummaryDtoStatus,
) {
  return contentOrderSummaryDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> contentOrderSummaryDtoStatusListToJson(
  List<enums.ContentOrderSummaryDtoStatus>? contentOrderSummaryDtoStatus,
) {
  if (contentOrderSummaryDtoStatus == null) {
    return [];
  }

  return contentOrderSummaryDtoStatus.map((e) => e.value!).toList();
}

List<enums.ContentOrderSummaryDtoStatus>
contentOrderSummaryDtoStatusListFromJson(
  List? contentOrderSummaryDtoStatus, [
  List<enums.ContentOrderSummaryDtoStatus>? defaultValue,
]) {
  if (contentOrderSummaryDtoStatus == null) {
    return defaultValue ?? [];
  }

  return contentOrderSummaryDtoStatus
      .map((e) => contentOrderSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ContentOrderSummaryDtoStatus>?
contentOrderSummaryDtoStatusNullableListFromJson(
  List? contentOrderSummaryDtoStatus, [
  List<enums.ContentOrderSummaryDtoStatus>? defaultValue,
]) {
  if (contentOrderSummaryDtoStatus == null) {
    return defaultValue;
  }

  return contentOrderSummaryDtoStatus
      .map((e) => contentOrderSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

String? enumArticleImageTypeNullableToJson(
  enums.EnumArticleImageType? enumArticleImageType,
) {
  return enumArticleImageType?.value;
}

String? enumArticleImageTypeToJson(
  enums.EnumArticleImageType enumArticleImageType,
) {
  return enumArticleImageType.value;
}

enums.EnumArticleImageType enumArticleImageTypeFromJson(
  Object? enumArticleImageType, [
  enums.EnumArticleImageType? defaultValue,
]) {
  return enums.EnumArticleImageType.values.firstWhereOrNull(
        (e) => e.value == enumArticleImageType,
      ) ??
      defaultValue ??
      enums.EnumArticleImageType.swaggerGeneratedUnknown;
}

enums.EnumArticleImageType? enumArticleImageTypeNullableFromJson(
  Object? enumArticleImageType, [
  enums.EnumArticleImageType? defaultValue,
]) {
  if (enumArticleImageType == null) {
    return null;
  }
  return enums.EnumArticleImageType.values.firstWhereOrNull(
        (e) => e.value == enumArticleImageType,
      ) ??
      defaultValue;
}

String enumArticleImageTypeExplodedListToJson(
  List<enums.EnumArticleImageType>? enumArticleImageType,
) {
  return enumArticleImageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumArticleImageTypeListToJson(
  List<enums.EnumArticleImageType>? enumArticleImageType,
) {
  if (enumArticleImageType == null) {
    return [];
  }

  return enumArticleImageType.map((e) => e.value!).toList();
}

List<enums.EnumArticleImageType> enumArticleImageTypeListFromJson(
  List? enumArticleImageType, [
  List<enums.EnumArticleImageType>? defaultValue,
]) {
  if (enumArticleImageType == null) {
    return defaultValue ?? [];
  }

  return enumArticleImageType
      .map((e) => enumArticleImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.EnumArticleImageType>? enumArticleImageTypeNullableListFromJson(
  List? enumArticleImageType, [
  List<enums.EnumArticleImageType>? defaultValue,
]) {
  if (enumArticleImageType == null) {
    return defaultValue;
  }

  return enumArticleImageType
      .map((e) => enumArticleImageTypeFromJson(e.toString()))
      .toList();
}

String? enumAuthProviderNullableToJson(
  enums.EnumAuthProvider? enumAuthProvider,
) {
  return enumAuthProvider?.value;
}

String? enumAuthProviderToJson(enums.EnumAuthProvider enumAuthProvider) {
  return enumAuthProvider.value;
}

enums.EnumAuthProvider enumAuthProviderFromJson(
  Object? enumAuthProvider, [
  enums.EnumAuthProvider? defaultValue,
]) {
  return enums.EnumAuthProvider.values.firstWhereOrNull(
        (e) => e.value == enumAuthProvider,
      ) ??
      defaultValue ??
      enums.EnumAuthProvider.swaggerGeneratedUnknown;
}

enums.EnumAuthProvider? enumAuthProviderNullableFromJson(
  Object? enumAuthProvider, [
  enums.EnumAuthProvider? defaultValue,
]) {
  if (enumAuthProvider == null) {
    return null;
  }
  return enums.EnumAuthProvider.values.firstWhereOrNull(
        (e) => e.value == enumAuthProvider,
      ) ??
      defaultValue;
}

String enumAuthProviderExplodedListToJson(
  List<enums.EnumAuthProvider>? enumAuthProvider,
) {
  return enumAuthProvider?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumAuthProviderListToJson(
  List<enums.EnumAuthProvider>? enumAuthProvider,
) {
  if (enumAuthProvider == null) {
    return [];
  }

  return enumAuthProvider.map((e) => e.value!).toList();
}

List<enums.EnumAuthProvider> enumAuthProviderListFromJson(
  List? enumAuthProvider, [
  List<enums.EnumAuthProvider>? defaultValue,
]) {
  if (enumAuthProvider == null) {
    return defaultValue ?? [];
  }

  return enumAuthProvider
      .map((e) => enumAuthProviderFromJson(e.toString()))
      .toList();
}

List<enums.EnumAuthProvider>? enumAuthProviderNullableListFromJson(
  List? enumAuthProvider, [
  List<enums.EnumAuthProvider>? defaultValue,
]) {
  if (enumAuthProvider == null) {
    return defaultValue;
  }

  return enumAuthProvider
      .map((e) => enumAuthProviderFromJson(e.toString()))
      .toList();
}

String? enumBrowserNullableToJson(enums.EnumBrowser? enumBrowser) {
  return enumBrowser?.value;
}

String? enumBrowserToJson(enums.EnumBrowser enumBrowser) {
  return enumBrowser.value;
}

enums.EnumBrowser enumBrowserFromJson(
  Object? enumBrowser, [
  enums.EnumBrowser? defaultValue,
]) {
  return enums.EnumBrowser.values.firstWhereOrNull(
        (e) => e.value == enumBrowser,
      ) ??
      defaultValue ??
      enums.EnumBrowser.swaggerGeneratedUnknown;
}

enums.EnumBrowser? enumBrowserNullableFromJson(
  Object? enumBrowser, [
  enums.EnumBrowser? defaultValue,
]) {
  if (enumBrowser == null) {
    return null;
  }
  return enums.EnumBrowser.values.firstWhereOrNull(
        (e) => e.value == enumBrowser,
      ) ??
      defaultValue;
}

String enumBrowserExplodedListToJson(List<enums.EnumBrowser>? enumBrowser) {
  return enumBrowser?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumBrowserListToJson(List<enums.EnumBrowser>? enumBrowser) {
  if (enumBrowser == null) {
    return [];
  }

  return enumBrowser.map((e) => e.value!).toList();
}

List<enums.EnumBrowser> enumBrowserListFromJson(
  List? enumBrowser, [
  List<enums.EnumBrowser>? defaultValue,
]) {
  if (enumBrowser == null) {
    return defaultValue ?? [];
  }

  return enumBrowser.map((e) => enumBrowserFromJson(e.toString())).toList();
}

List<enums.EnumBrowser>? enumBrowserNullableListFromJson(
  List? enumBrowser, [
  List<enums.EnumBrowser>? defaultValue,
]) {
  if (enumBrowser == null) {
    return defaultValue;
  }

  return enumBrowser.map((e) => enumBrowserFromJson(e.toString())).toList();
}

String? enumClientNullableToJson(enums.EnumClient? enumClient) {
  return enumClient?.value;
}

String? enumClientToJson(enums.EnumClient enumClient) {
  return enumClient.value;
}

enums.EnumClient enumClientFromJson(
  Object? enumClient, [
  enums.EnumClient? defaultValue,
]) {
  return enums.EnumClient.values.firstWhereOrNull(
        (e) => e.value == enumClient,
      ) ??
      defaultValue ??
      enums.EnumClient.swaggerGeneratedUnknown;
}

enums.EnumClient? enumClientNullableFromJson(
  Object? enumClient, [
  enums.EnumClient? defaultValue,
]) {
  if (enumClient == null) {
    return null;
  }
  return enums.EnumClient.values.firstWhereOrNull(
        (e) => e.value == enumClient,
      ) ??
      defaultValue;
}

String enumClientExplodedListToJson(List<enums.EnumClient>? enumClient) {
  return enumClient?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumClientListToJson(List<enums.EnumClient>? enumClient) {
  if (enumClient == null) {
    return [];
  }

  return enumClient.map((e) => e.value!).toList();
}

List<enums.EnumClient> enumClientListFromJson(
  List? enumClient, [
  List<enums.EnumClient>? defaultValue,
]) {
  if (enumClient == null) {
    return defaultValue ?? [];
  }

  return enumClient.map((e) => enumClientFromJson(e.toString())).toList();
}

List<enums.EnumClient>? enumClientNullableListFromJson(
  List? enumClient, [
  List<enums.EnumClient>? defaultValue,
]) {
  if (enumClient == null) {
    return defaultValue;
  }

  return enumClient.map((e) => enumClientFromJson(e.toString())).toList();
}

String? enumContentStatusNullableToJson(
  enums.EnumContentStatus? enumContentStatus,
) {
  return enumContentStatus?.value;
}

String? enumContentStatusToJson(enums.EnumContentStatus enumContentStatus) {
  return enumContentStatus.value;
}

enums.EnumContentStatus enumContentStatusFromJson(
  Object? enumContentStatus, [
  enums.EnumContentStatus? defaultValue,
]) {
  return enums.EnumContentStatus.values.firstWhereOrNull(
        (e) => e.value == enumContentStatus,
      ) ??
      defaultValue ??
      enums.EnumContentStatus.swaggerGeneratedUnknown;
}

enums.EnumContentStatus? enumContentStatusNullableFromJson(
  Object? enumContentStatus, [
  enums.EnumContentStatus? defaultValue,
]) {
  if (enumContentStatus == null) {
    return null;
  }
  return enums.EnumContentStatus.values.firstWhereOrNull(
        (e) => e.value == enumContentStatus,
      ) ??
      defaultValue;
}

String enumContentStatusExplodedListToJson(
  List<enums.EnumContentStatus>? enumContentStatus,
) {
  return enumContentStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumContentStatusListToJson(
  List<enums.EnumContentStatus>? enumContentStatus,
) {
  if (enumContentStatus == null) {
    return [];
  }

  return enumContentStatus.map((e) => e.value!).toList();
}

List<enums.EnumContentStatus> enumContentStatusListFromJson(
  List? enumContentStatus, [
  List<enums.EnumContentStatus>? defaultValue,
]) {
  if (enumContentStatus == null) {
    return defaultValue ?? [];
  }

  return enumContentStatus
      .map((e) => enumContentStatusFromJson(e.toString()))
      .toList();
}

List<enums.EnumContentStatus>? enumContentStatusNullableListFromJson(
  List? enumContentStatus, [
  List<enums.EnumContentStatus>? defaultValue,
]) {
  if (enumContentStatus == null) {
    return defaultValue;
  }

  return enumContentStatus
      .map((e) => enumContentStatusFromJson(e.toString()))
      .toList();
}

String? enumCoreContentTypeNullableToJson(
  enums.EnumCoreContentType? enumCoreContentType,
) {
  return enumCoreContentType?.value;
}

String? enumCoreContentTypeToJson(
  enums.EnumCoreContentType enumCoreContentType,
) {
  return enumCoreContentType.value;
}

enums.EnumCoreContentType enumCoreContentTypeFromJson(
  Object? enumCoreContentType, [
  enums.EnumCoreContentType? defaultValue,
]) {
  return enums.EnumCoreContentType.values.firstWhereOrNull(
        (e) => e.value == enumCoreContentType,
      ) ??
      defaultValue ??
      enums.EnumCoreContentType.swaggerGeneratedUnknown;
}

enums.EnumCoreContentType? enumCoreContentTypeNullableFromJson(
  Object? enumCoreContentType, [
  enums.EnumCoreContentType? defaultValue,
]) {
  if (enumCoreContentType == null) {
    return null;
  }
  return enums.EnumCoreContentType.values.firstWhereOrNull(
        (e) => e.value == enumCoreContentType,
      ) ??
      defaultValue;
}

String enumCoreContentTypeExplodedListToJson(
  List<enums.EnumCoreContentType>? enumCoreContentType,
) {
  return enumCoreContentType?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumCoreContentTypeListToJson(
  List<enums.EnumCoreContentType>? enumCoreContentType,
) {
  if (enumCoreContentType == null) {
    return [];
  }

  return enumCoreContentType.map((e) => e.value!).toList();
}

List<enums.EnumCoreContentType> enumCoreContentTypeListFromJson(
  List? enumCoreContentType, [
  List<enums.EnumCoreContentType>? defaultValue,
]) {
  if (enumCoreContentType == null) {
    return defaultValue ?? [];
  }

  return enumCoreContentType
      .map((e) => enumCoreContentTypeFromJson(e.toString()))
      .toList();
}

List<enums.EnumCoreContentType>? enumCoreContentTypeNullableListFromJson(
  List? enumCoreContentType, [
  List<enums.EnumCoreContentType>? defaultValue,
]) {
  if (enumCoreContentType == null) {
    return defaultValue;
  }

  return enumCoreContentType
      .map((e) => enumCoreContentTypeFromJson(e.toString()))
      .toList();
}

String? enumDeviceNullableToJson(enums.EnumDevice? enumDevice) {
  return enumDevice?.value;
}

String? enumDeviceToJson(enums.EnumDevice enumDevice) {
  return enumDevice.value;
}

enums.EnumDevice enumDeviceFromJson(
  Object? enumDevice, [
  enums.EnumDevice? defaultValue,
]) {
  return enums.EnumDevice.values.firstWhereOrNull(
        (e) => e.value == enumDevice,
      ) ??
      defaultValue ??
      enums.EnumDevice.swaggerGeneratedUnknown;
}

enums.EnumDevice? enumDeviceNullableFromJson(
  Object? enumDevice, [
  enums.EnumDevice? defaultValue,
]) {
  if (enumDevice == null) {
    return null;
  }
  return enums.EnumDevice.values.firstWhereOrNull(
        (e) => e.value == enumDevice,
      ) ??
      defaultValue;
}

String enumDeviceExplodedListToJson(List<enums.EnumDevice>? enumDevice) {
  return enumDevice?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumDeviceListToJson(List<enums.EnumDevice>? enumDevice) {
  if (enumDevice == null) {
    return [];
  }

  return enumDevice.map((e) => e.value!).toList();
}

List<enums.EnumDevice> enumDeviceListFromJson(
  List? enumDevice, [
  List<enums.EnumDevice>? defaultValue,
]) {
  if (enumDevice == null) {
    return defaultValue ?? [];
  }

  return enumDevice.map((e) => enumDeviceFromJson(e.toString())).toList();
}

List<enums.EnumDevice>? enumDeviceNullableListFromJson(
  List? enumDevice, [
  List<enums.EnumDevice>? defaultValue,
]) {
  if (enumDevice == null) {
    return defaultValue;
  }

  return enumDevice.map((e) => enumDeviceFromJson(e.toString())).toList();
}

String? enumOrderStatusNullableToJson(enums.EnumOrderStatus? enumOrderStatus) {
  return enumOrderStatus?.value;
}

String? enumOrderStatusToJson(enums.EnumOrderStatus enumOrderStatus) {
  return enumOrderStatus.value;
}

enums.EnumOrderStatus enumOrderStatusFromJson(
  Object? enumOrderStatus, [
  enums.EnumOrderStatus? defaultValue,
]) {
  return enums.EnumOrderStatus.values.firstWhereOrNull(
        (e) => e.value == enumOrderStatus,
      ) ??
      defaultValue ??
      enums.EnumOrderStatus.swaggerGeneratedUnknown;
}

enums.EnumOrderStatus? enumOrderStatusNullableFromJson(
  Object? enumOrderStatus, [
  enums.EnumOrderStatus? defaultValue,
]) {
  if (enumOrderStatus == null) {
    return null;
  }
  return enums.EnumOrderStatus.values.firstWhereOrNull(
        (e) => e.value == enumOrderStatus,
      ) ??
      defaultValue;
}

String enumOrderStatusExplodedListToJson(
  List<enums.EnumOrderStatus>? enumOrderStatus,
) {
  return enumOrderStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumOrderStatusListToJson(
  List<enums.EnumOrderStatus>? enumOrderStatus,
) {
  if (enumOrderStatus == null) {
    return [];
  }

  return enumOrderStatus.map((e) => e.value!).toList();
}

List<enums.EnumOrderStatus> enumOrderStatusListFromJson(
  List? enumOrderStatus, [
  List<enums.EnumOrderStatus>? defaultValue,
]) {
  if (enumOrderStatus == null) {
    return defaultValue ?? [];
  }

  return enumOrderStatus
      .map((e) => enumOrderStatusFromJson(e.toString()))
      .toList();
}

List<enums.EnumOrderStatus>? enumOrderStatusNullableListFromJson(
  List? enumOrderStatus, [
  List<enums.EnumOrderStatus>? defaultValue,
]) {
  if (enumOrderStatus == null) {
    return defaultValue;
  }

  return enumOrderStatus
      .map((e) => enumOrderStatusFromJson(e.toString()))
      .toList();
}

String? enumPaymentMethodNullableToJson(
  enums.EnumPaymentMethod? enumPaymentMethod,
) {
  return enumPaymentMethod?.value;
}

String? enumPaymentMethodToJson(enums.EnumPaymentMethod enumPaymentMethod) {
  return enumPaymentMethod.value;
}

enums.EnumPaymentMethod enumPaymentMethodFromJson(
  Object? enumPaymentMethod, [
  enums.EnumPaymentMethod? defaultValue,
]) {
  return enums.EnumPaymentMethod.values.firstWhereOrNull(
        (e) => e.value == enumPaymentMethod,
      ) ??
      defaultValue ??
      enums.EnumPaymentMethod.swaggerGeneratedUnknown;
}

enums.EnumPaymentMethod? enumPaymentMethodNullableFromJson(
  Object? enumPaymentMethod, [
  enums.EnumPaymentMethod? defaultValue,
]) {
  if (enumPaymentMethod == null) {
    return null;
  }
  return enums.EnumPaymentMethod.values.firstWhereOrNull(
        (e) => e.value == enumPaymentMethod,
      ) ??
      defaultValue;
}

String enumPaymentMethodExplodedListToJson(
  List<enums.EnumPaymentMethod>? enumPaymentMethod,
) {
  return enumPaymentMethod?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumPaymentMethodListToJson(
  List<enums.EnumPaymentMethod>? enumPaymentMethod,
) {
  if (enumPaymentMethod == null) {
    return [];
  }

  return enumPaymentMethod.map((e) => e.value!).toList();
}

List<enums.EnumPaymentMethod> enumPaymentMethodListFromJson(
  List? enumPaymentMethod, [
  List<enums.EnumPaymentMethod>? defaultValue,
]) {
  if (enumPaymentMethod == null) {
    return defaultValue ?? [];
  }

  return enumPaymentMethod
      .map((e) => enumPaymentMethodFromJson(e.toString()))
      .toList();
}

List<enums.EnumPaymentMethod>? enumPaymentMethodNullableListFromJson(
  List? enumPaymentMethod, [
  List<enums.EnumPaymentMethod>? defaultValue,
]) {
  if (enumPaymentMethod == null) {
    return defaultValue;
  }

  return enumPaymentMethod
      .map((e) => enumPaymentMethodFromJson(e.toString()))
      .toList();
}

String? enumPaymentStatusNullableToJson(
  enums.EnumPaymentStatus? enumPaymentStatus,
) {
  return enumPaymentStatus?.value;
}

String? enumPaymentStatusToJson(enums.EnumPaymentStatus enumPaymentStatus) {
  return enumPaymentStatus.value;
}

enums.EnumPaymentStatus enumPaymentStatusFromJson(
  Object? enumPaymentStatus, [
  enums.EnumPaymentStatus? defaultValue,
]) {
  return enums.EnumPaymentStatus.values.firstWhereOrNull(
        (e) => e.value == enumPaymentStatus,
      ) ??
      defaultValue ??
      enums.EnumPaymentStatus.swaggerGeneratedUnknown;
}

enums.EnumPaymentStatus? enumPaymentStatusNullableFromJson(
  Object? enumPaymentStatus, [
  enums.EnumPaymentStatus? defaultValue,
]) {
  if (enumPaymentStatus == null) {
    return null;
  }
  return enums.EnumPaymentStatus.values.firstWhereOrNull(
        (e) => e.value == enumPaymentStatus,
      ) ??
      defaultValue;
}

String enumPaymentStatusExplodedListToJson(
  List<enums.EnumPaymentStatus>? enumPaymentStatus,
) {
  return enumPaymentStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumPaymentStatusListToJson(
  List<enums.EnumPaymentStatus>? enumPaymentStatus,
) {
  if (enumPaymentStatus == null) {
    return [];
  }

  return enumPaymentStatus.map((e) => e.value!).toList();
}

List<enums.EnumPaymentStatus> enumPaymentStatusListFromJson(
  List? enumPaymentStatus, [
  List<enums.EnumPaymentStatus>? defaultValue,
]) {
  if (enumPaymentStatus == null) {
    return defaultValue ?? [];
  }

  return enumPaymentStatus
      .map((e) => enumPaymentStatusFromJson(e.toString()))
      .toList();
}

List<enums.EnumPaymentStatus>? enumPaymentStatusNullableListFromJson(
  List? enumPaymentStatus, [
  List<enums.EnumPaymentStatus>? defaultValue,
]) {
  if (enumPaymentStatus == null) {
    return defaultValue;
  }

  return enumPaymentStatus
      .map((e) => enumPaymentStatusFromJson(e.toString()))
      .toList();
}

String? enumPlatformNullableToJson(enums.EnumPlatform? enumPlatform) {
  return enumPlatform?.value;
}

String? enumPlatformToJson(enums.EnumPlatform enumPlatform) {
  return enumPlatform.value;
}

enums.EnumPlatform enumPlatformFromJson(
  Object? enumPlatform, [
  enums.EnumPlatform? defaultValue,
]) {
  return enums.EnumPlatform.values.firstWhereOrNull(
        (e) => e.value == enumPlatform,
      ) ??
      defaultValue ??
      enums.EnumPlatform.swaggerGeneratedUnknown;
}

enums.EnumPlatform? enumPlatformNullableFromJson(
  Object? enumPlatform, [
  enums.EnumPlatform? defaultValue,
]) {
  if (enumPlatform == null) {
    return null;
  }
  return enums.EnumPlatform.values.firstWhereOrNull(
        (e) => e.value == enumPlatform,
      ) ??
      defaultValue;
}

String enumPlatformExplodedListToJson(List<enums.EnumPlatform>? enumPlatform) {
  return enumPlatform?.map((e) => e.value!).join(',') ?? '';
}

List<String> enumPlatformListToJson(List<enums.EnumPlatform>? enumPlatform) {
  if (enumPlatform == null) {
    return [];
  }

  return enumPlatform.map((e) => e.value!).toList();
}

List<enums.EnumPlatform> enumPlatformListFromJson(
  List? enumPlatform, [
  List<enums.EnumPlatform>? defaultValue,
]) {
  if (enumPlatform == null) {
    return defaultValue ?? [];
  }

  return enumPlatform.map((e) => enumPlatformFromJson(e.toString())).toList();
}

List<enums.EnumPlatform>? enumPlatformNullableListFromJson(
  List? enumPlatform, [
  List<enums.EnumPlatform>? defaultValue,
]) {
  if (enumPlatform == null) {
    return defaultValue;
  }

  return enumPlatform.map((e) => enumPlatformFromJson(e.toString())).toList();
}

String? orderItemDtoContentKindNullableToJson(
  enums.OrderItemDtoContentKind? orderItemDtoContentKind,
) {
  return orderItemDtoContentKind?.value;
}

String? orderItemDtoContentKindToJson(
  enums.OrderItemDtoContentKind orderItemDtoContentKind,
) {
  return orderItemDtoContentKind.value;
}

enums.OrderItemDtoContentKind orderItemDtoContentKindFromJson(
  Object? orderItemDtoContentKind, [
  enums.OrderItemDtoContentKind? defaultValue,
]) {
  return enums.OrderItemDtoContentKind.values.firstWhereOrNull(
        (e) => e.value == orderItemDtoContentKind,
      ) ??
      defaultValue ??
      enums.OrderItemDtoContentKind.swaggerGeneratedUnknown;
}

enums.OrderItemDtoContentKind? orderItemDtoContentKindNullableFromJson(
  Object? orderItemDtoContentKind, [
  enums.OrderItemDtoContentKind? defaultValue,
]) {
  if (orderItemDtoContentKind == null) {
    return null;
  }
  return enums.OrderItemDtoContentKind.values.firstWhereOrNull(
        (e) => e.value == orderItemDtoContentKind,
      ) ??
      defaultValue;
}

String orderItemDtoContentKindExplodedListToJson(
  List<enums.OrderItemDtoContentKind>? orderItemDtoContentKind,
) {
  return orderItemDtoContentKind?.map((e) => e.value!).join(',') ?? '';
}

List<String> orderItemDtoContentKindListToJson(
  List<enums.OrderItemDtoContentKind>? orderItemDtoContentKind,
) {
  if (orderItemDtoContentKind == null) {
    return [];
  }

  return orderItemDtoContentKind.map((e) => e.value!).toList();
}

List<enums.OrderItemDtoContentKind> orderItemDtoContentKindListFromJson(
  List? orderItemDtoContentKind, [
  List<enums.OrderItemDtoContentKind>? defaultValue,
]) {
  if (orderItemDtoContentKind == null) {
    return defaultValue ?? [];
  }

  return orderItemDtoContentKind
      .map((e) => orderItemDtoContentKindFromJson(e.toString()))
      .toList();
}

List<enums.OrderItemDtoContentKind>?
orderItemDtoContentKindNullableListFromJson(
  List? orderItemDtoContentKind, [
  List<enums.OrderItemDtoContentKind>? defaultValue,
]) {
  if (orderItemDtoContentKind == null) {
    return defaultValue;
  }

  return orderItemDtoContentKind
      .map((e) => orderItemDtoContentKindFromJson(e.toString()))
      .toList();
}

String? paymentDtoStatusNullableToJson(
  enums.PaymentDtoStatus? paymentDtoStatus,
) {
  return paymentDtoStatus?.value;
}

String? paymentDtoStatusToJson(enums.PaymentDtoStatus paymentDtoStatus) {
  return paymentDtoStatus.value;
}

enums.PaymentDtoStatus paymentDtoStatusFromJson(
  Object? paymentDtoStatus, [
  enums.PaymentDtoStatus? defaultValue,
]) {
  return enums.PaymentDtoStatus.values.firstWhereOrNull(
        (e) => e.value == paymentDtoStatus,
      ) ??
      defaultValue ??
      enums.PaymentDtoStatus.swaggerGeneratedUnknown;
}

enums.PaymentDtoStatus? paymentDtoStatusNullableFromJson(
  Object? paymentDtoStatus, [
  enums.PaymentDtoStatus? defaultValue,
]) {
  if (paymentDtoStatus == null) {
    return null;
  }
  return enums.PaymentDtoStatus.values.firstWhereOrNull(
        (e) => e.value == paymentDtoStatus,
      ) ??
      defaultValue;
}

String paymentDtoStatusExplodedListToJson(
  List<enums.PaymentDtoStatus>? paymentDtoStatus,
) {
  return paymentDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> paymentDtoStatusListToJson(
  List<enums.PaymentDtoStatus>? paymentDtoStatus,
) {
  if (paymentDtoStatus == null) {
    return [];
  }

  return paymentDtoStatus.map((e) => e.value!).toList();
}

List<enums.PaymentDtoStatus> paymentDtoStatusListFromJson(
  List? paymentDtoStatus, [
  List<enums.PaymentDtoStatus>? defaultValue,
]) {
  if (paymentDtoStatus == null) {
    return defaultValue ?? [];
  }

  return paymentDtoStatus
      .map((e) => paymentDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.PaymentDtoStatus>? paymentDtoStatusNullableListFromJson(
  List? paymentDtoStatus, [
  List<enums.PaymentDtoStatus>? defaultValue,
]) {
  if (paymentDtoStatus == null) {
    return defaultValue;
  }

  return paymentDtoStatus
      .map((e) => paymentDtoStatusFromJson(e.toString()))
      .toList();
}

String? sessionDtoBrowserNullableToJson(
  enums.SessionDtoBrowser? sessionDtoBrowser,
) {
  return sessionDtoBrowser?.value;
}

String? sessionDtoBrowserToJson(enums.SessionDtoBrowser sessionDtoBrowser) {
  return sessionDtoBrowser.value;
}

enums.SessionDtoBrowser sessionDtoBrowserFromJson(
  Object? sessionDtoBrowser, [
  enums.SessionDtoBrowser? defaultValue,
]) {
  return enums.SessionDtoBrowser.values.firstWhereOrNull(
        (e) => e.value == sessionDtoBrowser,
      ) ??
      defaultValue ??
      enums.SessionDtoBrowser.swaggerGeneratedUnknown;
}

enums.SessionDtoBrowser? sessionDtoBrowserNullableFromJson(
  Object? sessionDtoBrowser, [
  enums.SessionDtoBrowser? defaultValue,
]) {
  if (sessionDtoBrowser == null) {
    return null;
  }
  return enums.SessionDtoBrowser.values.firstWhereOrNull(
        (e) => e.value == sessionDtoBrowser,
      ) ??
      defaultValue;
}

String sessionDtoBrowserExplodedListToJson(
  List<enums.SessionDtoBrowser>? sessionDtoBrowser,
) {
  return sessionDtoBrowser?.map((e) => e.value!).join(',') ?? '';
}

List<String> sessionDtoBrowserListToJson(
  List<enums.SessionDtoBrowser>? sessionDtoBrowser,
) {
  if (sessionDtoBrowser == null) {
    return [];
  }

  return sessionDtoBrowser.map((e) => e.value!).toList();
}

List<enums.SessionDtoBrowser> sessionDtoBrowserListFromJson(
  List? sessionDtoBrowser, [
  List<enums.SessionDtoBrowser>? defaultValue,
]) {
  if (sessionDtoBrowser == null) {
    return defaultValue ?? [];
  }

  return sessionDtoBrowser
      .map((e) => sessionDtoBrowserFromJson(e.toString()))
      .toList();
}

List<enums.SessionDtoBrowser>? sessionDtoBrowserNullableListFromJson(
  List? sessionDtoBrowser, [
  List<enums.SessionDtoBrowser>? defaultValue,
]) {
  if (sessionDtoBrowser == null) {
    return defaultValue;
  }

  return sessionDtoBrowser
      .map((e) => sessionDtoBrowserFromJson(e.toString()))
      .toList();
}

String? sessionDtoDeviceNullableToJson(
  enums.SessionDtoDevice? sessionDtoDevice,
) {
  return sessionDtoDevice?.value;
}

String? sessionDtoDeviceToJson(enums.SessionDtoDevice sessionDtoDevice) {
  return sessionDtoDevice.value;
}

enums.SessionDtoDevice sessionDtoDeviceFromJson(
  Object? sessionDtoDevice, [
  enums.SessionDtoDevice? defaultValue,
]) {
  return enums.SessionDtoDevice.values.firstWhereOrNull(
        (e) => e.value == sessionDtoDevice,
      ) ??
      defaultValue ??
      enums.SessionDtoDevice.swaggerGeneratedUnknown;
}

enums.SessionDtoDevice? sessionDtoDeviceNullableFromJson(
  Object? sessionDtoDevice, [
  enums.SessionDtoDevice? defaultValue,
]) {
  if (sessionDtoDevice == null) {
    return null;
  }
  return enums.SessionDtoDevice.values.firstWhereOrNull(
        (e) => e.value == sessionDtoDevice,
      ) ??
      defaultValue;
}

String sessionDtoDeviceExplodedListToJson(
  List<enums.SessionDtoDevice>? sessionDtoDevice,
) {
  return sessionDtoDevice?.map((e) => e.value!).join(',') ?? '';
}

List<String> sessionDtoDeviceListToJson(
  List<enums.SessionDtoDevice>? sessionDtoDevice,
) {
  if (sessionDtoDevice == null) {
    return [];
  }

  return sessionDtoDevice.map((e) => e.value!).toList();
}

List<enums.SessionDtoDevice> sessionDtoDeviceListFromJson(
  List? sessionDtoDevice, [
  List<enums.SessionDtoDevice>? defaultValue,
]) {
  if (sessionDtoDevice == null) {
    return defaultValue ?? [];
  }

  return sessionDtoDevice
      .map((e) => sessionDtoDeviceFromJson(e.toString()))
      .toList();
}

List<enums.SessionDtoDevice>? sessionDtoDeviceNullableListFromJson(
  List? sessionDtoDevice, [
  List<enums.SessionDtoDevice>? defaultValue,
]) {
  if (sessionDtoDevice == null) {
    return defaultValue;
  }

  return sessionDtoDevice
      .map((e) => sessionDtoDeviceFromJson(e.toString()))
      .toList();
}

String? sessionDtoPlatformNullableToJson(
  enums.SessionDtoPlatform? sessionDtoPlatform,
) {
  return sessionDtoPlatform?.value;
}

String? sessionDtoPlatformToJson(enums.SessionDtoPlatform sessionDtoPlatform) {
  return sessionDtoPlatform.value;
}

enums.SessionDtoPlatform sessionDtoPlatformFromJson(
  Object? sessionDtoPlatform, [
  enums.SessionDtoPlatform? defaultValue,
]) {
  return enums.SessionDtoPlatform.values.firstWhereOrNull(
        (e) => e.value == sessionDtoPlatform,
      ) ??
      defaultValue ??
      enums.SessionDtoPlatform.swaggerGeneratedUnknown;
}

enums.SessionDtoPlatform? sessionDtoPlatformNullableFromJson(
  Object? sessionDtoPlatform, [
  enums.SessionDtoPlatform? defaultValue,
]) {
  if (sessionDtoPlatform == null) {
    return null;
  }
  return enums.SessionDtoPlatform.values.firstWhereOrNull(
        (e) => e.value == sessionDtoPlatform,
      ) ??
      defaultValue;
}

String sessionDtoPlatformExplodedListToJson(
  List<enums.SessionDtoPlatform>? sessionDtoPlatform,
) {
  return sessionDtoPlatform?.map((e) => e.value!).join(',') ?? '';
}

List<String> sessionDtoPlatformListToJson(
  List<enums.SessionDtoPlatform>? sessionDtoPlatform,
) {
  if (sessionDtoPlatform == null) {
    return [];
  }

  return sessionDtoPlatform.map((e) => e.value!).toList();
}

List<enums.SessionDtoPlatform> sessionDtoPlatformListFromJson(
  List? sessionDtoPlatform, [
  List<enums.SessionDtoPlatform>? defaultValue,
]) {
  if (sessionDtoPlatform == null) {
    return defaultValue ?? [];
  }

  return sessionDtoPlatform
      .map((e) => sessionDtoPlatformFromJson(e.toString()))
      .toList();
}

List<enums.SessionDtoPlatform>? sessionDtoPlatformNullableListFromJson(
  List? sessionDtoPlatform, [
  List<enums.SessionDtoPlatform>? defaultValue,
]) {
  if (sessionDtoPlatform == null) {
    return defaultValue;
  }

  return sessionDtoPlatform
      .map((e) => sessionDtoPlatformFromJson(e.toString()))
      .toList();
}

String? sessionDtoClientNullableToJson(
  enums.SessionDtoClient? sessionDtoClient,
) {
  return sessionDtoClient?.value;
}

String? sessionDtoClientToJson(enums.SessionDtoClient sessionDtoClient) {
  return sessionDtoClient.value;
}

enums.SessionDtoClient sessionDtoClientFromJson(
  Object? sessionDtoClient, [
  enums.SessionDtoClient? defaultValue,
]) {
  return enums.SessionDtoClient.values.firstWhereOrNull(
        (e) => e.value == sessionDtoClient,
      ) ??
      defaultValue ??
      enums.SessionDtoClient.swaggerGeneratedUnknown;
}

enums.SessionDtoClient? sessionDtoClientNullableFromJson(
  Object? sessionDtoClient, [
  enums.SessionDtoClient? defaultValue,
]) {
  if (sessionDtoClient == null) {
    return null;
  }
  return enums.SessionDtoClient.values.firstWhereOrNull(
        (e) => e.value == sessionDtoClient,
      ) ??
      defaultValue;
}

String sessionDtoClientExplodedListToJson(
  List<enums.SessionDtoClient>? sessionDtoClient,
) {
  return sessionDtoClient?.map((e) => e.value!).join(',') ?? '';
}

List<String> sessionDtoClientListToJson(
  List<enums.SessionDtoClient>? sessionDtoClient,
) {
  if (sessionDtoClient == null) {
    return [];
  }

  return sessionDtoClient.map((e) => e.value!).toList();
}

List<enums.SessionDtoClient> sessionDtoClientListFromJson(
  List? sessionDtoClient, [
  List<enums.SessionDtoClient>? defaultValue,
]) {
  if (sessionDtoClient == null) {
    return defaultValue ?? [];
  }

  return sessionDtoClient
      .map((e) => sessionDtoClientFromJson(e.toString()))
      .toList();
}

List<enums.SessionDtoClient>? sessionDtoClientNullableListFromJson(
  List? sessionDtoClient, [
  List<enums.SessionDtoClient>? defaultValue,
]) {
  if (sessionDtoClient == null) {
    return defaultValue;
  }

  return sessionDtoClient
      .map((e) => sessionDtoClientFromJson(e.toString()))
      .toList();
}

String? userResponseDtoAuthProviderNullableToJson(
  enums.UserResponseDtoAuthProvider? userResponseDtoAuthProvider,
) {
  return userResponseDtoAuthProvider?.value;
}

String? userResponseDtoAuthProviderToJson(
  enums.UserResponseDtoAuthProvider userResponseDtoAuthProvider,
) {
  return userResponseDtoAuthProvider.value;
}

enums.UserResponseDtoAuthProvider userResponseDtoAuthProviderFromJson(
  Object? userResponseDtoAuthProvider, [
  enums.UserResponseDtoAuthProvider? defaultValue,
]) {
  return enums.UserResponseDtoAuthProvider.values.firstWhereOrNull(
        (e) => e.value == userResponseDtoAuthProvider,
      ) ??
      defaultValue ??
      enums.UserResponseDtoAuthProvider.swaggerGeneratedUnknown;
}

enums.UserResponseDtoAuthProvider? userResponseDtoAuthProviderNullableFromJson(
  Object? userResponseDtoAuthProvider, [
  enums.UserResponseDtoAuthProvider? defaultValue,
]) {
  if (userResponseDtoAuthProvider == null) {
    return null;
  }
  return enums.UserResponseDtoAuthProvider.values.firstWhereOrNull(
        (e) => e.value == userResponseDtoAuthProvider,
      ) ??
      defaultValue;
}

String userResponseDtoAuthProviderExplodedListToJson(
  List<enums.UserResponseDtoAuthProvider>? userResponseDtoAuthProvider,
) {
  return userResponseDtoAuthProvider?.map((e) => e.value!).join(',') ?? '';
}

List<String> userResponseDtoAuthProviderListToJson(
  List<enums.UserResponseDtoAuthProvider>? userResponseDtoAuthProvider,
) {
  if (userResponseDtoAuthProvider == null) {
    return [];
  }

  return userResponseDtoAuthProvider.map((e) => e.value!).toList();
}

List<enums.UserResponseDtoAuthProvider> userResponseDtoAuthProviderListFromJson(
  List? userResponseDtoAuthProvider, [
  List<enums.UserResponseDtoAuthProvider>? defaultValue,
]) {
  if (userResponseDtoAuthProvider == null) {
    return defaultValue ?? [];
  }

  return userResponseDtoAuthProvider
      .map((e) => userResponseDtoAuthProviderFromJson(e.toString()))
      .toList();
}

List<enums.UserResponseDtoAuthProvider>?
userResponseDtoAuthProviderNullableListFromJson(
  List? userResponseDtoAuthProvider, [
  List<enums.UserResponseDtoAuthProvider>? defaultValue,
]) {
  if (userResponseDtoAuthProvider == null) {
    return defaultValue;
  }

  return userResponseDtoAuthProvider
      .map((e) => userResponseDtoAuthProviderFromJson(e.toString()))
      .toList();
}

String? videoDetailDtoStatusNullableToJson(
  enums.VideoDetailDtoStatus? videoDetailDtoStatus,
) {
  return videoDetailDtoStatus?.value;
}

String? videoDetailDtoStatusToJson(
  enums.VideoDetailDtoStatus videoDetailDtoStatus,
) {
  return videoDetailDtoStatus.value;
}

enums.VideoDetailDtoStatus videoDetailDtoStatusFromJson(
  Object? videoDetailDtoStatus, [
  enums.VideoDetailDtoStatus? defaultValue,
]) {
  return enums.VideoDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == videoDetailDtoStatus,
      ) ??
      defaultValue ??
      enums.VideoDetailDtoStatus.swaggerGeneratedUnknown;
}

enums.VideoDetailDtoStatus? videoDetailDtoStatusNullableFromJson(
  Object? videoDetailDtoStatus, [
  enums.VideoDetailDtoStatus? defaultValue,
]) {
  if (videoDetailDtoStatus == null) {
    return null;
  }
  return enums.VideoDetailDtoStatus.values.firstWhereOrNull(
        (e) => e.value == videoDetailDtoStatus,
      ) ??
      defaultValue;
}

String videoDetailDtoStatusExplodedListToJson(
  List<enums.VideoDetailDtoStatus>? videoDetailDtoStatus,
) {
  return videoDetailDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> videoDetailDtoStatusListToJson(
  List<enums.VideoDetailDtoStatus>? videoDetailDtoStatus,
) {
  if (videoDetailDtoStatus == null) {
    return [];
  }

  return videoDetailDtoStatus.map((e) => e.value!).toList();
}

List<enums.VideoDetailDtoStatus> videoDetailDtoStatusListFromJson(
  List? videoDetailDtoStatus, [
  List<enums.VideoDetailDtoStatus>? defaultValue,
]) {
  if (videoDetailDtoStatus == null) {
    return defaultValue ?? [];
  }

  return videoDetailDtoStatus
      .map((e) => videoDetailDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.VideoDetailDtoStatus>? videoDetailDtoStatusNullableListFromJson(
  List? videoDetailDtoStatus, [
  List<enums.VideoDetailDtoStatus>? defaultValue,
]) {
  if (videoDetailDtoStatus == null) {
    return defaultValue;
  }

  return videoDetailDtoStatus
      .map((e) => videoDetailDtoStatusFromJson(e.toString()))
      .toList();
}

String? videoSummaryDtoStatusNullableToJson(
  enums.VideoSummaryDtoStatus? videoSummaryDtoStatus,
) {
  return videoSummaryDtoStatus?.value;
}

String? videoSummaryDtoStatusToJson(
  enums.VideoSummaryDtoStatus videoSummaryDtoStatus,
) {
  return videoSummaryDtoStatus.value;
}

enums.VideoSummaryDtoStatus videoSummaryDtoStatusFromJson(
  Object? videoSummaryDtoStatus, [
  enums.VideoSummaryDtoStatus? defaultValue,
]) {
  return enums.VideoSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == videoSummaryDtoStatus,
      ) ??
      defaultValue ??
      enums.VideoSummaryDtoStatus.swaggerGeneratedUnknown;
}

enums.VideoSummaryDtoStatus? videoSummaryDtoStatusNullableFromJson(
  Object? videoSummaryDtoStatus, [
  enums.VideoSummaryDtoStatus? defaultValue,
]) {
  if (videoSummaryDtoStatus == null) {
    return null;
  }
  return enums.VideoSummaryDtoStatus.values.firstWhereOrNull(
        (e) => e.value == videoSummaryDtoStatus,
      ) ??
      defaultValue;
}

String videoSummaryDtoStatusExplodedListToJson(
  List<enums.VideoSummaryDtoStatus>? videoSummaryDtoStatus,
) {
  return videoSummaryDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> videoSummaryDtoStatusListToJson(
  List<enums.VideoSummaryDtoStatus>? videoSummaryDtoStatus,
) {
  if (videoSummaryDtoStatus == null) {
    return [];
  }

  return videoSummaryDtoStatus.map((e) => e.value!).toList();
}

List<enums.VideoSummaryDtoStatus> videoSummaryDtoStatusListFromJson(
  List? videoSummaryDtoStatus, [
  List<enums.VideoSummaryDtoStatus>? defaultValue,
]) {
  if (videoSummaryDtoStatus == null) {
    return defaultValue ?? [];
  }

  return videoSummaryDtoStatus
      .map((e) => videoSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.VideoSummaryDtoStatus>? videoSummaryDtoStatusNullableListFromJson(
  List? videoSummaryDtoStatus, [
  List<enums.VideoSummaryDtoStatus>? defaultValue,
]) {
  if (videoSummaryDtoStatus == null) {
    return defaultValue;
  }

  return videoSummaryDtoStatus
      .map((e) => videoSummaryDtoStatusFromJson(e.toString()))
      .toList();
}

String? apiV1AdminArticlesIdImagesPostImageTypeNullableToJson(
  enums.ApiV1AdminArticlesIdImagesPostImageType?
  apiV1AdminArticlesIdImagesPostImageType,
) {
  return apiV1AdminArticlesIdImagesPostImageType?.value;
}

String? apiV1AdminArticlesIdImagesPostImageTypeToJson(
  enums.ApiV1AdminArticlesIdImagesPostImageType
  apiV1AdminArticlesIdImagesPostImageType,
) {
  return apiV1AdminArticlesIdImagesPostImageType.value;
}

enums.ApiV1AdminArticlesIdImagesPostImageType
apiV1AdminArticlesIdImagesPostImageTypeFromJson(
  Object? apiV1AdminArticlesIdImagesPostImageType, [
  enums.ApiV1AdminArticlesIdImagesPostImageType? defaultValue,
]) {
  return enums.ApiV1AdminArticlesIdImagesPostImageType.values.firstWhereOrNull(
        (e) => e.value == apiV1AdminArticlesIdImagesPostImageType,
      ) ??
      defaultValue ??
      enums.ApiV1AdminArticlesIdImagesPostImageType.swaggerGeneratedUnknown;
}

enums.ApiV1AdminArticlesIdImagesPostImageType?
apiV1AdminArticlesIdImagesPostImageTypeNullableFromJson(
  Object? apiV1AdminArticlesIdImagesPostImageType, [
  enums.ApiV1AdminArticlesIdImagesPostImageType? defaultValue,
]) {
  if (apiV1AdminArticlesIdImagesPostImageType == null) {
    return null;
  }
  return enums.ApiV1AdminArticlesIdImagesPostImageType.values.firstWhereOrNull(
        (e) => e.value == apiV1AdminArticlesIdImagesPostImageType,
      ) ??
      defaultValue;
}

String apiV1AdminArticlesIdImagesPostImageTypeExplodedListToJson(
  List<enums.ApiV1AdminArticlesIdImagesPostImageType>?
  apiV1AdminArticlesIdImagesPostImageType,
) {
  return apiV1AdminArticlesIdImagesPostImageType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> apiV1AdminArticlesIdImagesPostImageTypeListToJson(
  List<enums.ApiV1AdminArticlesIdImagesPostImageType>?
  apiV1AdminArticlesIdImagesPostImageType,
) {
  if (apiV1AdminArticlesIdImagesPostImageType == null) {
    return [];
  }

  return apiV1AdminArticlesIdImagesPostImageType.map((e) => e.value!).toList();
}

List<enums.ApiV1AdminArticlesIdImagesPostImageType>
apiV1AdminArticlesIdImagesPostImageTypeListFromJson(
  List? apiV1AdminArticlesIdImagesPostImageType, [
  List<enums.ApiV1AdminArticlesIdImagesPostImageType>? defaultValue,
]) {
  if (apiV1AdminArticlesIdImagesPostImageType == null) {
    return defaultValue ?? [];
  }

  return apiV1AdminArticlesIdImagesPostImageType
      .map((e) => apiV1AdminArticlesIdImagesPostImageTypeFromJson(e.toString()))
      .toList();
}

List<enums.ApiV1AdminArticlesIdImagesPostImageType>?
apiV1AdminArticlesIdImagesPostImageTypeNullableListFromJson(
  List? apiV1AdminArticlesIdImagesPostImageType, [
  List<enums.ApiV1AdminArticlesIdImagesPostImageType>? defaultValue,
]) {
  if (apiV1AdminArticlesIdImagesPostImageType == null) {
    return defaultValue;
  }

  return apiV1AdminArticlesIdImagesPostImageType
      .map((e) => apiV1AdminArticlesIdImagesPostImageTypeFromJson(e.toString()))
      .toList();
}

String? apiV1AdminOrdersIdPaymentProofPostPaymentMethodNullableToJson(
  enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod?
  apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
) {
  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod?.value;
}

String? apiV1AdminOrdersIdPaymentProofPostPaymentMethodToJson(
  enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod
  apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
) {
  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod.value;
}

enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod
apiV1AdminOrdersIdPaymentProofPostPaymentMethodFromJson(
  Object? apiV1AdminOrdersIdPaymentProofPostPaymentMethod, [
  enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod? defaultValue,
]) {
  return enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod.values
          .firstWhereOrNull(
            (e) => e.value == apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
          ) ??
      defaultValue ??
      enums
          .ApiV1AdminOrdersIdPaymentProofPostPaymentMethod
          .swaggerGeneratedUnknown;
}

enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod?
apiV1AdminOrdersIdPaymentProofPostPaymentMethodNullableFromJson(
  Object? apiV1AdminOrdersIdPaymentProofPostPaymentMethod, [
  enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod? defaultValue,
]) {
  if (apiV1AdminOrdersIdPaymentProofPostPaymentMethod == null) {
    return null;
  }
  return enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod.values
          .firstWhereOrNull(
            (e) => e.value == apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
          ) ??
      defaultValue;
}

String apiV1AdminOrdersIdPaymentProofPostPaymentMethodExplodedListToJson(
  List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>?
  apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
) {
  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> apiV1AdminOrdersIdPaymentProofPostPaymentMethodListToJson(
  List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>?
  apiV1AdminOrdersIdPaymentProofPostPaymentMethod,
) {
  if (apiV1AdminOrdersIdPaymentProofPostPaymentMethod == null) {
    return [];
  }

  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod
      .map((e) => e.value!)
      .toList();
}

List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>
apiV1AdminOrdersIdPaymentProofPostPaymentMethodListFromJson(
  List? apiV1AdminOrdersIdPaymentProofPostPaymentMethod, [
  List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>? defaultValue,
]) {
  if (apiV1AdminOrdersIdPaymentProofPostPaymentMethod == null) {
    return defaultValue ?? [];
  }

  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod
      .map(
        (e) => apiV1AdminOrdersIdPaymentProofPostPaymentMethodFromJson(
          e.toString(),
        ),
      )
      .toList();
}

List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>?
apiV1AdminOrdersIdPaymentProofPostPaymentMethodNullableListFromJson(
  List? apiV1AdminOrdersIdPaymentProofPostPaymentMethod, [
  List<enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod>? defaultValue,
]) {
  if (apiV1AdminOrdersIdPaymentProofPostPaymentMethod == null) {
    return defaultValue;
  }

  return apiV1AdminOrdersIdPaymentProofPostPaymentMethod
      .map(
        (e) => apiV1AdminOrdersIdPaymentProofPostPaymentMethodFromJson(
          e.toString(),
        ),
      )
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
