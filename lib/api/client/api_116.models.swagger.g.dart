// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_116.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminActivateCategoryResponse _$AdminActivateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivateCategoryResponse(
  category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminActivateCategoryResponseToJson(
  AdminActivateCategoryResponse instance,
) => <String, dynamic>{'category': instance.category.toJson()};

AdminActivateContentTypeResponse _$AdminActivateContentTypeResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivateContentTypeResponse(
  contentType: ContentTypeDto.fromJson(
    json['contentType'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminActivateContentTypeResponseToJson(
  AdminActivateContentTypeResponse instance,
) => <String, dynamic>{'contentType': instance.contentType.toJson()};

AdminActivatePackageResponse _$AdminActivatePackageResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivatePackageResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminActivatePackageResponseToJson(
  AdminActivatePackageResponse instance,
) => <String, dynamic>{'package': instance.package.toJson()};

AdminActivatePermissionResponse _$AdminActivatePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivatePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminActivatePermissionResponseToJson(
  AdminActivatePermissionResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminActivatePricingTierResponse _$AdminActivatePricingTierResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivatePricingTierResponse(
  pricingTier: PricingTierDto.fromJson(
    json['pricingTier'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminActivatePricingTierResponseToJson(
  AdminActivatePricingTierResponse instance,
) => <String, dynamic>{'pricingTier': instance.pricingTier.toJson()};

AdminActivatePromotionLevelResponse
_$AdminActivatePromotionLevelResponseFromJson(Map<String, dynamic> json) =>
    AdminActivatePromotionLevelResponse(
      promotionLevel: PromotionLevelDto.fromJson(
        json['promotionLevel'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AdminActivatePromotionLevelResponseToJson(
  AdminActivatePromotionLevelResponse instance,
) => <String, dynamic>{'promotionLevel': instance.promotionLevel.toJson()};

AdminActivateRoleResponse _$AdminActivateRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivateRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminActivateRoleResponseToJson(
  AdminActivateRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminActivateShortVideoResponse _$AdminActivateShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminActivateShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminActivateShortVideoResponseToJson(
  AdminActivateShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminAddCategoryPricingRequest _$AdminAddCategoryPricingRequestFromJson(
  Map<String, dynamic> json,
) => AdminAddCategoryPricingRequest(
  pricingTierId: json['pricingTierId'] as String,
  priceUsd: (json['priceUsd'] as num).toDouble(),
);

Map<String, dynamic> _$AdminAddCategoryPricingRequestToJson(
  AdminAddCategoryPricingRequest instance,
) => <String, dynamic>{
  'pricingTierId': instance.pricingTierId,
  'priceUsd': instance.priceUsd,
};

AdminAddCategoryPricingResponse _$AdminAddCategoryPricingResponseFromJson(
  Map<String, dynamic> json,
) => AdminAddCategoryPricingResponse(
  pricing: CategoryPricingDto.fromJson(json['pricing'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAddCategoryPricingResponseToJson(
  AdminAddCategoryPricingResponse instance,
) => <String, dynamic>{'pricing': instance.pricing.toJson()};

AdminAddItemTierRequest _$AdminAddItemTierRequestFromJson(
  Map<String, dynamic> json,
) => AdminAddItemTierRequest(pricingTierId: json['pricingTierId'] as String);

Map<String, dynamic> _$AdminAddItemTierRequestToJson(
  AdminAddItemTierRequest instance,
) => <String, dynamic>{'pricingTierId': instance.pricingTierId};

AdminAddItemTierResponse _$AdminAddItemTierResponseFromJson(
  Map<String, dynamic> json,
) => AdminAddItemTierResponse(
  tier: ItemTierDto.fromJson(json['tier'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAddItemTierResponseToJson(
  AdminAddItemTierResponse instance,
) => <String, dynamic>{'tier': instance.tier.toJson()};

AdminAddOrderItemRequest _$AdminAddOrderItemRequestFromJson(
  Map<String, dynamic> json,
) => AdminAddOrderItemRequest(
  contentKind: adminAddOrderItemRequestContentKindFromJson(json['contentKind']),
  categoryId: json['categoryId'] as String,
  promotionLevelId: json['promotionLevelId'] as String?,
  socialBoost: json['socialBoost'] as bool,
  isBonus: json['isBonus'] as bool,
);

Map<String, dynamic> _$AdminAddOrderItemRequestToJson(
  AdminAddOrderItemRequest instance,
) => <String, dynamic>{
  'contentKind': adminAddOrderItemRequestContentKindToJson(
    instance.contentKind,
  ),
  'categoryId': instance.categoryId,
  'promotionLevelId': instance.promotionLevelId,
  'socialBoost': instance.socialBoost,
  'isBonus': instance.isBonus,
};

AdminAddOrderItemResponse _$AdminAddOrderItemResponseFromJson(
  Map<String, dynamic> json,
) => AdminAddOrderItemResponse(
  item: OrderItemDto.fromJson(json['item'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAddOrderItemResponseToJson(
  AdminAddOrderItemResponse instance,
) => <String, dynamic>{'item': instance.item.toJson()};

AdminAddPackageSlotRequest _$AdminAddPackageSlotRequestFromJson(
  Map<String, dynamic> json,
) => AdminAddPackageSlotRequest(
  categoryId: json['categoryId'] as String?,
  isRequired: json['isRequired'] as bool,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$AdminAddPackageSlotRequestToJson(
  AdminAddPackageSlotRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'isRequired': instance.isRequired,
  'quantity': instance.quantity,
};

AdminAddPackageSlotResponse _$AdminAddPackageSlotResponseFromJson(
  Map<String, dynamic> json,
) => AdminAddPackageSlotResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAddPackageSlotResponseToJson(
  AdminAddPackageSlotResponse instance,
) => <String, dynamic>{'package': instance.package.toJson()};

AdminApproveArticleResponse _$AdminApproveArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminApproveArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminApproveArticleResponseToJson(
  AdminApproveArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminApproveVideoResponse _$AdminApproveVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminApproveVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminApproveVideoResponseToJson(
  AdminApproveVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminArchiveArticleResponse _$AdminArchiveArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminArchiveArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminArchiveArticleResponseToJson(
  AdminArchiveArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminArchiveVideoResponse _$AdminArchiveVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminArchiveVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminArchiveVideoResponseToJson(
  AdminArchiveVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminAssignPermissionToRoleRequest _$AdminAssignPermissionToRoleRequestFromJson(
  Map<String, dynamic> json,
) => AdminAssignPermissionToRoleRequest(
  permissionId: json['permissionId'] as String,
);

Map<String, dynamic> _$AdminAssignPermissionToRoleRequestToJson(
  AdminAssignPermissionToRoleRequest instance,
) => <String, dynamic>{'permissionId': instance.permissionId};

AdminAssignPermissionToRoleResponse
_$AdminAssignPermissionToRoleResponseFromJson(Map<String, dynamic> json) =>
    AdminAssignPermissionToRoleResponse(
      role: RoleWithPermissionsDto.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AdminAssignPermissionToRoleResponseToJson(
  AdminAssignPermissionToRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminAssignRoleToUserRequest _$AdminAssignRoleToUserRequestFromJson(
  Map<String, dynamic> json,
) => AdminAssignRoleToUserRequest(roleId: json['roleId'] as String);

Map<String, dynamic> _$AdminAssignRoleToUserRequestToJson(
  AdminAssignRoleToUserRequest instance,
) => <String, dynamic>{'roleId': instance.roleId};

AdminAssignRoleToUserResponse _$AdminAssignRoleToUserResponseFromJson(
  Map<String, dynamic> json,
) => AdminAssignRoleToUserResponse(
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminAssignRoleToUserResponseToJson(
  AdminAssignRoleToUserResponse instance,
) => <String, dynamic>{'roles': instance.roles.map((e) => e.toJson()).toList()};

AdminAttachPaymentProofResponse _$AdminAttachPaymentProofResponseFromJson(
  Map<String, dynamic> json,
) => AdminAttachPaymentProofResponse(
  proof: FileDto.fromJson(json['proof'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAttachPaymentProofResponseToJson(
  AdminAttachPaymentProofResponse instance,
) => <String, dynamic>{'proof': instance.proof.toJson()};

AdminAttachYoutubeIdRequest _$AdminAttachYoutubeIdRequestFromJson(
  Map<String, dynamic> json,
) => AdminAttachYoutubeIdRequest(
  youtubeVideoId: json['youtubeVideoId'] as String,
);

Map<String, dynamic> _$AdminAttachYoutubeIdRequestToJson(
  AdminAttachYoutubeIdRequest instance,
) => <String, dynamic>{'youtubeVideoId': instance.youtubeVideoId};

AdminAttachYoutubeIdResponse _$AdminAttachYoutubeIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminAttachYoutubeIdResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminAttachYoutubeIdResponseToJson(
  AdminAttachYoutubeIdResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

AdminBulkUpdateRolePermissionsRequest
_$AdminBulkUpdateRolePermissionsRequestFromJson(Map<String, dynamic> json) =>
    AdminBulkUpdateRolePermissionsRequest(
      permissionIds:
          (json['permissionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminBulkUpdateRolePermissionsRequestToJson(
  AdminBulkUpdateRolePermissionsRequest instance,
) => <String, dynamic>{'permissionIds': instance.permissionIds};

AdminBulkUpdateRolePermissionsResponse
_$AdminBulkUpdateRolePermissionsResponseFromJson(Map<String, dynamic> json) =>
    AdminBulkUpdateRolePermissionsResponse(
      role: RoleWithPermissionsDto.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AdminBulkUpdateRolePermissionsResponseToJson(
  AdminBulkUpdateRolePermissionsResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminCancelOrderResponse _$AdminCancelOrderResponseFromJson(
  Map<String, dynamic> json,
) => AdminCancelOrderResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminCancelOrderResponseToJson(
  AdminCancelOrderResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminChangePasswordRequest _$AdminChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminChangePasswordRequest(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$AdminChangePasswordRequestToJson(
  AdminChangePasswordRequest instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};

AdminChangePasswordResponse _$AdminChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminChangePasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminChangePasswordResponseToJson(
  AdminChangePasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminCleanupExpiredSessionsResponse
_$AdminCleanupExpiredSessionsResponseFromJson(Map<String, dynamic> json) =>
    AdminCleanupExpiredSessionsResponse(
      deletedCount: (json['deletedCount'] as num).toInt(),
    );

Map<String, dynamic> _$AdminCleanupExpiredSessionsResponseToJson(
  AdminCleanupExpiredSessionsResponse instance,
) => <String, dynamic>{'deletedCount': instance.deletedCount};

AdminCreateArticleRequest _$AdminCreateArticleRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateArticleRequest(
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  customerId: json['customerId'] as String?,
  orderItemId: json['orderItemId'] as String?,
);

Map<String, dynamic> _$AdminCreateArticleRequestToJson(
  AdminCreateArticleRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'title': instance.title,
  'slug': instance.slug,
  'customerId': instance.customerId,
  'orderItemId': instance.orderItemId,
};

AdminCreateArticleResponse _$AdminCreateArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateArticleResponse(
  article: ArticleDetailDto.fromJson(json['article'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateArticleResponseToJson(
  AdminCreateArticleResponse instance,
) => <String, dynamic>{'article': instance.article.toJson()};

AdminCreateCategoryRequest _$AdminCreateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateCategoryRequest(
  name: json['name'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String?,
  isFree: json['isFree'] as bool,
);

Map<String, dynamic> _$AdminCreateCategoryRequestToJson(
  AdminCreateCategoryRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
  'isFree': instance.isFree,
};

AdminCreateCategoryResponse _$AdminCreateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateCategoryResponse(
  category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateCategoryResponseToJson(
  AdminCreateCategoryResponse instance,
) => <String, dynamic>{'category': instance.category.toJson()};

AdminCreateContentTypeRequest _$AdminCreateContentTypeRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateContentTypeRequest(name: json['name'] as String);

Map<String, dynamic> _$AdminCreateContentTypeRequestToJson(
  AdminCreateContentTypeRequest instance,
) => <String, dynamic>{'name': instance.name};

AdminCreateContentTypeResponse _$AdminCreateContentTypeResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateContentTypeResponse(
  contentType: ContentTypeDto.fromJson(
    json['contentType'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCreateContentTypeResponseToJson(
  AdminCreateContentTypeResponse instance,
) => <String, dynamic>{'contentType': instance.contentType.toJson()};

AdminCreateCustomerRequest _$AdminCreateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateCustomerRequest(
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  company: json['company'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$AdminCreateCustomerRequestToJson(
  AdminCreateCustomerRequest instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'email': instance.email,
  'phone': instance.phone,
  'company': instance.company,
  'notes': instance.notes,
};

AdminCreateCustomerResponse _$AdminCreateCustomerResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateCustomerResponse(
  customer: CustomerDto.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateCustomerResponseToJson(
  AdminCreateCustomerResponse instance,
) => <String, dynamic>{'customer': instance.customer.toJson()};

AdminCreateLyricsRequest _$AdminCreateLyricsRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateLyricsRequest(
  songTitle: json['songTitle'] as String,
  artistName: json['artistName'] as String,
  lyricsText: json['lyricsText'] as String,
  language: json['language'] as String,
  videoId: json['videoId'] as String?,
  articleId: json['articleId'] as String?,
);

Map<String, dynamic> _$AdminCreateLyricsRequestToJson(
  AdminCreateLyricsRequest instance,
) => <String, dynamic>{
  'songTitle': instance.songTitle,
  'artistName': instance.artistName,
  'lyricsText': instance.lyricsText,
  'language': instance.language,
  'videoId': instance.videoId,
  'articleId': instance.articleId,
};

AdminCreateLyricsResponse _$AdminCreateLyricsResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateLyricsResponse(
  lyrics: LyricsDto.fromJson(json['lyrics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateLyricsResponseToJson(
  AdminCreateLyricsResponse instance,
) => <String, dynamic>{'lyrics': instance.lyrics.toJson()};

AdminCreateOrderRequest _$AdminCreateOrderRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateOrderRequest(
  customerId: json['customerId'] as String,
  packageId: json['packageId'] as String?,
);

Map<String, dynamic> _$AdminCreateOrderRequestToJson(
  AdminCreateOrderRequest instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'packageId': instance.packageId,
};

AdminCreateOrderResponse _$AdminCreateOrderResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateOrderResponse(
  order: ContentOrderSummaryDto.fromJson(json['order'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateOrderResponseToJson(
  AdminCreateOrderResponse instance,
) => <String, dynamic>{'order': instance.order.toJson()};

AdminCreatePackageRequest _$AdminCreatePackageRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreatePackageRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  flatPriceUsd: (json['flatPriceUsd'] as num).toDouble(),
);

Map<String, dynamic> _$AdminCreatePackageRequestToJson(
  AdminCreatePackageRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'flatPriceUsd': instance.flatPriceUsd,
};

AdminCreatePackageResponse _$AdminCreatePackageResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreatePackageResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreatePackageResponseToJson(
  AdminCreatePackageResponse instance,
) => <String, dynamic>{'package': instance.package.toJson()};

AdminCreatePermissionRequest _$AdminCreatePermissionRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreatePermissionRequest(
  resource: json['resource'] as String,
  action: json['action'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$AdminCreatePermissionRequestToJson(
  AdminCreatePermissionRequest instance,
) => <String, dynamic>{
  'resource': instance.resource,
  'action': instance.action,
  'description': instance.description,
};

AdminCreatePermissionResponse _$AdminCreatePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreatePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCreatePermissionResponseToJson(
  AdminCreatePermissionResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminCreatePricingTierRequest _$AdminCreatePricingTierRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreatePricingTierRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AdminCreatePricingTierRequestToJson(
  AdminCreatePricingTierRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

AdminCreatePricingTierResponse _$AdminCreatePricingTierResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreatePricingTierResponse(
  pricingTier: PricingTierDto.fromJson(
    json['pricingTier'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCreatePricingTierResponseToJson(
  AdminCreatePricingTierResponse instance,
) => <String, dynamic>{'pricingTier': instance.pricingTier.toJson()};

AdminCreatePromotionLevelRequest _$AdminCreatePromotionLevelRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreatePromotionLevelRequest(
  name: json['name'] as String,
  durationDays: (json['durationDays'] as num).toInt(),
  priceUsd: (json['priceUsd'] as num).toDouble(),
);

Map<String, dynamic> _$AdminCreatePromotionLevelRequestToJson(
  AdminCreatePromotionLevelRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'durationDays': instance.durationDays,
  'priceUsd': instance.priceUsd,
};

AdminCreatePromotionLevelResponse _$AdminCreatePromotionLevelResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreatePromotionLevelResponse(
  promotionLevel: PromotionLevelDto.fromJson(
    json['promotionLevel'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCreatePromotionLevelResponseToJson(
  AdminCreatePromotionLevelResponse instance,
) => <String, dynamic>{'promotionLevel': instance.promotionLevel.toJson()};

AdminCreateRoleRequest _$AdminCreateRoleRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateRoleRequest(
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$AdminCreateRoleRequestToJson(
  AdminCreateRoleRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

AdminCreateRoleResponse _$AdminCreateRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateRoleResponseToJson(
  AdminCreateRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminCreateShortVideoResponse _$AdminCreateShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateShortVideoResponse(
  shortVideo: ShortVideoDto.fromJson(
    json['shortVideo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCreateShortVideoResponseToJson(
  AdminCreateShortVideoResponse instance,
) => <String, dynamic>{'shortVideo': instance.shortVideo.toJson()};

AdminCreateTagRequest _$AdminCreateTagRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateTagRequest(
  name: json['name'] as String,
  slug: json['slug'] as String,
);

Map<String, dynamic> _$AdminCreateTagRequestToJson(
  AdminCreateTagRequest instance,
) => <String, dynamic>{'name': instance.name, 'slug': instance.slug};

AdminCreateTagResponse _$AdminCreateTagResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateTagResponse(
  tag: TagDto.fromJson(json['tag'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateTagResponseToJson(
  AdminCreateTagResponse instance,
) => <String, dynamic>{'tag': instance.tag.toJson()};

AdminCreateVideoRequest _$AdminCreateVideoRequestFromJson(
  Map<String, dynamic> json,
) => AdminCreateVideoRequest(
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  customerId: json['customerId'] as String?,
  orderItemId: json['orderItemId'] as String?,
  description: json['description'] as String?,
  shootingScheduledAt: json['shootingScheduledAt'] == null
      ? null
      : DateTime.parse(json['shootingScheduledAt'] as String),
);

Map<String, dynamic> _$AdminCreateVideoRequestToJson(
  AdminCreateVideoRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'title': instance.title,
  'slug': instance.slug,
  'customerId': instance.customerId,
  'orderItemId': instance.orderItemId,
  'description': instance.description,
  'shootingScheduledAt': instance.shootingScheduledAt?.toIso8601String(),
};

AdminCreateVideoResponse _$AdminCreateVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminCreateVideoResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminCreateVideoResponseToJson(
  AdminCreateVideoResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

AdminDeactivateCategoryResponse _$AdminDeactivateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivateCategoryResponse(
  category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminDeactivateCategoryResponseToJson(
  AdminDeactivateCategoryResponse instance,
) => <String, dynamic>{'category': instance.category.toJson()};

AdminDeactivateContentTypeResponse _$AdminDeactivateContentTypeResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivateContentTypeResponse(
  contentType: ContentTypeDto.fromJson(
    json['contentType'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminDeactivateContentTypeResponseToJson(
  AdminDeactivateContentTypeResponse instance,
) => <String, dynamic>{'contentType': instance.contentType.toJson()};

AdminDeactivatePackageResponse _$AdminDeactivatePackageResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivatePackageResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminDeactivatePackageResponseToJson(
  AdminDeactivatePackageResponse instance,
) => <String, dynamic>{'package': instance.package.toJson()};

AdminDeactivatePermissionResponse _$AdminDeactivatePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivatePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminDeactivatePermissionResponseToJson(
  AdminDeactivatePermissionResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminDeactivatePricingTierResponse _$AdminDeactivatePricingTierResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivatePricingTierResponse(
  pricingTier: PricingTierDto.fromJson(
    json['pricingTier'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminDeactivatePricingTierResponseToJson(
  AdminDeactivatePricingTierResponse instance,
) => <String, dynamic>{'pricingTier': instance.pricingTier.toJson()};

AdminDeactivatePromotionLevelResponse
_$AdminDeactivatePromotionLevelResponseFromJson(Map<String, dynamic> json) =>
    AdminDeactivatePromotionLevelResponse(
      promotionLevel: PromotionLevelDto.fromJson(
        json['promotionLevel'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AdminDeactivatePromotionLevelResponseToJson(
  AdminDeactivatePromotionLevelResponse instance,
) => <String, dynamic>{'promotionLevel': instance.promotionLevel.toJson()};

AdminDeactivateRoleResponse _$AdminDeactivateRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivateRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminDeactivateRoleResponseToJson(
  AdminDeactivateRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminDeactivateShortVideoResponse _$AdminDeactivateShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeactivateShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminDeactivateShortVideoResponseToJson(
  AdminDeactivateShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminDeleteArticleCommentResponse _$AdminDeleteArticleCommentResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeleteArticleCommentResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminDeleteArticleCommentResponseToJson(
  AdminDeleteArticleCommentResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminDeleteArticleResponse _$AdminDeleteArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeleteArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminDeleteArticleResponseToJson(
  AdminDeleteArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminDeleteShortVideoResponse _$AdminDeleteShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeleteShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminDeleteShortVideoResponseToJson(
  AdminDeleteShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminDeleteVideoResponse _$AdminDeleteVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminDeleteVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminDeleteVideoResponseToJson(
  AdminDeleteVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminForceLogoutUserResponse _$AdminForceLogoutUserResponseFromJson(
  Map<String, dynamic> json,
) => AdminForceLogoutUserResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminForceLogoutUserResponseToJson(
  AdminForceLogoutUserResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminForgotPasswordRequest _$AdminForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminForgotPasswordRequest(email: json['email'] as String);

Map<String, dynamic> _$AdminForgotPasswordRequestToJson(
  AdminForgotPasswordRequest instance,
) => <String, dynamic>{'email': instance.email};

AdminForgotPasswordResponse _$AdminForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminForgotPasswordResponse(
  isSuccess: json['isSuccess'] as bool,
  email: json['email'] as String,
);

Map<String, dynamic> _$AdminForgotPasswordResponseToJson(
  AdminForgotPasswordResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'email': instance.email,
};

AdminGetAllArticlesResponse _$AdminGetAllArticlesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllArticlesResponse(
  articles: ArticleSummaryDtoPaginatedResult.fromJson(
    json['articles'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllArticlesResponseToJson(
  AdminGetAllArticlesResponse instance,
) => <String, dynamic>{'articles': instance.articles.toJson()};

AdminGetAllCategoriesResponse _$AdminGetAllCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllCategoriesResponse(
  categories: CategoryDtoPaginatedResult.fromJson(
    json['categories'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllCategoriesResponseToJson(
  AdminGetAllCategoriesResponse instance,
) => <String, dynamic>{'categories': instance.categories.toJson()};

AdminGetAllContentTypesResponse _$AdminGetAllContentTypesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllContentTypesResponse(
  contentTypes:
      (json['contentTypes'] as List<dynamic>?)
          ?.map((e) => ContentTypeDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetAllContentTypesResponseToJson(
  AdminGetAllContentTypesResponse instance,
) => <String, dynamic>{
  'contentTypes': instance.contentTypes.map((e) => e.toJson()).toList(),
};

AdminGetAllCustomersResponse _$AdminGetAllCustomersResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllCustomersResponse(
  customers: CustomerDtoPaginatedResult.fromJson(
    json['customers'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllCustomersResponseToJson(
  AdminGetAllCustomersResponse instance,
) => <String, dynamic>{'customers': instance.customers.toJson()};

AdminGetAllLyricsResponse _$AdminGetAllLyricsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllLyricsResponse(
  lyrics: LyricsDtoPaginatedResult.fromJson(
    json['lyrics'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllLyricsResponseToJson(
  AdminGetAllLyricsResponse instance,
) => <String, dynamic>{'lyrics': instance.lyrics.toJson()};

AdminGetAllOrdersResponse _$AdminGetAllOrdersResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllOrdersResponse(
  orders: ContentOrderSummaryDtoPaginatedResult.fromJson(
    json['orders'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllOrdersResponseToJson(
  AdminGetAllOrdersResponse instance,
) => <String, dynamic>{'orders': instance.orders.toJson()};

AdminGetAllPackagesResponse _$AdminGetAllPackagesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllPackagesResponse(
  packages: PackageDtoPaginatedResult.fromJson(
    json['packages'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllPackagesResponseToJson(
  AdminGetAllPackagesResponse instance,
) => <String, dynamic>{'packages': instance.packages.toJson()};

AdminGetAllPermissionsResponse _$AdminGetAllPermissionsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllPermissionsResponse(
  permissions: PermissionDtoPaginatedResult.fromJson(
    json['permissions'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllPermissionsResponseToJson(
  AdminGetAllPermissionsResponse instance,
) => <String, dynamic>{'permissions': instance.permissions.toJson()};

AdminGetAllPricingTiersResponse _$AdminGetAllPricingTiersResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllPricingTiersResponse(
  pricingTiers:
      (json['pricingTiers'] as List<dynamic>?)
          ?.map((e) => PricingTierDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetAllPricingTiersResponseToJson(
  AdminGetAllPricingTiersResponse instance,
) => <String, dynamic>{
  'pricingTiers': instance.pricingTiers.map((e) => e.toJson()).toList(),
};

AdminGetAllPromotionLevelsResponse _$AdminGetAllPromotionLevelsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllPromotionLevelsResponse(
  promotionLevels:
      (json['promotionLevels'] as List<dynamic>?)
          ?.map((e) => PromotionLevelDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetAllPromotionLevelsResponseToJson(
  AdminGetAllPromotionLevelsResponse instance,
) => <String, dynamic>{
  'promotionLevels': instance.promotionLevels.map((e) => e.toJson()).toList(),
};

AdminGetAllRolesResponse _$AdminGetAllRolesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllRolesResponse(
  roles: RoleDtoPaginatedResult.fromJson(json['roles'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetAllRolesResponseToJson(
  AdminGetAllRolesResponse instance,
) => <String, dynamic>{'roles': instance.roles.toJson()};

AdminGetAllSessionsResponse _$AdminGetAllSessionsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllSessionsResponse(
  sessions: SessionDtoPaginatedResult.fromJson(
    json['sessions'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllSessionsResponseToJson(
  AdminGetAllSessionsResponse instance,
) => <String, dynamic>{'sessions': instance.sessions.toJson()};

AdminGetAllShortsResponse _$AdminGetAllShortsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllShortsResponse(
  shortVideos: ShortVideoDtoPaginatedResult.fromJson(
    json['shortVideos'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllShortsResponseToJson(
  AdminGetAllShortsResponse instance,
) => <String, dynamic>{'shortVideos': instance.shortVideos.toJson()};

AdminGetAllVideosResponse _$AdminGetAllVideosResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllVideosResponse(
  videos: VideoSummaryDtoPaginatedResult.fromJson(
    json['videos'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllVideosResponseToJson(
  AdminGetAllVideosResponse instance,
) => <String, dynamic>{'videos': instance.videos.toJson()};

AdminGetArticleByIdResponse _$AdminGetArticleByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetArticleByIdResponse(
  article: ArticleDetailDto.fromJson(json['article'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetArticleByIdResponseToJson(
  AdminGetArticleByIdResponse instance,
) => <String, dynamic>{'article': instance.article.toJson()};

AdminGetCategoryByIdResponse _$AdminGetCategoryByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetCategoryByIdResponse(
  category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetCategoryByIdResponseToJson(
  AdminGetCategoryByIdResponse instance,
) => <String, dynamic>{'category': instance.category.toJson()};

AdminGetCustomerByIdResponse _$AdminGetCustomerByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetCustomerByIdResponse(
  customer: CustomerDto.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetCustomerByIdResponseToJson(
  AdminGetCustomerByIdResponse instance,
) => <String, dynamic>{'customer': instance.customer.toJson()};

AdminGetCustomerOrdersResponse _$AdminGetCustomerOrdersResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetCustomerOrdersResponse(
  orders: ContentOrderSummaryDtoPaginatedResult.fromJson(
    json['orders'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetCustomerOrdersResponseToJson(
  AdminGetCustomerOrdersResponse instance,
) => <String, dynamic>{'orders': instance.orders.toJson()};

AdminGetOrderByIdResponse _$AdminGetOrderByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOrderByIdResponse(
  order: ContentOrderDetailDto.fromJson(json['order'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOrderByIdResponseToJson(
  AdminGetOrderByIdResponse instance,
) => <String, dynamic>{'order': instance.order.toJson()};

AdminGetOrderPaymentResponse _$AdminGetOrderPaymentResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOrderPaymentResponse(
  payment: PaymentDto.fromJson(json['payment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOrderPaymentResponseToJson(
  AdminGetOrderPaymentResponse instance,
) => <String, dynamic>{'payment': instance.payment.toJson()};

AdminGetOwnProfileResponse _$AdminGetOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOwnProfileResponseToJson(
  AdminGetOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminGetOwnRolesResponse _$AdminGetOwnRolesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnRolesResponse(
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map(
            (e) => RoleWithPermissionsDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetOwnRolesResponseToJson(
  AdminGetOwnRolesResponse instance,
) => <String, dynamic>{'roles': instance.roles.map((e) => e.toJson()).toList()};

AdminGetOwnSessionByIdResponse _$AdminGetOwnSessionByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnSessionByIdResponse(
  session: SessionDto.fromJson(json['session'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOwnSessionByIdResponseToJson(
  AdminGetOwnSessionByIdResponse instance,
) => <String, dynamic>{'session': instance.session.toJson()};

AdminGetOwnSessionsResponse _$AdminGetOwnSessionsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnSessionsResponse(
  sessions:
      (json['sessions'] as List<dynamic>?)
          ?.map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetOwnSessionsResponseToJson(
  AdminGetOwnSessionsResponse instance,
) => <String, dynamic>{
  'sessions': instance.sessions.map((e) => e.toJson()).toList(),
};

AdminGetPackageByIdResponse _$AdminGetPackageByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetPackageByIdResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetPackageByIdResponseToJson(
  AdminGetPackageByIdResponse instance,
) => <String, dynamic>{'package': instance.package.toJson()};

AdminGetPendingPaymentOrdersResponse
_$AdminGetPendingPaymentOrdersResponseFromJson(Map<String, dynamic> json) =>
    AdminGetPendingPaymentOrdersResponse(
      orders: ContentOrderSummaryDtoPaginatedResult.fromJson(
        json['orders'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AdminGetPendingPaymentOrdersResponseToJson(
  AdminGetPendingPaymentOrdersResponse instance,
) => <String, dynamic>{'orders': instance.orders.toJson()};

AdminGetPermissionByIdResponse _$AdminGetPermissionByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetPermissionByIdResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetPermissionByIdResponseToJson(
  AdminGetPermissionByIdResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminGetRoleByIdResponse _$AdminGetRoleByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetRoleByIdResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => PermissionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetRoleByIdResponseToJson(
  AdminGetRoleByIdResponse instance,
) => <String, dynamic>{
  'role': instance.role.toJson(),
  'permissions': instance.permissions.map((e) => e.toJson()).toList(),
};

AdminGetSessionMetricsResponse _$AdminGetSessionMetricsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetSessionMetricsResponse(
  browsers: BrowserMetrics.fromJson(json['browsers'] as Map<String, dynamic>),
  devices: DeviceMetrics.fromJson(json['devices'] as Map<String, dynamic>),
  platforms: PlatformMetrics.fromJson(
    json['platforms'] as Map<String, dynamic>,
  ),
  clients: ClientMetrics.fromJson(json['clients'] as Map<String, dynamic>),
  totalActiveSessions: (json['totalActiveSessions'] as num).toInt(),
  totalActiveUsers: (json['totalActiveUsers'] as num).toInt(),
);

Map<String, dynamic> _$AdminGetSessionMetricsResponseToJson(
  AdminGetSessionMetricsResponse instance,
) => <String, dynamic>{
  'browsers': instance.browsers.toJson(),
  'devices': instance.devices.toJson(),
  'platforms': instance.platforms.toJson(),
  'clients': instance.clients.toJson(),
  'totalActiveSessions': instance.totalActiveSessions,
  'totalActiveUsers': instance.totalActiveUsers,
};

AdminGetShortByIdResponse _$AdminGetShortByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetShortByIdResponse(
  shortVideo: ShortVideoDto.fromJson(
    json['shortVideo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetShortByIdResponseToJson(
  AdminGetShortByIdResponse instance,
) => <String, dynamic>{'shortVideo': instance.shortVideo.toJson()};

AdminGetUserRolesResponse _$AdminGetUserRolesResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetUserRolesResponse(
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AdminGetUserRolesResponseToJson(
  AdminGetUserRolesResponse instance,
) => <String, dynamic>{'roles': instance.roles.map((e) => e.toJson()).toList()};

AdminGetVideoByIdResponse _$AdminGetVideoByIdResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetVideoByIdResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetVideoByIdResponseToJson(
  AdminGetVideoByIdResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

AdminHardDeletePermissionResponse _$AdminHardDeletePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminHardDeletePermissionResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminHardDeletePermissionResponseToJson(
  AdminHardDeletePermissionResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminHardDeleteRoleResponse _$AdminHardDeleteRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminHardDeleteRoleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminHardDeleteRoleResponseToJson(
  AdminHardDeleteRoleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminLoginRequest _$AdminLoginRequestFromJson(Map<String, dynamic> json) =>
    AdminLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AdminLoginRequestToJson(AdminLoginRequest instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

AdminLoginResponse _$AdminLoginResponseFromJson(Map<String, dynamic> json) =>
    AdminLoginResponse(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminLoginResponseToJson(AdminLoginResponse instance) =>
    <String, dynamic>{'user': instance.user.toJson()};

AdminPublishArticleResponse _$AdminPublishArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminPublishArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminPublishArticleResponseToJson(
  AdminPublishArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminPublishVideoResponse _$AdminPublishVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminPublishVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminPublishVideoResponseToJson(
  AdminPublishVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminRefreshTokenResponse _$AdminRefreshTokenResponseFromJson(
  Map<String, dynamic> json,
) => AdminRefreshTokenResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminRefreshTokenResponseToJson(
  AdminRefreshTokenResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminRejectArticleRequest _$AdminRejectArticleRequestFromJson(
  Map<String, dynamic> json,
) => AdminRejectArticleRequest(reason: json['reason'] as String);

Map<String, dynamic> _$AdminRejectArticleRequestToJson(
  AdminRejectArticleRequest instance,
) => <String, dynamic>{'reason': instance.reason};

AdminRejectArticleResponse _$AdminRejectArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminRejectArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminRejectArticleResponseToJson(
  AdminRejectArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminRejectPaymentRequest _$AdminRejectPaymentRequestFromJson(
  Map<String, dynamic> json,
) => AdminRejectPaymentRequest(notes: json['notes'] as String?);

Map<String, dynamic> _$AdminRejectPaymentRequestToJson(
  AdminRejectPaymentRequest instance,
) => <String, dynamic>{'notes': instance.notes};

AdminRejectPaymentResponse _$AdminRejectPaymentResponseFromJson(
  Map<String, dynamic> json,
) => AdminRejectPaymentResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminRejectPaymentResponseToJson(
  AdminRejectPaymentResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminRejectVideoRequest _$AdminRejectVideoRequestFromJson(
  Map<String, dynamic> json,
) => AdminRejectVideoRequest(reason: json['reason'] as String);

Map<String, dynamic> _$AdminRejectVideoRequestToJson(
  AdminRejectVideoRequest instance,
) => <String, dynamic>{'reason': instance.reason};

AdminRejectVideoResponse _$AdminRejectVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminRejectVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminRejectVideoResponseToJson(
  AdminRejectVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminRemoveCategoryPricingResponse _$AdminRemoveCategoryPricingResponseFromJson(
  Map<String, dynamic> json,
) => AdminRemoveCategoryPricingResponse(
  pricing:
      (json['pricing'] as List<dynamic>?)
          ?.map((e) => CategoryPricingDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$AdminRemoveCategoryPricingResponseToJson(
  AdminRemoveCategoryPricingResponse instance,
) => <String, dynamic>{
  'pricing': instance.pricing.map((e) => e.toJson()).toList(),
  'isSuccess': instance.isSuccess,
};

AdminRemovePackageSlotResponse _$AdminRemovePackageSlotResponseFromJson(
  Map<String, dynamic> json,
) => AdminRemovePackageSlotResponse(
  package: PackageDto.fromJson(json['package'] as Map<String, dynamic>),
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$AdminRemovePackageSlotResponseToJson(
  AdminRemovePackageSlotResponse instance,
) => <String, dynamic>{
  'package': instance.package.toJson(),
  'isSuccess': instance.isSuccess,
};

AdminRemovePermissionFromRoleResponse
_$AdminRemovePermissionFromRoleResponseFromJson(Map<String, dynamic> json) =>
    AdminRemovePermissionFromRoleResponse(
      role: RoleWithPermissionsDto.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
      isSuccess: json['isSuccess'] as bool,
    );

Map<String, dynamic> _$AdminRemovePermissionFromRoleResponseToJson(
  AdminRemovePermissionFromRoleResponse instance,
) => <String, dynamic>{
  'role': instance.role.toJson(),
  'isSuccess': instance.isSuccess,
};

AdminRemoveRoleFromUserResponse _$AdminRemoveRoleFromUserResponseFromJson(
  Map<String, dynamic> json,
) => AdminRemoveRoleFromUserResponse(
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$AdminRemoveRoleFromUserResponseToJson(
  AdminRemoveRoleFromUserResponse instance,
) => <String, dynamic>{
  'roles': instance.roles.map((e) => e.toJson()).toList(),
  'isSuccess': instance.isSuccess,
};

AdminResendOtpRequest _$AdminResendOtpRequestFromJson(
  Map<String, dynamic> json,
) => AdminResendOtpRequest(
  email: json['email'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$AdminResendOtpRequestToJson(
  AdminResendOtpRequest instance,
) => <String, dynamic>{'email': instance.email, 'purpose': instance.purpose};

AdminResendOtpResponse _$AdminResendOtpResponseFromJson(
  Map<String, dynamic> json,
) => AdminResendOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminResendOtpResponseToJson(
  AdminResendOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminResetPasswordRequest _$AdminResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$AdminResetPasswordRequestToJson(
  AdminResetPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'newPassword': instance.newPassword,
};

AdminResetPasswordResponse _$AdminResetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminResetPasswordResponseToJson(
  AdminResetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminRestorePermissionResponse _$AdminRestorePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminRestorePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminRestorePermissionResponseToJson(
  AdminRestorePermissionResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminRestoreRoleResponse _$AdminRestoreRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminRestoreRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminRestoreRoleResponseToJson(
  AdminRestoreRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminRevokeSessionResponse _$AdminRevokeSessionResponseFromJson(
  Map<String, dynamic> json,
) => AdminRevokeSessionResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminRevokeSessionResponseToJson(
  AdminRevokeSessionResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminScheduleShootRequest _$AdminScheduleShootRequestFromJson(
  Map<String, dynamic> json,
) => AdminScheduleShootRequest(
  shootingScheduledAt: DateTime.parse(json['shootingScheduledAt'] as String),
);

Map<String, dynamic> _$AdminScheduleShootRequestToJson(
  AdminScheduleShootRequest instance,
) => <String, dynamic>{
  'shootingScheduledAt': instance.shootingScheduledAt.toIso8601String(),
};

AdminScheduleShootResponse _$AdminScheduleShootResponseFromJson(
  Map<String, dynamic> json,
) => AdminScheduleShootResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminScheduleShootResponseToJson(
  AdminScheduleShootResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSignOutFromAllDevicesResponse _$AdminSignOutFromAllDevicesResponseFromJson(
  Map<String, dynamic> json,
) => AdminSignOutFromAllDevicesResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSignOutFromAllDevicesResponseToJson(
  AdminSignOutFromAllDevicesResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSignOutRequest _$AdminSignOutRequestFromJson(Map<String, dynamic> json) =>
    AdminSignOutRequest(refreshToken: json['refreshToken'] as String?);

Map<String, dynamic> _$AdminSignOutRequestToJson(
  AdminSignOutRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

AdminSignOutResponse _$AdminSignOutResponseFromJson(
  Map<String, dynamic> json,
) => AdminSignOutResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSignOutResponseToJson(
  AdminSignOutResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSoftDeletePermissionResponse _$AdminSoftDeletePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminSoftDeletePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$AdminSoftDeletePermissionResponseToJson(
  AdminSoftDeletePermissionResponse instance,
) => <String, dynamic>{
  'permission': instance.permission.toJson(),
  'isSuccess': instance.isSuccess,
};

AdminSoftDeleteRoleResponse _$AdminSoftDeleteRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminSoftDeleteRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$AdminSoftDeleteRoleResponseToJson(
  AdminSoftDeleteRoleResponse instance,
) => <String, dynamic>{
  'role': instance.role.toJson(),
  'isSuccess': instance.isSuccess,
};

AdminSubmitArticleResponse _$AdminSubmitArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminSubmitArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSubmitArticleResponseToJson(
  AdminSubmitArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSubmitOrderResponse _$AdminSubmitOrderResponseFromJson(
  Map<String, dynamic> json,
) => AdminSubmitOrderResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSubmitOrderResponseToJson(
  AdminSubmitOrderResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSubmitVideoResponse _$AdminSubmitVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminSubmitVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSubmitVideoResponseToJson(
  AdminSubmitVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminUpdateArticleRequest _$AdminUpdateArticleRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleRequest(
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  headline: json['headline'] as String,
  body: json['body'] as String,
  coverImageUrl: json['coverImageUrl'] as String?,
  customerId: json['customerId'] as String?,
  orderItemId: json['orderItemId'] as String?,
  socialBoost: json['socialBoost'] as bool,
  isFeatured: json['isFeatured'] as bool,
  featuredUntil: json['featuredUntil'] == null
      ? null
      : DateTime.parse(json['featuredUntil'] as String),
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
);

Map<String, dynamic> _$AdminUpdateArticleRequestToJson(
  AdminUpdateArticleRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'title': instance.title,
  'slug': instance.slug,
  'headline': instance.headline,
  'body': instance.body,
  'coverImageUrl': instance.coverImageUrl,
  'customerId': instance.customerId,
  'orderItemId': instance.orderItemId,
  'socialBoost': instance.socialBoost,
  'isFeatured': instance.isFeatured,
  'featuredUntil': instance.featuredUntil?.toIso8601String(),
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
};

AdminUpdateArticleResponse _$AdminUpdateArticleResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleResponse(
  article: ArticleDetailDto.fromJson(json['article'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateArticleResponseToJson(
  AdminUpdateArticleResponse instance,
) => <String, dynamic>{'article': instance.article.toJson()};

AdminUpdateArticleSeoRequest _$AdminUpdateArticleSeoRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleSeoRequest(
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
);

Map<String, dynamic> _$AdminUpdateArticleSeoRequestToJson(
  AdminUpdateArticleSeoRequest instance,
) => <String, dynamic>{
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
};

AdminUpdateArticleSeoResponse _$AdminUpdateArticleSeoResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleSeoResponse(
  article: ArticleDetailDto.fromJson(json['article'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateArticleSeoResponseToJson(
  AdminUpdateArticleSeoResponse instance,
) => <String, dynamic>{'article': instance.article.toJson()};

AdminUpdateArticleTagsRequest _$AdminUpdateArticleTagsRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleTagsRequest(
  tagIds:
      (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
);

Map<String, dynamic> _$AdminUpdateArticleTagsRequestToJson(
  AdminUpdateArticleTagsRequest instance,
) => <String, dynamic>{'tagIds': instance.tagIds};

AdminUpdateArticleTagsResponse _$AdminUpdateArticleTagsResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateArticleTagsResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminUpdateArticleTagsResponseToJson(
  AdminUpdateArticleTagsResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminUpdateAvatarResponse _$AdminUpdateAvatarResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateAvatarResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateAvatarResponseToJson(
  AdminUpdateAvatarResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminUpdateCategoryPricingRequest _$AdminUpdateCategoryPricingRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCategoryPricingRequest(
  priceUsd: (json['priceUsd'] as num).toDouble(),
);

Map<String, dynamic> _$AdminUpdateCategoryPricingRequestToJson(
  AdminUpdateCategoryPricingRequest instance,
) => <String, dynamic>{'priceUsd': instance.priceUsd};

AdminUpdateCategoryPricingResponse _$AdminUpdateCategoryPricingResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCategoryPricingResponse(
  pricing: CategoryPricingDto.fromJson(json['pricing'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateCategoryPricingResponseToJson(
  AdminUpdateCategoryPricingResponse instance,
) => <String, dynamic>{'pricing': instance.pricing.toJson()};

AdminUpdateCategoryRequest _$AdminUpdateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCategoryRequest(
  name: json['name'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AdminUpdateCategoryRequestToJson(
  AdminUpdateCategoryRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
};

AdminUpdateCategoryResponse _$AdminUpdateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCategoryResponse(
  category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateCategoryResponseToJson(
  AdminUpdateCategoryResponse instance,
) => <String, dynamic>{'category': instance.category.toJson()};

AdminUpdateContentTypeRequest _$AdminUpdateContentTypeRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateContentTypeRequest(name: json['name'] as String);

Map<String, dynamic> _$AdminUpdateContentTypeRequestToJson(
  AdminUpdateContentTypeRequest instance,
) => <String, dynamic>{'name': instance.name};

AdminUpdateContentTypeResponse _$AdminUpdateContentTypeResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateContentTypeResponse(
  contentType: ContentTypeDto.fromJson(
    json['contentType'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminUpdateContentTypeResponseToJson(
  AdminUpdateContentTypeResponse instance,
) => <String, dynamic>{'contentType': instance.contentType.toJson()};

AdminUpdateCustomerRequest _$AdminUpdateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCustomerRequest(
  fullName: json['fullName'] as String,
  phone: json['phone'] as String?,
  company: json['company'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$AdminUpdateCustomerRequestToJson(
  AdminUpdateCustomerRequest instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'phone': instance.phone,
  'company': instance.company,
  'notes': instance.notes,
};

AdminUpdateCustomerResponse _$AdminUpdateCustomerResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateCustomerResponse(
  customer: CustomerDto.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateCustomerResponseToJson(
  AdminUpdateCustomerResponse instance,
) => <String, dynamic>{'customer': instance.customer.toJson()};

AdminUpdateLyricsRequest _$AdminUpdateLyricsRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateLyricsRequest(lyricsText: json['lyricsText'] as String);

Map<String, dynamic> _$AdminUpdateLyricsRequestToJson(
  AdminUpdateLyricsRequest instance,
) => <String, dynamic>{'lyricsText': instance.lyricsText};

AdminUpdateLyricsResponse _$AdminUpdateLyricsResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateLyricsResponse(
  lyrics: LyricsDto.fromJson(json['lyrics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateLyricsResponseToJson(
  AdminUpdateLyricsResponse instance,
) => <String, dynamic>{'lyrics': instance.lyrics.toJson()};

AdminUpdateLyricsSeoRequest _$AdminUpdateLyricsSeoRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateLyricsSeoRequest(
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
  metaKeywords: json['metaKeywords'] as String?,
  structuredData: json['structuredData'] as String?,
);

Map<String, dynamic> _$AdminUpdateLyricsSeoRequestToJson(
  AdminUpdateLyricsSeoRequest instance,
) => <String, dynamic>{
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
  'metaKeywords': instance.metaKeywords,
  'structuredData': instance.structuredData,
};

AdminUpdateLyricsSeoResponse _$AdminUpdateLyricsSeoResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateLyricsSeoResponse(
  lyrics: LyricsDto.fromJson(json['lyrics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateLyricsSeoResponseToJson(
  AdminUpdateLyricsSeoResponse instance,
) => <String, dynamic>{'lyrics': instance.lyrics.toJson()};

AdminUpdateOwnProfileRequest _$AdminUpdateOwnProfileRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateOwnProfileRequest(
  userName: json['userName'] as String?,
  countryName: json['countryName'] as String?,
  partialPhoneNumber: json['partialPhoneNumber'] as String?,
  countryIsoCode: json['countryIsoCode'] as String?,
  countryDialCode: json['countryDialCode'] as String?,
);

Map<String, dynamic> _$AdminUpdateOwnProfileRequestToJson(
  AdminUpdateOwnProfileRequest instance,
) => <String, dynamic>{
  'userName': instance.userName,
  'countryName': instance.countryName,
  'partialPhoneNumber': instance.partialPhoneNumber,
  'countryIsoCode': instance.countryIsoCode,
  'countryDialCode': instance.countryDialCode,
};

AdminUpdateOwnProfileResponse _$AdminUpdateOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateOwnProfileResponseToJson(
  AdminUpdateOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminUpdatePermissionRequest _$AdminUpdatePermissionRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePermissionRequest(
  resource: json['resource'] as String?,
  action: json['action'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AdminUpdatePermissionRequestToJson(
  AdminUpdatePermissionRequest instance,
) => <String, dynamic>{
  'resource': instance.resource,
  'action': instance.action,
  'description': instance.description,
};

AdminUpdatePermissionResponse _$AdminUpdatePermissionResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePermissionResponse(
  permission: PermissionDto.fromJson(
    json['permission'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminUpdatePermissionResponseToJson(
  AdminUpdatePermissionResponse instance,
) => <String, dynamic>{'permission': instance.permission.toJson()};

AdminUpdatePricingTierRequest _$AdminUpdatePricingTierRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePricingTierRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AdminUpdatePricingTierRequestToJson(
  AdminUpdatePricingTierRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

AdminUpdatePricingTierResponse _$AdminUpdatePricingTierResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePricingTierResponse(
  pricingTier: PricingTierDto.fromJson(
    json['pricingTier'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminUpdatePricingTierResponseToJson(
  AdminUpdatePricingTierResponse instance,
) => <String, dynamic>{'pricingTier': instance.pricingTier.toJson()};

AdminUpdatePromotionLevelRequest _$AdminUpdatePromotionLevelRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePromotionLevelRequest(
  name: json['name'] as String,
  durationDays: (json['durationDays'] as num).toInt(),
  priceUsd: (json['priceUsd'] as num).toDouble(),
);

Map<String, dynamic> _$AdminUpdatePromotionLevelRequestToJson(
  AdminUpdatePromotionLevelRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'durationDays': instance.durationDays,
  'priceUsd': instance.priceUsd,
};

AdminUpdatePromotionLevelResponse _$AdminUpdatePromotionLevelResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdatePromotionLevelResponse(
  promotionLevel: PromotionLevelDto.fromJson(
    json['promotionLevel'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminUpdatePromotionLevelResponseToJson(
  AdminUpdatePromotionLevelResponse instance,
) => <String, dynamic>{'promotionLevel': instance.promotionLevel.toJson()};

AdminUpdateRoleRequest _$AdminUpdateRoleRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateRoleRequest(
  name: json['name'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AdminUpdateRoleRequestToJson(
  AdminUpdateRoleRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
};

AdminUpdateRoleResponse _$AdminUpdateRoleResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateRoleResponse(
  role: RoleDto.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateRoleResponseToJson(
  AdminUpdateRoleResponse instance,
) => <String, dynamic>{'role': instance.role.toJson()};

AdminUpdateVideoRequest _$AdminUpdateVideoRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoRequest(
  categoryId: json['categoryId'] as String,
  title: json['title'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String?,
  customerId: json['customerId'] as String?,
  orderItemId: json['orderItemId'] as String?,
  socialBoost: json['socialBoost'] as bool,
  isFeatured: json['isFeatured'] as bool,
  featuredUntil: json['featuredUntil'] == null
      ? null
      : DateTime.parse(json['featuredUntil'] as String),
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
);

Map<String, dynamic> _$AdminUpdateVideoRequestToJson(
  AdminUpdateVideoRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'title': instance.title,
  'slug': instance.slug,
  'description': instance.description,
  'customerId': instance.customerId,
  'orderItemId': instance.orderItemId,
  'socialBoost': instance.socialBoost,
  'isFeatured': instance.isFeatured,
  'featuredUntil': instance.featuredUntil?.toIso8601String(),
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
};

AdminUpdateVideoResponse _$AdminUpdateVideoResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateVideoResponseToJson(
  AdminUpdateVideoResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

AdminUpdateVideoSeoRequest _$AdminUpdateVideoSeoRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoSeoRequest(
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
);

Map<String, dynamic> _$AdminUpdateVideoSeoRequestToJson(
  AdminUpdateVideoSeoRequest instance,
) => <String, dynamic>{
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
};

AdminUpdateVideoSeoResponse _$AdminUpdateVideoSeoResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoSeoResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateVideoSeoResponseToJson(
  AdminUpdateVideoSeoResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

AdminUpdateVideoTagsRequest _$AdminUpdateVideoTagsRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoTagsRequest(
  tagIds:
      (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
);

Map<String, dynamic> _$AdminUpdateVideoTagsRequestToJson(
  AdminUpdateVideoTagsRequest instance,
) => <String, dynamic>{'tagIds': instance.tagIds};

AdminUpdateVideoTagsResponse _$AdminUpdateVideoTagsResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateVideoTagsResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminUpdateVideoTagsResponseToJson(
  AdminUpdateVideoTagsResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminUploadArticleImageResponse _$AdminUploadArticleImageResponseFromJson(
  Map<String, dynamic> json,
) => AdminUploadArticleImageResponse(
  image: ArticleImageDto.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUploadArticleImageResponseToJson(
  AdminUploadArticleImageResponse instance,
) => <String, dynamic>{'image': instance.image.toJson()};

AdminUploadShortVideoThumbnailResponse
_$AdminUploadShortVideoThumbnailResponseFromJson(Map<String, dynamic> json) =>
    AdminUploadShortVideoThumbnailResponse(
      thumbnailUrl: json['thumbnailUrl'] as String,
      thumbnailStorageKey: json['thumbnailStorageKey'] as String,
    );

Map<String, dynamic> _$AdminUploadShortVideoThumbnailResponseToJson(
  AdminUploadShortVideoThumbnailResponse instance,
) => <String, dynamic>{
  'thumbnailUrl': instance.thumbnailUrl,
  'thumbnailStorageKey': instance.thumbnailStorageKey,
};

AdminUploadVideoThumbnailResponse _$AdminUploadVideoThumbnailResponseFromJson(
  Map<String, dynamic> json,
) => AdminUploadVideoThumbnailResponse(
  thumbnailUrl: json['thumbnailUrl'] as String,
  thumbnailStorageKey: json['thumbnailStorageKey'] as String,
);

Map<String, dynamic> _$AdminUploadVideoThumbnailResponseToJson(
  AdminUploadVideoThumbnailResponse instance,
) => <String, dynamic>{
  'thumbnailUrl': instance.thumbnailUrl,
  'thumbnailStorageKey': instance.thumbnailStorageKey,
};

AdminVerifyOtpRequest _$AdminVerifyOtpRequestFromJson(
  Map<String, dynamic> json,
) => AdminVerifyOtpRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$AdminVerifyOtpRequestToJson(
  AdminVerifyOtpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'purpose': instance.purpose,
};

AdminVerifyOtpResponse _$AdminVerifyOtpResponseFromJson(
  Map<String, dynamic> json,
) => AdminVerifyOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminVerifyOtpResponseToJson(
  AdminVerifyOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminVerifyPaymentRequest _$AdminVerifyPaymentRequestFromJson(
  Map<String, dynamic> json,
) => AdminVerifyPaymentRequest(receiptUrl: json['receiptUrl'] as String);

Map<String, dynamic> _$AdminVerifyPaymentRequestToJson(
  AdminVerifyPaymentRequest instance,
) => <String, dynamic>{'receiptUrl': instance.receiptUrl};

AdminVerifyPaymentResponse _$AdminVerifyPaymentResponseFromJson(
  Map<String, dynamic> json,
) => AdminVerifyPaymentResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminVerifyPaymentResponseToJson(
  AdminVerifyPaymentResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

ArticleCommentDto _$ArticleCommentDtoFromJson(Map<String, dynamic> json) =>
    ArticleCommentDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      userId: json['userId'] as String,
      body: json['body'] as String?,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$ArticleCommentDtoToJson(ArticleCommentDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'userId': instance.userId,
      'body': instance.body,
      'isDeleted': instance.isDeleted,
    };

ArticleCommentDtoPaginatedResult _$ArticleCommentDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => ArticleCommentDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ArticleCommentDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ArticleCommentDtoPaginatedResultToJson(
  ArticleCommentDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ArticleDetailDto _$ArticleDetailDtoFromJson(Map<String, dynamic> json) =>
    ArticleDetailDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      headline: json['headline'] as String,
      body: json['body'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      authorId: json['authorId'] as String,
      status: articleDetailDtoStatusFromJson(json['status']),
      rejectionReason: json['rejectionReason'] as String?,
      isFeatured: json['isFeatured'] as bool,
      featuredUntil: json['featuredUntil'] == null
          ? null
          : DateTime.parse(json['featuredUntil'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => ArticleImageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tags:
          (json['tags'] as List<dynamic>?)
              ?.map((e) => TagDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      readTimeInMinutes: (json['readTimeInMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$ArticleDetailDtoToJson(ArticleDetailDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'title': instance.title,
      'slug': instance.slug,
      'headline': instance.headline,
      'body': instance.body,
      'coverImageUrl': instance.coverImageUrl,
      'authorId': instance.authorId,
      'status': articleDetailDtoStatusToJson(instance.status),
      'rejectionReason': instance.rejectionReason,
      'isFeatured': instance.isFeatured,
      'featuredUntil': instance.featuredUntil?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'readTimeInMinutes': instance.readTimeInMinutes,
    };

ArticleImageDto _$ArticleImageDtoFromJson(Map<String, dynamic> json) =>
    ArticleImageDto(
      id: json['id'] as String,
      url: json['url'] as String,
      storageKey: json['storageKey'] as String,
      imageType: articleImageDtoImageTypeFromJson(json['imageType']),
    );

Map<String, dynamic> _$ArticleImageDtoToJson(ArticleImageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'storageKey': instance.storageKey,
      'imageType': articleImageDtoImageTypeToJson(instance.imageType),
    };

ArticleSummaryDto _$ArticleSummaryDtoFromJson(Map<String, dynamic> json) =>
    ArticleSummaryDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      headline: json['headline'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      authorId: json['authorId'] as String,
      status: articleSummaryDtoStatusFromJson(json['status']),
      isFeatured: json['isFeatured'] as bool,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$ArticleSummaryDtoToJson(ArticleSummaryDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'title': instance.title,
      'slug': instance.slug,
      'headline': instance.headline,
      'coverImageUrl': instance.coverImageUrl,
      'authorId': instance.authorId,
      'status': articleSummaryDtoStatusToJson(instance.status),
      'isFeatured': instance.isFeatured,
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };

ArticleSummaryDtoPaginatedResult _$ArticleSummaryDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => ArticleSummaryDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ArticleSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ArticleSummaryDtoPaginatedResultToJson(
  ArticleSummaryDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

BrowserMetrics _$BrowserMetricsFromJson(Map<String, dynamic> json) =>
    BrowserMetrics(
      chrome: (json['chrome'] as num).toInt(),
      firefox: (json['firefox'] as num).toInt(),
      safari: (json['safari'] as num).toInt(),
      edge: (json['edge'] as num).toInt(),
      opera: (json['opera'] as num).toInt(),
      internetExplorer: (json['internetExplorer'] as num).toInt(),
      googleSearchApp: (json['googleSearchApp'] as num).toInt(),
      samsung: (json['samsung'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$BrowserMetricsToJson(BrowserMetrics instance) =>
    <String, dynamic>{
      'chrome': instance.chrome,
      'firefox': instance.firefox,
      'safari': instance.safari,
      'edge': instance.edge,
      'opera': instance.opera,
      'internetExplorer': instance.internetExplorer,
      'googleSearchApp': instance.googleSearchApp,
      'samsung': instance.samsung,
      'unknown': instance.unknown,
    };

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
  id: json['id'] as String,
  contentTypeId: json['contentTypeId'] as String,
  contentTypeName: json['contentTypeName'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  isFree: json['isFree'] as bool,
  isActive: json['isActive'] as bool,
  pricing:
      (json['pricing'] as List<dynamic>?)
          ?.map((e) => CategoryPricingDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentTypeId': instance.contentTypeId,
      'contentTypeName': instance.contentTypeName,
      'name': instance.name,
      'slug': instance.slug,
      'isFree': instance.isFree,
      'isActive': instance.isActive,
      'pricing': instance.pricing.map((e) => e.toJson()).toList(),
    };

CategoryDtoPaginatedResult _$CategoryDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => CategoryDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CategoryDtoPaginatedResultToJson(
  CategoryDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

CategoryPricingDto _$CategoryPricingDtoFromJson(Map<String, dynamic> json) =>
    CategoryPricingDto(
      tierId: json['tierId'] as String,
      tierName: json['tierName'] as String,
      priceUsd: (json['priceUsd'] as num).toDouble(),
    );

Map<String, dynamic> _$CategoryPricingDtoToJson(CategoryPricingDto instance) =>
    <String, dynamic>{
      'tierId': instance.tierId,
      'tierName': instance.tierName,
      'priceUsd': instance.priceUsd,
    };

ClientMetrics _$ClientMetricsFromJson(Map<String, dynamic> json) =>
    ClientMetrics(
      mobileApp: (json['mobileApp'] as num).toInt(),
      webApp: (json['webApp'] as num).toInt(),
      dashboard: (json['dashboard'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$ClientMetricsToJson(ClientMetrics instance) =>
    <String, dynamic>{
      'mobileApp': instance.mobileApp,
      'webApp': instance.webApp,
      'dashboard': instance.dashboard,
      'unknown': instance.unknown,
    };

ContentOrderDetailDto _$ContentOrderDetailDtoFromJson(
  Map<String, dynamic> json,
) => ContentOrderDetailDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  customerName: json['customerName'] as String,
  status: contentOrderDetailDtoStatusFromJson(json['status']),
  totalAmountUsd: (json['totalAmountUsd'] as num).toDouble(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  payment: json['payment'] == null
      ? null
      : PaymentDto.fromJson(json['payment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ContentOrderDetailDtoToJson(
  ContentOrderDetailDto instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'customerName': instance.customerName,
  'status': contentOrderDetailDtoStatusToJson(instance.status),
  'totalAmountUsd': instance.totalAmountUsd,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'payment': instance.payment?.toJson(),
};

ContentOrderSummaryDto _$ContentOrderSummaryDtoFromJson(
  Map<String, dynamic> json,
) => ContentOrderSummaryDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  customerName: json['customerName'] as String,
  status: contentOrderSummaryDtoStatusFromJson(json['status']),
  totalAmountUsd: (json['totalAmountUsd'] as num).toDouble(),
  itemCount: (json['itemCount'] as num).toInt(),
);

Map<String, dynamic> _$ContentOrderSummaryDtoToJson(
  ContentOrderSummaryDto instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'customerName': instance.customerName,
  'status': contentOrderSummaryDtoStatusToJson(instance.status),
  'totalAmountUsd': instance.totalAmountUsd,
  'itemCount': instance.itemCount,
};

ContentOrderSummaryDtoPaginatedResult
_$ContentOrderSummaryDtoPaginatedResultFromJson(Map<String, dynamic> json) =>
    ContentOrderSummaryDtoPaginatedResult(
      pageIndex: (json['pageIndex'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ContentOrderSummaryDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$ContentOrderSummaryDtoPaginatedResultToJson(
  ContentOrderSummaryDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ContentTypeDto _$ContentTypeDtoFromJson(Map<String, dynamic> json) =>
    ContentTypeDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      name: json['name'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$ContentTypeDtoToJson(ContentTypeDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
    };

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) => CustomerDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  company: json['company'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CustomerDtoToJson(CustomerDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'company': instance.company,
      'notes': instance.notes,
    };

CustomerDtoPaginatedResult _$CustomerDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => CustomerDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CustomerDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CustomerDtoPaginatedResultToJson(
  CustomerDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

DeviceMetrics _$DeviceMetricsFromJson(Map<String, dynamic> json) =>
    DeviceMetrics(
      desktop: (json['desktop'] as num).toInt(),
      mobile: (json['mobile'] as num).toInt(),
      tablet: (json['tablet'] as num).toInt(),
      watch: (json['watch'] as num).toInt(),
      tv: (json['tv'] as num).toInt(),
      console: (json['console'] as num).toInt(),
      car: (json['car'] as num).toInt(),
      ioT: (json['ioT'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$DeviceMetricsToJson(DeviceMetrics instance) =>
    <String, dynamic>{
      'desktop': instance.desktop,
      'mobile': instance.mobile,
      'tablet': instance.tablet,
      'watch': instance.watch,
      'tv': instance.tv,
      'console': instance.console,
      'car': instance.car,
      'ioT': instance.ioT,
      'unknown': instance.unknown,
    };

FileDto _$FileDtoFromJson(Map<String, dynamic> json) => FileDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  fileName: json['fileName'] as String,
  originalFileName: json['originalFileName'] as String,
  mimeType: json['mimeType'] as String,
  storageUrl: json['storageUrl'] as String,
  sizeInBytes: (json['sizeInBytes'] as num).toInt(),
  isDeleted: json['isDeleted'] as bool,
);

Map<String, dynamic> _$FileDtoToJson(FileDto instance) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'fileName': instance.fileName,
  'originalFileName': instance.originalFileName,
  'mimeType': instance.mimeType,
  'storageUrl': instance.storageUrl,
  'sizeInBytes': instance.sizeInBytes,
  'isDeleted': instance.isDeleted,
};

HttpValidationProblemDetails _$HttpValidationProblemDetailsFromJson(
  Map<String, dynamic> json,
) => HttpValidationProblemDetails(
  type: json['type'] as String?,
  title: json['title'] as String?,
  status: (json['status'] as num?)?.toInt(),
  detail: json['detail'] as String?,
  instance: json['instance'] as String?,
  errors: json['errors'] as Map<String, dynamic>,
);

Map<String, dynamic> _$HttpValidationProblemDetailsToJson(
  HttpValidationProblemDetails instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'status': instance.status,
  'detail': instance.detail,
  'instance': instance.instance,
  'errors': instance.errors,
};

ItemTierDto _$ItemTierDtoFromJson(Map<String, dynamic> json) => ItemTierDto(
  tierName: json['tierName'] as String,
  priceSnapshotUsd: (json['priceSnapshotUsd'] as num).toDouble(),
);

Map<String, dynamic> _$ItemTierDtoToJson(ItemTierDto instance) =>
    <String, dynamic>{
      'tierName': instance.tierName,
      'priceSnapshotUsd': instance.priceSnapshotUsd,
    };

LyricsDto _$LyricsDtoFromJson(Map<String, dynamic> json) => LyricsDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  songTitle: json['songTitle'] as String,
  artistName: json['artistName'] as String,
  lyricsText: json['lyricsText'] as String,
  language: json['language'] as String,
  videoId: json['videoId'] as String?,
  articleId: json['articleId'] as String?,
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
  metaKeywords: json['metaKeywords'] as String?,
);

Map<String, dynamic> _$LyricsDtoToJson(LyricsDto instance) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'songTitle': instance.songTitle,
  'artistName': instance.artistName,
  'lyricsText': instance.lyricsText,
  'language': instance.language,
  'videoId': instance.videoId,
  'articleId': instance.articleId,
  'metaTitle': instance.metaTitle,
  'metaDescription': instance.metaDescription,
  'metaKeywords': instance.metaKeywords,
};

LyricsDtoPaginatedResult _$LyricsDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => LyricsDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LyricsDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$LyricsDtoPaginatedResultToJson(
  LyricsDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) => OrderItemDto(
  id: json['id'] as String,
  contentKind: orderItemDtoContentKindFromJson(json['contentKind']),
  categoryName: json['categoryName'] as String,
  promotionLevelName: json['promotionLevelName'] as String?,
  promoPriceUsd: (json['promoPriceUsd'] as num?)?.toDouble(),
  socialBoost: json['socialBoost'] as bool,
  isBonus: json['isBonus'] as bool,
  tiers:
      (json['tiers'] as List<dynamic>?)
          ?.map((e) => ItemTierDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$OrderItemDtoToJson(OrderItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentKind': orderItemDtoContentKindToJson(instance.contentKind),
      'categoryName': instance.categoryName,
      'promotionLevelName': instance.promotionLevelName,
      'promoPriceUsd': instance.promoPriceUsd,
      'socialBoost': instance.socialBoost,
      'isBonus': instance.isBonus,
      'tiers': instance.tiers.map((e) => e.toJson()).toList(),
    };

PackageDto _$PackageDtoFromJson(Map<String, dynamic> json) => PackageDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  flatPriceUsd: (json['flatPriceUsd'] as num).toDouble(),
  isActive: json['isActive'] as bool,
  slots:
      (json['slots'] as List<dynamic>?)
          ?.map((e) => PackageSlotDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PackageDtoToJson(PackageDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'flatPriceUsd': instance.flatPriceUsd,
      'isActive': instance.isActive,
      'slots': instance.slots.map((e) => e.toJson()).toList(),
    };

PackageDtoPaginatedResult _$PackageDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => PackageDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PackageDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PackageDtoPaginatedResultToJson(
  PackageDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

PackageSlotDto _$PackageSlotDtoFromJson(Map<String, dynamic> json) =>
    PackageSlotDto(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String?,
      categoryName: json['categoryName'] as String?,
      isRequired: json['isRequired'] as bool,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$PackageSlotDtoToJson(PackageSlotDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'isRequired': instance.isRequired,
      'quantity': instance.quantity,
    };

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) => PaymentDto(
  id: json['id'] as String,
  amountUsd: (json['amountUsd'] as num).toDouble(),
  paymentMethod: enumPaymentMethodNullableFromJson(json['paymentMethod']),
  paymentProof: json['paymentProof'] == null
      ? null
      : FileDto.fromJson(json['paymentProof'] as Map<String, dynamic>),
  status: paymentDtoStatusFromJson(json['status']),
  verifiedBy: json['verifiedBy'] as String?,
  verifiedAt: json['verifiedAt'] == null
      ? null
      : DateTime.parse(json['verifiedAt'] as String),
  receiptUrl: json['receiptUrl'] as String?,
);

Map<String, dynamic> _$PaymentDtoToJson(PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountUsd': instance.amountUsd,
      'paymentMethod': enumPaymentMethodNullableToJson(instance.paymentMethod),
      'paymentProof': instance.paymentProof?.toJson(),
      'status': paymentDtoStatusToJson(instance.status),
      'verifiedBy': instance.verifiedBy,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'receiptUrl': instance.receiptUrl,
    };

PermissionDto _$PermissionDtoFromJson(Map<String, dynamic> json) =>
    PermissionDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      resource: json['resource'] as String,
      action: json['action'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      isDeleted: json['isDeleted'] as bool,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$PermissionDtoToJson(PermissionDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'resource': instance.resource,
      'action': instance.action,
      'description': instance.description,
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

PermissionDtoPaginatedResult _$PermissionDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => PermissionDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PermissionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PermissionDtoPaginatedResultToJson(
  PermissionDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

PlatformMetrics _$PlatformMetricsFromJson(Map<String, dynamic> json) =>
    PlatformMetrics(
      windows: (json['windows'] as num).toInt(),
      mac: (json['mac'] as num).toInt(),
      ios: (json['ios'] as num).toInt(),
      ipadOs: (json['ipadOs'] as num).toInt(),
      linux: (json['linux'] as num).toInt(),
      android: (json['android'] as num).toInt(),
      chromeOs: (json['chromeOs'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$PlatformMetricsToJson(PlatformMetrics instance) =>
    <String, dynamic>{
      'windows': instance.windows,
      'mac': instance.mac,
      'ios': instance.ios,
      'ipadOs': instance.ipadOs,
      'linux': instance.linux,
      'android': instance.android,
      'chromeOs': instance.chromeOs,
      'unknown': instance.unknown,
    };

PlaylistDetailDto _$PlaylistDetailDtoFromJson(Map<String, dynamic> json) =>
    PlaylistDetailDto(
      id: json['id'] as String,
      name: json['name'] as String,
      videos:
          (json['videos'] as List<dynamic>?)
              ?.map(
                (e) => VideoInPlaylistDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlaylistDetailDtoToJson(PlaylistDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'videos': instance.videos.map((e) => e.toJson()).toList(),
    };

PlaylistDto _$PlaylistDtoFromJson(Map<String, dynamic> json) => PlaylistDto(
  id: json['id'] as String,
  name: json['name'] as String,
  videoCount: (json['videoCount'] as num).toInt(),
);

Map<String, dynamic> _$PlaylistDtoToJson(PlaylistDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'videoCount': instance.videoCount,
    };

PricingTierDto _$PricingTierDtoFromJson(Map<String, dynamic> json) =>
    PricingTierDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$PricingTierDtoToJson(PricingTierDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

PromotionLevelDto _$PromotionLevelDtoFromJson(Map<String, dynamic> json) =>
    PromotionLevelDto(
      id: json['id'] as String,
      name: json['name'] as String,
      durationDays: (json['durationDays'] as num).toInt(),
      priceUsd: (json['priceUsd'] as num).toDouble(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$PromotionLevelDtoToJson(PromotionLevelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'durationDays': instance.durationDays,
      'priceUsd': instance.priceUsd,
      'isActive': instance.isActive,
    };

PublicAddArticleCommentRequest _$PublicAddArticleCommentRequestFromJson(
  Map<String, dynamic> json,
) => PublicAddArticleCommentRequest(body: json['body'] as String);

Map<String, dynamic> _$PublicAddArticleCommentRequestToJson(
  PublicAddArticleCommentRequest instance,
) => <String, dynamic>{'body': instance.body};

PublicAddArticleCommentResponse _$PublicAddArticleCommentResponseFromJson(
  Map<String, dynamic> json,
) => PublicAddArticleCommentResponse(
  comment: ArticleCommentDto.fromJson(json['comment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicAddArticleCommentResponseToJson(
  PublicAddArticleCommentResponse instance,
) => <String, dynamic>{'comment': instance.comment.toJson()};

PublicAddVideoToPlaylistRequest _$PublicAddVideoToPlaylistRequestFromJson(
  Map<String, dynamic> json,
) => PublicAddVideoToPlaylistRequest(
  videoId: json['videoId'] as String,
  sortOrder: (json['sortOrder'] as num).toInt(),
);

Map<String, dynamic> _$PublicAddVideoToPlaylistRequestToJson(
  PublicAddVideoToPlaylistRequest instance,
) => <String, dynamic>{
  'videoId': instance.videoId,
  'sortOrder': instance.sortOrder,
};

PublicAddVideoToPlaylistResponse _$PublicAddVideoToPlaylistResponseFromJson(
  Map<String, dynamic> json,
) => PublicAddVideoToPlaylistResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicAddVideoToPlaylistResponseToJson(
  PublicAddVideoToPlaylistResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicBookmarkArticleResponse _$PublicBookmarkArticleResponseFromJson(
  Map<String, dynamic> json,
) => PublicBookmarkArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicBookmarkArticleResponseToJson(
  PublicBookmarkArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicBookmarkShortVideoResponse _$PublicBookmarkShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicBookmarkShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicBookmarkShortVideoResponseToJson(
  PublicBookmarkShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicChangePasswordRequest _$PublicChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicChangePasswordRequest(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$PublicChangePasswordRequestToJson(
  PublicChangePasswordRequest instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};

PublicChangePasswordResponse _$PublicChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicChangePasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicChangePasswordResponseToJson(
  PublicChangePasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicCreatePlaylistRequest _$PublicCreatePlaylistRequestFromJson(
  Map<String, dynamic> json,
) => PublicCreatePlaylistRequest(name: json['name'] as String);

Map<String, dynamic> _$PublicCreatePlaylistRequestToJson(
  PublicCreatePlaylistRequest instance,
) => <String, dynamic>{'name': instance.name};

PublicCreatePlaylistResponse _$PublicCreatePlaylistResponseFromJson(
  Map<String, dynamic> json,
) => PublicCreatePlaylistResponse(
  playlist: PlaylistDto.fromJson(json['playlist'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicCreatePlaylistResponseToJson(
  PublicCreatePlaylistResponse instance,
) => <String, dynamic>{'playlist': instance.playlist.toJson()};

PublicDeleteArticleCommentResponse _$PublicDeleteArticleCommentResponseFromJson(
  Map<String, dynamic> json,
) => PublicDeleteArticleCommentResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicDeleteArticleCommentResponseToJson(
  PublicDeleteArticleCommentResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicDeletePlaylistResponse _$PublicDeletePlaylistResponseFromJson(
  Map<String, dynamic> json,
) => PublicDeletePlaylistResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicDeletePlaylistResponseToJson(
  PublicDeletePlaylistResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicEditArticleCommentRequest _$PublicEditArticleCommentRequestFromJson(
  Map<String, dynamic> json,
) => PublicEditArticleCommentRequest(body: json['body'] as String);

Map<String, dynamic> _$PublicEditArticleCommentRequestToJson(
  PublicEditArticleCommentRequest instance,
) => <String, dynamic>{'body': instance.body};

PublicEditArticleCommentResponse _$PublicEditArticleCommentResponseFromJson(
  Map<String, dynamic> json,
) => PublicEditArticleCommentResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicEditArticleCommentResponseToJson(
  PublicEditArticleCommentResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicForgotPasswordRequest _$PublicForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicForgotPasswordRequest(email: json['email'] as String);

Map<String, dynamic> _$PublicForgotPasswordRequestToJson(
  PublicForgotPasswordRequest instance,
) => <String, dynamic>{'email': instance.email};

PublicForgotPasswordResponse _$PublicForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicForgotPasswordResponse(
  isSuccess: json['isSuccess'] as bool,
  email: json['email'] as String,
);

Map<String, dynamic> _$PublicForgotPasswordResponseToJson(
  PublicForgotPasswordResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'email': instance.email,
};

PublicGetActiveCategoriesResponse _$PublicGetActiveCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetActiveCategoriesResponse(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetActiveCategoriesResponseToJson(
  PublicGetActiveCategoriesResponse instance,
) => <String, dynamic>{
  'categories': instance.categories.map((e) => e.toJson()).toList(),
};

PublicGetActivePromotionLevelsResponse
_$PublicGetActivePromotionLevelsResponseFromJson(Map<String, dynamic> json) =>
    PublicGetActivePromotionLevelsResponse(
      promotionLevels:
          (json['promotionLevels'] as List<dynamic>?)
              ?.map(
                (e) => PromotionLevelDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$PublicGetActivePromotionLevelsResponseToJson(
  PublicGetActivePromotionLevelsResponse instance,
) => <String, dynamic>{
  'promotionLevels': instance.promotionLevels.map((e) => e.toJson()).toList(),
};

PublicGetAllTagsResponse _$PublicGetAllTagsResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetAllTagsResponse(
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => TagDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetAllTagsResponseToJson(
  PublicGetAllTagsResponse instance,
) => <String, dynamic>{'tags': instance.tags.map((e) => e.toJson()).toList()};

PublicGetArticleBySlugResponse _$PublicGetArticleBySlugResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetArticleBySlugResponse(
  article: ArticleDetailDto.fromJson(json['article'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetArticleBySlugResponseToJson(
  PublicGetArticleBySlugResponse instance,
) => <String, dynamic>{'article': instance.article.toJson()};

PublicGetFeaturedArticlesResponse _$PublicGetFeaturedArticlesResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetFeaturedArticlesResponse(
  articles:
      (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetFeaturedArticlesResponseToJson(
  PublicGetFeaturedArticlesResponse instance,
) => <String, dynamic>{
  'articles': instance.articles.map((e) => e.toJson()).toList(),
};

PublicGetFeaturedVideosResponse _$PublicGetFeaturedVideosResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetFeaturedVideosResponse(
  videos:
      (json['videos'] as List<dynamic>?)
          ?.map((e) => VideoSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetFeaturedVideosResponseToJson(
  PublicGetFeaturedVideosResponse instance,
) => <String, dynamic>{
  'videos': instance.videos.map((e) => e.toJson()).toList(),
};

PublicGetLyricsBySlugResponse _$PublicGetLyricsBySlugResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetLyricsBySlugResponse(
  lyrics: LyricsDto.fromJson(json['lyrics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetLyricsBySlugResponseToJson(
  PublicGetLyricsBySlugResponse instance,
) => <String, dynamic>{'lyrics': instance.lyrics.toJson()};

PublicGetOwnProfileResponse _$PublicGetOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetOwnProfileResponseToJson(
  PublicGetOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicGetOwnRolesResponse _$PublicGetOwnRolesResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnRolesResponse(
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map(
            (e) => RoleWithPermissionsDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetOwnRolesResponseToJson(
  PublicGetOwnRolesResponse instance,
) => <String, dynamic>{'roles': instance.roles.map((e) => e.toJson()).toList()};

PublicGetOwnSessionByIdResponse _$PublicGetOwnSessionByIdResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnSessionByIdResponse(
  session: SessionDto.fromJson(json['session'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetOwnSessionByIdResponseToJson(
  PublicGetOwnSessionByIdResponse instance,
) => <String, dynamic>{'session': instance.session.toJson()};

PublicGetOwnSessionsResponse _$PublicGetOwnSessionsResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnSessionsResponse(
  sessions:
      (json['sessions'] as List<dynamic>?)
          ?.map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetOwnSessionsResponseToJson(
  PublicGetOwnSessionsResponse instance,
) => <String, dynamic>{
  'sessions': instance.sessions.map((e) => e.toJson()).toList(),
};

PublicGetPublicShortBySlugResponse _$PublicGetPublicShortBySlugResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetPublicShortBySlugResponse(
  shortVideo: ShortVideoDto.fromJson(
    json['shortVideo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PublicGetPublicShortBySlugResponseToJson(
  PublicGetPublicShortBySlugResponse instance,
) => <String, dynamic>{'shortVideo': instance.shortVideo.toJson()};

PublicGetPublicShortsResponse _$PublicGetPublicShortsResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetPublicShortsResponse(
  shortVideos: ShortVideoDtoPaginatedResult.fromJson(
    json['shortVideos'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PublicGetPublicShortsResponseToJson(
  PublicGetPublicShortsResponse instance,
) => <String, dynamic>{'shortVideos': instance.shortVideos.toJson()};

PublicGetPublishedArticlesResponse _$PublicGetPublishedArticlesResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetPublishedArticlesResponse(
  articles: ArticleSummaryDtoPaginatedResult.fromJson(
    json['articles'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PublicGetPublishedArticlesResponseToJson(
  PublicGetPublishedArticlesResponse instance,
) => <String, dynamic>{'articles': instance.articles.toJson()};

PublicGetPublishedVideosResponse _$PublicGetPublishedVideosResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetPublishedVideosResponse(
  videos: VideoSummaryDtoPaginatedResult.fromJson(
    json['videos'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PublicGetPublishedVideosResponseToJson(
  PublicGetPublishedVideosResponse instance,
) => <String, dynamic>{'videos': instance.videos.toJson()};

PublicGetVideoBySlugResponse _$PublicGetVideoBySlugResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetVideoBySlugResponse(
  video: VideoDetailDto.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetVideoBySlugResponseToJson(
  PublicGetVideoBySlugResponse instance,
) => <String, dynamic>{'video': instance.video.toJson()};

PublicLikeArticleResponse _$PublicLikeArticleResponseFromJson(
  Map<String, dynamic> json,
) => PublicLikeArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicLikeArticleResponseToJson(
  PublicLikeArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicLikeShortVideoResponse _$PublicLikeShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicLikeShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicLikeShortVideoResponseToJson(
  PublicLikeShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicLoginRequest _$PublicLoginRequestFromJson(Map<String, dynamic> json) =>
    PublicLoginRequest(
      credentials: json['credentials'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PublicLoginRequestToJson(PublicLoginRequest instance) =>
    <String, dynamic>{
      'credentials': instance.credentials,
      'password': instance.password,
    };

PublicLoginWebResponse _$PublicLoginWebResponseFromJson(
  Map<String, dynamic> json,
) => PublicLoginWebResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicLoginWebResponseToJson(
  PublicLoginWebResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicRateVideoRequest _$PublicRateVideoRequestFromJson(
  Map<String, dynamic> json,
) => PublicRateVideoRequest(stars: (json['stars'] as num).toInt());

Map<String, dynamic> _$PublicRateVideoRequestToJson(
  PublicRateVideoRequest instance,
) => <String, dynamic>{'stars': instance.stars};

PublicRateVideoResponse _$PublicRateVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicRateVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRateVideoResponseToJson(
  PublicRateVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicRecordShortVideoViewResponse _$PublicRecordShortVideoViewResponseFromJson(
  Map<String, dynamic> json,
) => PublicRecordShortVideoViewResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRecordShortVideoViewResponseToJson(
  PublicRecordShortVideoViewResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicRefreshTokenRequest _$PublicRefreshTokenRequestFromJson(
  Map<String, dynamic> json,
) => PublicRefreshTokenRequest(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$PublicRefreshTokenRequestToJson(
  PublicRefreshTokenRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

PublicRefreshTokenWebResponse _$PublicRefreshTokenWebResponseFromJson(
  Map<String, dynamic> json,
) => PublicRefreshTokenWebResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicRefreshTokenWebResponseToJson(
  PublicRefreshTokenWebResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicRemoveVideoFromPlaylistResponse
_$PublicRemoveVideoFromPlaylistResponseFromJson(Map<String, dynamic> json) =>
    PublicRemoveVideoFromPlaylistResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRemoveVideoFromPlaylistResponseToJson(
  PublicRemoveVideoFromPlaylistResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicRenamePlaylistRequest _$PublicRenamePlaylistRequestFromJson(
  Map<String, dynamic> json,
) => PublicRenamePlaylistRequest(name: json['name'] as String);

Map<String, dynamic> _$PublicRenamePlaylistRequestToJson(
  PublicRenamePlaylistRequest instance,
) => <String, dynamic>{'name': instance.name};

PublicRenamePlaylistResponse _$PublicRenamePlaylistResponseFromJson(
  Map<String, dynamic> json,
) => PublicRenamePlaylistResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRenamePlaylistResponseToJson(
  PublicRenamePlaylistResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicResendOtpRequest _$PublicResendOtpRequestFromJson(
  Map<String, dynamic> json,
) => PublicResendOtpRequest(
  email: json['email'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$PublicResendOtpRequestToJson(
  PublicResendOtpRequest instance,
) => <String, dynamic>{'email': instance.email, 'purpose': instance.purpose};

PublicResendOtpResponse _$PublicResendOtpResponseFromJson(
  Map<String, dynamic> json,
) => PublicResendOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicResendOtpResponseToJson(
  PublicResendOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicResetPasswordRequest _$PublicResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicResetPasswordRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$PublicResetPasswordRequestToJson(
  PublicResetPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'newPassword': instance.newPassword,
};

PublicResetPasswordResponse _$PublicResetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicResetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicResetPasswordResponseToJson(
  PublicResetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicRevokeSessionResponse _$PublicRevokeSessionResponseFromJson(
  Map<String, dynamic> json,
) => PublicRevokeSessionResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRevokeSessionResponseToJson(
  PublicRevokeSessionResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSetPasswordRequest _$PublicSetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicSetPasswordRequest(password: json['password'] as String);

Map<String, dynamic> _$PublicSetPasswordRequestToJson(
  PublicSetPasswordRequest instance,
) => <String, dynamic>{'password': instance.password};

PublicSetPasswordResponse _$PublicSetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicSetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSetPasswordResponseToJson(
  PublicSetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicShareArticleResponse _$PublicShareArticleResponseFromJson(
  Map<String, dynamic> json,
) => PublicShareArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicShareArticleResponseToJson(
  PublicShareArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicShareShortVideoResponse _$PublicShareShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicShareShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicShareShortVideoResponseToJson(
  PublicShareShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicShareVideoResponse _$PublicShareVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicShareVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicShareVideoResponseToJson(
  PublicShareVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignOutFromAllDevicesResponse
_$PublicSignOutFromAllDevicesResponseFromJson(Map<String, dynamic> json) =>
    PublicSignOutFromAllDevicesResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSignOutFromAllDevicesResponseToJson(
  PublicSignOutFromAllDevicesResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignOutRequest _$PublicSignOutRequestFromJson(
  Map<String, dynamic> json,
) => PublicSignOutRequest(refreshToken: json['refreshToken'] as String?);

Map<String, dynamic> _$PublicSignOutRequestToJson(
  PublicSignOutRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

PublicSignOutResponse _$PublicSignOutResponseFromJson(
  Map<String, dynamic> json,
) => PublicSignOutResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSignOutResponseToJson(
  PublicSignOutResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignUpRequest _$PublicSignUpRequestFromJson(Map<String, dynamic> json) =>
    PublicSignUpRequest(
      email: json['email'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PublicSignUpRequestToJson(
  PublicSignUpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'password': instance.password,
};

PublicSignUpWebResponse _$PublicSignUpWebResponseFromJson(
  Map<String, dynamic> json,
) => PublicSignUpWebResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
  verificationRequired: json['verificationRequired'] as bool,
);

Map<String, dynamic> _$PublicSignUpWebResponseToJson(
  PublicSignUpWebResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'verificationRequired': instance.verificationRequired,
};

PublicSocialLoginRequest _$PublicSocialLoginRequestFromJson(
  Map<String, dynamic> json,
) => PublicSocialLoginRequest(
  email: json['email'] as String,
  userName: json['userName'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  provider: json['provider'] as String,
);

Map<String, dynamic> _$PublicSocialLoginRequestToJson(
  PublicSocialLoginRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'avatarUrl': instance.avatarUrl,
  'provider': instance.provider,
};

PublicSocialLoginWebResponse _$PublicSocialLoginWebResponseFromJson(
  Map<String, dynamic> json,
) => PublicSocialLoginWebResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicSocialLoginWebResponseToJson(
  PublicSocialLoginWebResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicUnbookmarkArticleResponse _$PublicUnbookmarkArticleResponseFromJson(
  Map<String, dynamic> json,
) => PublicUnbookmarkArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicUnbookmarkArticleResponseToJson(
  PublicUnbookmarkArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicUnbookmarkShortVideoResponse _$PublicUnbookmarkShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicUnbookmarkShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicUnbookmarkShortVideoResponseToJson(
  PublicUnbookmarkShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicUnlikeArticleResponse _$PublicUnlikeArticleResponseFromJson(
  Map<String, dynamic> json,
) => PublicUnlikeArticleResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicUnlikeArticleResponseToJson(
  PublicUnlikeArticleResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicUnlikeShortVideoResponse _$PublicUnlikeShortVideoResponseFromJson(
  Map<String, dynamic> json,
) => PublicUnlikeShortVideoResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicUnlikeShortVideoResponseToJson(
  PublicUnlikeShortVideoResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicUpdateAvatarResponse _$PublicUpdateAvatarResponseFromJson(
  Map<String, dynamic> json,
) => PublicUpdateAvatarResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicUpdateAvatarResponseToJson(
  PublicUpdateAvatarResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicUpdateOwnProfileRequest _$PublicUpdateOwnProfileRequestFromJson(
  Map<String, dynamic> json,
) => PublicUpdateOwnProfileRequest(
  email: json['email'] as String?,
  userName: json['userName'] as String?,
  countryName: json['countryName'] as String?,
  partialPhoneNumber: json['partialPhoneNumber'] as String?,
  countryIsoCode: json['countryIsoCode'] as String?,
  countryDialCode: json['countryDialCode'] as String?,
);

Map<String, dynamic> _$PublicUpdateOwnProfileRequestToJson(
  PublicUpdateOwnProfileRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'countryName': instance.countryName,
  'partialPhoneNumber': instance.partialPhoneNumber,
  'countryIsoCode': instance.countryIsoCode,
  'countryDialCode': instance.countryDialCode,
};

PublicUpdateOwnProfileResponse _$PublicUpdateOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => PublicUpdateOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicUpdateOwnProfileResponseToJson(
  PublicUpdateOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicVerifyOtpRequest _$PublicVerifyOtpRequestFromJson(
  Map<String, dynamic> json,
) => PublicVerifyOtpRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$PublicVerifyOtpRequestToJson(
  PublicVerifyOtpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'purpose': instance.purpose,
};

PublicVerifyOtpResponse _$PublicVerifyOtpResponseFromJson(
  Map<String, dynamic> json,
) => PublicVerifyOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicVerifyOtpResponseToJson(
  PublicVerifyOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => RoleDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  isActive: json['isActive'] as bool,
  isDeleted: json['isDeleted'] as bool,
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
);

Map<String, dynamic> _$RoleDtoToJson(RoleDto instance) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'isActive': instance.isActive,
  'isDeleted': instance.isDeleted,
  'deletedAt': instance.deletedAt?.toIso8601String(),
};

RoleDtoPaginatedResult _$RoleDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => RoleDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$RoleDtoPaginatedResultToJson(
  RoleDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

RoleWithPermissionsDto _$RoleWithPermissionsDtoFromJson(
  Map<String, dynamic> json,
) => RoleWithPermissionsDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  isActive: json['isActive'] as bool,
  isDeleted: json['isDeleted'] as bool,
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => PermissionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$RoleWithPermissionsDtoToJson(
  RoleWithPermissionsDto instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'updatedBy': instance.updatedBy,
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'isActive': instance.isActive,
  'isDeleted': instance.isDeleted,
  'deletedAt': instance.deletedAt?.toIso8601String(),
  'permissions': instance.permissions.map((e) => e.toJson()).toList(),
};

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) => SessionDto(
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  updatedBy: json['updatedBy'] as String?,
  id: json['id'] as String,
  ipAddress: json['ipAddress'] as String?,
  userAgent: json['userAgent'] as String?,
  browser: sessionDtoBrowserFromJson(json['browser']),
  device: sessionDtoDeviceFromJson(json['device']),
  platform: sessionDtoPlatformFromJson(json['platform']),
  $client: sessionDtoClientFromJson(json['client']),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  isActive: json['isActive'] as bool,
  isCurrent: json['isCurrent'] as bool,
);

Map<String, dynamic> _$SessionDtoToJson(SessionDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'browser': sessionDtoBrowserToJson(instance.browser),
      'device': sessionDtoDeviceToJson(instance.device),
      'platform': sessionDtoPlatformToJson(instance.platform),
      'client': sessionDtoClientToJson(instance.$client),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isActive': instance.isActive,
      'isCurrent': instance.isCurrent,
    };

SessionDtoPaginatedResult _$SessionDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => SessionDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SessionDtoPaginatedResultToJson(
  SessionDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ShortVideoDto _$ShortVideoDtoFromJson(Map<String, dynamic> json) =>
    ShortVideoDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      videoUrl: json['videoUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      hasFullVideo: json['hasFullVideo'] as bool,
      isActive: json['isActive'] as bool,
      viewCount: (json['viewCount'] as num).toInt(),
      likeCount: (json['likeCount'] as num).toInt(),
      shareCount: (json['shareCount'] as num).toInt(),
      bookmarkCount: (json['bookmarkCount'] as num).toInt(),
    );

Map<String, dynamic> _$ShortVideoDtoToJson(ShortVideoDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'hasFullVideo': instance.hasFullVideo,
      'isActive': instance.isActive,
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'shareCount': instance.shareCount,
      'bookmarkCount': instance.bookmarkCount,
    };

ShortVideoDtoPaginatedResult _$ShortVideoDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => ShortVideoDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ShortVideoDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ShortVideoDtoPaginatedResultToJson(
  ShortVideoDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

TagDto _$TagDtoFromJson(Map<String, dynamic> json) => TagDto(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
);

Map<String, dynamic> _$TagDtoToJson(TagDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
};

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      email: json['email'] as String?,
      userName: json['userName'] as String,
      roles:
          (json['roles'] as List<dynamic>?)
              ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      permissions:
          (json['permissions'] as List<dynamic>?)
              ?.map((e) => PermissionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      authProvider: userResponseDtoAuthProviderFromJson(json['authProvider']),
      isVerified: json['isVerified'] as bool,
      isActive: json['isActive'] as bool,
      avatar: json['avatar'] == null
          ? null
          : FileDto.fromJson(json['avatar'] as Map<String, dynamic>),
      countryName: json['countryName'] as String?,
      countryIsoCode: json['countryIsoCode'] as String?,
      countryDialCode: json['countryDialCode'] as String?,
      partialPhoneNumber: json['partialPhoneNumber'] as String?,
      fullPhoneNumber: json['fullPhoneNumber'] as String?,
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'email': instance.email,
      'userName': instance.userName,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'permissions': instance.permissions.map((e) => e.toJson()).toList(),
      'authProvider': userResponseDtoAuthProviderToJson(instance.authProvider),
      'isVerified': instance.isVerified,
      'isActive': instance.isActive,
      'avatar': instance.avatar?.toJson(),
      'countryName': instance.countryName,
      'countryIsoCode': instance.countryIsoCode,
      'countryDialCode': instance.countryDialCode,
      'partialPhoneNumber': instance.partialPhoneNumber,
      'fullPhoneNumber': instance.fullPhoneNumber,
    };

VideoDetailDto _$VideoDetailDtoFromJson(Map<String, dynamic> json) =>
    VideoDetailDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      thumbnailStorageKey: json['thumbnailStorageKey'] as String?,
      authorId: json['authorId'] as String,
      status: videoDetailDtoStatusFromJson(json['status']),
      rejectionReason: json['rejectionReason'] as String?,
      youtubeVideoId: json['youtubeVideoId'] as String?,
      isFeatured: json['isFeatured'] as bool,
      featuredUntil: json['featuredUntil'] == null
          ? null
          : DateTime.parse(json['featuredUntil'] as String),
      hasLyrics: json['hasLyrics'] as bool,
      shootingScheduledAt: json['shootingScheduledAt'] == null
          ? null
          : DateTime.parse(json['shootingScheduledAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)
              ?.map((e) => TagDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VideoDetailDtoToJson(VideoDetailDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailStorageKey': instance.thumbnailStorageKey,
      'authorId': instance.authorId,
      'status': videoDetailDtoStatusToJson(instance.status),
      'rejectionReason': instance.rejectionReason,
      'youtubeVideoId': instance.youtubeVideoId,
      'isFeatured': instance.isFeatured,
      'featuredUntil': instance.featuredUntil?.toIso8601String(),
      'hasLyrics': instance.hasLyrics,
      'shootingScheduledAt': instance.shootingScheduledAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };

VideoInPlaylistDto _$VideoInPlaylistDtoFromJson(Map<String, dynamic> json) =>
    VideoInPlaylistDto(
      videoId: json['videoId'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      ratingAverage: (json['ratingAverage'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      sortOrder: (json['sortOrder'] as num).toInt(),
    );

Map<String, dynamic> _$VideoInPlaylistDtoToJson(VideoInPlaylistDto instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'ratingAverage': instance.ratingAverage,
      'ratingCount': instance.ratingCount,
      'sortOrder': instance.sortOrder,
    };

VideoSummaryDto _$VideoSummaryDtoFromJson(Map<String, dynamic> json) =>
    VideoSummaryDto(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      authorId: json['authorId'] as String,
      status: videoSummaryDtoStatusFromJson(json['status']),
      youtubeVideoId: json['youtubeVideoId'] as String?,
      isFeatured: json['isFeatured'] as bool,
      hasLyrics: json['hasLyrics'] as bool,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$VideoSummaryDtoToJson(VideoSummaryDto instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'title': instance.title,
      'slug': instance.slug,
      'thumbnailUrl': instance.thumbnailUrl,
      'authorId': instance.authorId,
      'status': videoSummaryDtoStatusToJson(instance.status),
      'youtubeVideoId': instance.youtubeVideoId,
      'isFeatured': instance.isFeatured,
      'hasLyrics': instance.hasLyrics,
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };

VideoSummaryDtoPaginatedResult _$VideoSummaryDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => VideoSummaryDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => VideoSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$VideoSummaryDtoPaginatedResultToJson(
  VideoSummaryDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiV1AdminArticlesIdImagesPost$RequestBody
_$ApiV1AdminArticlesIdImagesPost$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1AdminArticlesIdImagesPost$RequestBody(file: json['file'] as String);

Map<String, dynamic> _$ApiV1AdminArticlesIdImagesPost$RequestBodyToJson(
  ApiV1AdminArticlesIdImagesPost$RequestBody instance,
) => <String, dynamic>{'file': instance.file};

ApiV1AdminMeAvatarPatch$RequestBody
_$ApiV1AdminMeAvatarPatch$RequestBodyFromJson(Map<String, dynamic> json) =>
    ApiV1AdminMeAvatarPatch$RequestBody(
      avatarFile: json['avatarFile'] as String,
    );

Map<String, dynamic> _$ApiV1AdminMeAvatarPatch$RequestBodyToJson(
  ApiV1AdminMeAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};

ApiV1AdminOrdersIdPaymentProofPost$RequestBody
_$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1AdminOrdersIdPaymentProofPost$RequestBody(
  file: json['file'] as String,
);

Map<String, dynamic> _$ApiV1AdminOrdersIdPaymentProofPost$RequestBodyToJson(
  ApiV1AdminOrdersIdPaymentProofPost$RequestBody instance,
) => <String, dynamic>{'file': instance.file};

ApiV1AdminShortsPost$RequestBody _$ApiV1AdminShortsPost$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1AdminShortsPost$RequestBody(videoFile: json['videoFile'] as String);

Map<String, dynamic> _$ApiV1AdminShortsPost$RequestBodyToJson(
  ApiV1AdminShortsPost$RequestBody instance,
) => <String, dynamic>{'videoFile': instance.videoFile};

ApiV1AdminShortsIdThumbnailPost$RequestBody
_$ApiV1AdminShortsIdThumbnailPost$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1AdminShortsIdThumbnailPost$RequestBody(file: json['file'] as String);

Map<String, dynamic> _$ApiV1AdminShortsIdThumbnailPost$RequestBodyToJson(
  ApiV1AdminShortsIdThumbnailPost$RequestBody instance,
) => <String, dynamic>{'file': instance.file};

ApiV1AdminVideosIdThumbnailPost$RequestBody
_$ApiV1AdminVideosIdThumbnailPost$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1AdminVideosIdThumbnailPost$RequestBody(file: json['file'] as String);

Map<String, dynamic> _$ApiV1AdminVideosIdThumbnailPost$RequestBodyToJson(
  ApiV1AdminVideosIdThumbnailPost$RequestBody instance,
) => <String, dynamic>{'file': instance.file};

ApiV1PublicMeAvatarPatch$RequestBody
_$ApiV1PublicMeAvatarPatch$RequestBodyFromJson(Map<String, dynamic> json) =>
    ApiV1PublicMeAvatarPatch$RequestBody(
      avatarFile: json['avatarFile'] as String,
    );

Map<String, dynamic> _$ApiV1PublicMeAvatarPatch$RequestBodyToJson(
  ApiV1PublicMeAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};
