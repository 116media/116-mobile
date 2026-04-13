// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'api_116.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'api_116.enums.swagger.dart' as enums;
import 'api_116.metadata.swagger.dart';
export 'api_116.enums.swagger.dart';
export 'api_116.models.swagger.dart';

part 'api_116.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Api116 extends ChopperService {
  static Api116 create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Api116(client);
    }

    final newClient = ChopperClient(
      services: [_$Api116()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$Api116(newClient);
  }

  ///Delete any article comment
  ///@param id
  ///@param commentId
  Future<chopper.Response<AdminDeleteArticleCommentResponse>>
  AdminDeleteArticleComment({required String? id, required String? commentId}) {
    generatedMapping.putIfAbsent(
      AdminDeleteArticleCommentResponse,
      () => AdminDeleteArticleCommentResponse.fromJsonFactory,
    );

    return _AdminDeleteArticleComment(id: id, commentId: commentId);
  }

  ///Delete any article comment
  ///@param id
  ///@param commentId
  @DELETE(path: '/api/v1/admin/articles/{id}/comments/{commentId}')
  Future<chopper.Response<AdminDeleteArticleCommentResponse>>
  _AdminDeleteArticleComment({
    @Path('id') required String? id,
    @Path('commentId') required String? commentId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Soft-deletes any article comment regardless of ownership.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin or SuperAdmin role

    - Returns 404 Not Found if the comment does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Delete any article comment',
      operationId: 'AdminDeleteArticleComment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Get article details
  ///@param id
  Future<chopper.Response<AdminGetArticleByIdResponse>> AdminGetArticleById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetArticleByIdResponse,
      () => AdminGetArticleByIdResponse.fromJsonFactory,
    );

    return _AdminGetArticleById(id: id);
  }

  ///Get article details
  ///@param id
  @GET(path: '/api/v1/admin/articles/{id}')
  Future<chopper.Response<AdminGetArticleByIdResponse>> _AdminGetArticleById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single article by its unique identifier.
    

    Returns the complete article including body content, cover image, SEO metadata,
    all associated images, and applied tags. Suitable for the article editing view.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with article details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get article details',
      operationId: 'AdminGetArticleById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Update article
  ///@param id
  Future<chopper.Response<AdminUpdateArticleResponse>> UpdateArticle({
    required String? id,
    required AdminUpdateArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateArticleResponse,
      () => AdminUpdateArticleResponse.fromJsonFactory,
    );

    return _UpdateArticle(id: id, body: body);
  }

  ///Update article
  ///@param id
  @PUT(path: '/api/v1/admin/articles/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateArticleResponse>> _UpdateArticle({
    @Path('id') required String? id,
    @Body() required AdminUpdateArticleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates all editable fields of an article in a single call. This endpoint serves
    two purposes: (1) step 2 of the two-step article creation flow — after the admin
    clicks "Save Draft" (POST), this PUT call fills in the headline, body, and cover
    image before clicking "Submit"; (2) any subsequent edit while the article is still
    in a mutable status — for example correcting a typo in the title of a rejected article.
    \n
    Covers metadata (title, slug, category), content (headline, body, cover image),
    commerce fields (customer, order item), promotion flags (social boost, featured
    placement), and SEO metadata (meta title, meta description).
    \n
    Allowed when the article status is <c>Draft</c>, <c>PendingPayment</c>,
    <c>PendingReview</c>, or <c>Rejected</c>. Attempting to update an article
    in <c>Approved</c>, <c>Published</c>, or <c>Archived</c> status will return
    a 400 Bad Request.
    \n
    The handler computes an image diff between the previous body and the new body.
    Any Cloudinary images removed from the body or cover are automatically deleted
    from Cloudinary storage and purged from the <c>article_images</c> table after commit.
    \n
    **Slug uniqueness:** The slug must be unique across all articles. If the provided
    slug belongs to a different article, the request will return 409 Conflict.
    \n
    **Headline requirements:** Minimum 100 characters, maximum 300 characters.
    \n
    **Commerce fields:** <c>customerId</c> and <c>orderItemId</c> must be provided
    together or both omitted. Providing only one will return a 400 Bad Request.
    \n
    **Featured placement:** <c>featuredUntil</c> must be a future date when provided.
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have Admin or SuperAdmin role\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with updated article details on success\n
    - Returns 400 Bad Request if status is not editable, or validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks Admin role\n
    - Returns 404 Not Found if the article or category does not exist\n
    - Returns 409 Conflict if the slug is already taken by another article\n
    - Returns 429 Too Many Requests if rate limit is exceeded\n''',
      summary: 'Update article',
      operationId: 'UpdateArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Permanently delete an article
  ///@param id
  Future<chopper.Response<AdminDeleteArticleResponse>> DeleteArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminDeleteArticleResponse,
      () => AdminDeleteArticleResponse.fromJsonFactory,
    );

    return _DeleteArticle(id: id);
  }

  ///Permanently delete an article
  ///@param id
  @DELETE(path: '/api/v1/admin/articles/{id}')
  Future<chopper.Response<AdminDeleteArticleResponse>> _DeleteArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes an article and all its associated Cloudinary image assets.
    

    Only articles in <c>Draft</c> or <c>Rejected</c> status can be deleted.
    Attempting to delete an article in any other status (Published, Approved,
    PendingReview, PendingPayment) will return a 400 Bad Request.
    

    For published or approved articles, use the archive endpoint instead to
    remove the article from public feeds without permanently deleting it.
    

    This operation is <b>irreversible</b> — all Cloudinary assets are deleted
    from cloud storage before the database record is removed.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the article is not in Draft or Rejected status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Permanently delete an article',
      operationId: 'DeleteArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///List all articles
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param status
  ///@param categoryId
  Future<chopper.Response<AdminGetAllArticlesResponse>> AdminGetAllArticles({
    int? pageIndex,
    int? pageSize,
    String? search,
    Object? status,
    String? categoryId,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllArticlesResponse,
      () => AdminGetAllArticlesResponse.fromJsonFactory,
    );

    return _AdminGetAllArticles(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      status: status,
      categoryId: categoryId,
    );
  }

  ///List all articles
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param status
  ///@param categoryId
  @GET(path: '/api/v1/admin/articles')
  Future<chopper.Response<AdminGetAllArticlesResponse>> _AdminGetAllArticles({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('status') Object? status,
    @Query('categoryId') String? categoryId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all articles for admin management.
    

    Supports optional filtering by content status (e.g., Draft, PendingReview, Published)
    and by category. Results are returned as a paginated list with summary information
    suitable for list and management views.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated article list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List all articles',
      operationId: 'AdminGetAllArticles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Create a new article draft
  Future<chopper.Response<AdminCreateArticleResponse>> CreateArticle({
    required AdminCreateArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateArticleResponse,
      () => AdminCreateArticleResponse.fromJsonFactory,
    );

    return _CreateArticle(body: body);
  }

  ///Create a new article draft
  @POST(path: '/api/v1/admin/articles', optionalBody: true)
  Future<chopper.Response<AdminCreateArticleResponse>> _CreateArticle({
    @Body() required AdminCreateArticleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new article shell (step 1 of the two-step article creation flow).
    

    The article is created with a title, slug, and category only. The body and headline
    default to empty strings and must be filled in via
    <c>PUT /api/v1/admin/articles/{id}</c> (step 2) before the article can be submitted.
    

    The returned <c>articleId</c> must be stored by the frontend and used as the upload
    target for inline body images via the image upload endpoint.
    

    For paid (commissioned) articles, both <c>customerId</c> and <c>orderItemId</c>
    must be provided together. For free editorial content, both must be omitted.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with article details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the specified category does not exist

    - Returns 409 Conflict if an article with the same slug already exists
''',
      summary: 'Create a new article draft',
      operationId: 'CreateArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Upload an image for an article
  ///@param id
  ///@param imageType
  Future<chopper.Response<AdminUploadArticleImageResponse>> UploadArticleImage({
    required String? id,
    required enums.ApiV1AdminArticlesIdImagesPostImageType? imageType,
    required MultipartFile file,
  }) {
    generatedMapping.putIfAbsent(
      AdminUploadArticleImageResponse,
      () => AdminUploadArticleImageResponse.fromJsonFactory,
    );

    return _UploadArticleImage(
      id: id,
      imageType: imageType?.value?.toString(),
      file: file,
    );
  }

  ///Upload an image for an article
  ///@param id
  ///@param imageType
  @POST(path: '/api/v1/admin/articles/{id}/images', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminUploadArticleImageResponse>>
  _UploadArticleImage({
    @Path('id') required String? id,
    @Query('imageType') required String? imageType,
    @PartFile() required MultipartFile file,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Uploads an image for an article and creates an article image tracking record.
    

    Images can be of type <c>Cover</c> (the article\'s primary cover image) or
    <c>Body</c> (an inline image embedded in the article\'s rich-text body).
    

    The returned <c>url</c> should be used in the article body HTML for body images,
    or passed as <c>coverImageUrl</c> when updating the article content for cover images.
    

    Accepts multipart/form-data with an image file and an image type.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with image details and location header on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if the rate limit is exceeded
''',
      summary: 'Upload an image for an article',
      operationId: 'UploadArticleImage',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Update article tags
  ///@param id
  Future<chopper.Response<AdminUpdateArticleTagsResponse>> UpdateArticleTags({
    required String? id,
    required AdminUpdateArticleTagsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateArticleTagsResponse,
      () => AdminUpdateArticleTagsResponse.fromJsonFactory,
    );

    return _UpdateArticleTags(id: id, body: body);
  }

  ///Update article tags
  ///@param id
  @PUT(path: '/api/v1/admin/articles/{id}/tags', optionalBody: true)
  Future<chopper.Response<AdminUpdateArticleTagsResponse>> _UpdateArticleTags({
    @Path('id') required String? id,
    @Body() required AdminUpdateArticleTagsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Replaces the complete set of tags assigned to an article.
    

    All existing tag associations are removed and replaced with the provided list of tag IDs.
    Passing an empty list will remove all tags from the article.
    

    All tag identifiers are validated to exist before any changes are applied.
    If any tag ID is not found, the operation returns 404 Not Found and no changes are made.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the article or any of the specified tags do not exist
''',
      summary: 'Update article tags',
      operationId: 'UpdateArticleTags',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Update article SEO metadata
  ///@param id
  Future<chopper.Response<AdminUpdateArticleSeoResponse>> UpdateArticleSeo({
    required String? id,
    required AdminUpdateArticleSeoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateArticleSeoResponse,
      () => AdminUpdateArticleSeoResponse.fromJsonFactory,
    );

    return _UpdateArticleSeo(id: id, body: body);
  }

  ///Update article SEO metadata
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/seo', optionalBody: true)
  Future<chopper.Response<AdminUpdateArticleSeoResponse>> _UpdateArticleSeo({
    @Path('id') required String? id,
    @Body() required AdminUpdateArticleSeoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the SEO metadata of an article, including the custom meta title
    and meta description used for search engine optimization.
    

    The meta title falls back to the article\'s main title if not provided.
    The meta description falls back to a truncated headline if not provided.
    

    This endpoint can be called on an article in any status, allowing SEO
    improvements to be made to published articles without going through the
    full editorial workflow.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated article details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Update article SEO metadata',
      operationId: 'UpdateArticleSeo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Submit article for review
  ///@param id
  Future<chopper.Response<AdminSubmitArticleResponse>> SubmitArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminSubmitArticleResponse,
      () => AdminSubmitArticleResponse.fromJsonFactory,
    );

    return _SubmitArticle(id: id);
  }

  ///Submit article for review
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/submit', optionalBody: true)
  Future<chopper.Response<AdminSubmitArticleResponse>> _SubmitArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Submits an article for editorial review or payment processing.
    

    Free articles transition directly to <c>PendingReview</c> status, where the
    editorial team can approve or reject them.
    Paid (commissioned) articles transition to <c>PendingPayment</c> status, awaiting
    customer payment verification before entering the editorial review queue.
    

    This is step 3 of the article workflow, following draft creation (step 1) and
    content editing (step 2).
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Submit article for review',
      operationId: 'SubmitArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Reject an article during editorial review
  ///@param id
  Future<chopper.Response<AdminRejectArticleResponse>> RejectArticle({
    required String? id,
    required AdminRejectArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminRejectArticleResponse,
      () => AdminRejectArticleResponse.fromJsonFactory,
    );

    return _RejectArticle(id: id, body: body);
  }

  ///Reject an article during editorial review
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/reject', optionalBody: true)
  Future<chopper.Response<AdminRejectArticleResponse>> _RejectArticle({
    @Path('id') required String? id,
    @Body() required AdminRejectArticleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Rejects an article that is currently in <c>PendingReview</c> status,
    transitioning it to <c>Rejected</c> with a mandatory reason.
    

    The rejection reason is stored on the article and is visible to the editorial team.
    The admin can revise the article content and resubmit it for review.
    

    Only articles in <c>PendingReview</c> status can be rejected.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the article is not in PendingReview status or reason is missing

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Reject an article during editorial review',
      operationId: 'RejectArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Publish an approved article
  ///@param id
  Future<chopper.Response<AdminPublishArticleResponse>> PublishArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminPublishArticleResponse,
      () => AdminPublishArticleResponse.fromJsonFactory,
    );

    return _PublishArticle(id: id);
  }

  ///Publish an approved article
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/publish', optionalBody: true)
  Future<chopper.Response<AdminPublishArticleResponse>> _PublishArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Publishes an article that has been approved by the editorial team,
    making it live and visible to all public visitors.
    

    Only articles in <c>Approved</c> status can be published.
    Attempting to publish an article in any other status will return a 400 Bad Request.
    

    The <c>publishedAt</c> timestamp is automatically stamped at the moment of publication.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the article is not in Approved status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Publish an approved article',
      operationId: 'PublishArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Archive an article
  ///@param id
  Future<chopper.Response<AdminArchiveArticleResponse>> ArchiveArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminArchiveArticleResponse,
      () => AdminArchiveArticleResponse.fromJsonFactory,
    );

    return _ArchiveArticle(id: id);
  }

  ///Archive an article
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/archive', optionalBody: true)
  Future<chopper.Response<AdminArchiveArticleResponse>> _ArchiveArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Archives an article, removing it from all public feeds without permanently deleting it.
    

    Archiving is a reversible operation — the article\'s Cloudinary image assets are
    <b>not</b> deleted. The article can be restored to a previous active status if needed.
    

    Use archiving instead of deletion when you want to temporarily hide content
    without losing it permanently.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Archive an article',
      operationId: 'ArchiveArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Approve an article for publication
  ///@param id
  Future<chopper.Response<AdminApproveArticleResponse>> ApproveArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminApproveArticleResponse,
      () => AdminApproveArticleResponse.fromJsonFactory,
    );

    return _ApproveArticle(id: id);
  }

  ///Approve an article for publication
  ///@param id
  @PATCH(path: '/api/v1/admin/articles/{id}/approve', optionalBody: true)
  Future<chopper.Response<AdminApproveArticleResponse>> _ApproveArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Approves an article that is currently in <c>PendingReview</c> status,
    transitioning it to <c>Approved</c> and clearing it for publication.
    

    Only articles in <c>PendingReview</c> status can be approved.
    Attempting to approve an article in any other status will return a 400 Bad Request.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the article is not in PendingReview status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the article does not exist
''',
      summary: 'Approve an article for publication',
      operationId: 'ApproveArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::articles"],
      deprecated: false,
    ),
  });

  ///Get a category by ID
  ///@param id
  Future<chopper.Response<AdminGetCategoryByIdResponse>> AdminGetCategoryById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetCategoryByIdResponse,
      () => AdminGetCategoryByIdResponse.fromJsonFactory,
    );

    return _AdminGetCategoryById(id: id);
  }

  ///Get a category by ID
  ///@param id
  @GET(path: '/api/v1/admin/categories/{id}')
  Future<chopper.Response<AdminGetCategoryByIdResponse>> _AdminGetCategoryById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the full details of a single category, including its complete pricing configuration.
    

    Used by the admin when setting up an order — they need to know exactly what pricing tiers
    are available for a category before adding items to an order.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with category details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the category does not exist
''',
      summary: 'Get a category by ID',
      operationId: 'AdminGetCategoryById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Update a category
  ///@param id
  Future<chopper.Response<AdminUpdateCategoryResponse>> AdminUpdateCategory({
    required String? id,
    required AdminUpdateCategoryRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateCategoryResponse,
      () => AdminUpdateCategoryResponse.fromJsonFactory,
    );

    return _AdminUpdateCategory(id: id, body: body);
  }

  ///Update a category
  ///@param id
  @PUT(path: '/api/v1/admin/categories/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateCategoryResponse>> _AdminUpdateCategory({
    @Path('id') required String? id,
    @Body() required AdminUpdateCategoryRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates a category\'s display name, URL slug, and description.
    

    **Note:** Slug changes take effect immediately on public category URLs.
    Only perform slug changes when the old URL can be redirected at the frontend.
    The content type and free/paid status cannot be changed via this endpoint.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated category details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the category does not exist

    - Returns 409 Conflict if the new slug is already taken
''',
      summary: 'Update a category',
      operationId: 'AdminUpdateCategory',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///List all categories
  ///@param pageIndex
  ///@param pageSize
  ///@param isActive
  ///@param isFree
  Future<chopper.Response<AdminGetAllCategoriesResponse>>
  AdminGetAllCategories({
    int? pageIndex,
    int? pageSize,
    bool? isActive,
    bool? isFree,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllCategoriesResponse,
      () => AdminGetAllCategoriesResponse.fromJsonFactory,
    );

    return _AdminGetAllCategories(
      pageIndex: pageIndex,
      pageSize: pageSize,
      isActive: isActive,
      isFree: isFree,
    );
  }

  ///List all categories
  ///@param pageIndex
  ///@param pageSize
  ///@param isActive
  ///@param isFree
  @GET(path: '/api/v1/admin/categories')
  Future<chopper.Response<AdminGetAllCategoriesResponse>>
  _AdminGetAllCategories({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('isActive') bool? isActive,
    @Query('isFree') bool? isFree,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Returns a paginated list of all content categories.
    

    Supports filtering by active status and free/paid status.
    Used by the admin to review what content formats are currently configured,
    identify categories that still need pricing, and find active paid categories.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated category list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all categories',
      operationId: 'AdminGetAllCategories',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Update a category pricing tier price
  ///@param id
  ///@param tierId
  Future<chopper.Response<AdminUpdateCategoryPricingResponse>>
  AdminUpdateCategoryPricing({
    required String? id,
    required String? tierId,
    required AdminUpdateCategoryPricingRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateCategoryPricingResponse,
      () => AdminUpdateCategoryPricingResponse.fromJsonFactory,
    );

    return _AdminUpdateCategoryPricing(id: id, tierId: tierId, body: body);
  }

  ///Update a category pricing tier price
  ///@param id
  ///@param tierId
  @PUT(
    path: '/api/v1/admin/categories/{id}/pricing/{tierId}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminUpdateCategoryPricingResponse>>
  _AdminUpdateCategoryPricing({
    @Path('id') required String? id,
    @Path('tierId') required String? tierId,
    @Body() required AdminUpdateCategoryPricingRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the price for a specific pricing tier within a category.
    

    **Note:** Price changes apply only to future orders — existing order items have their
    price frozen at snapshot time and are never retroactively affected.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the updated pricing details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the category or pricing tier is not configured
''',
      summary: 'Update a category pricing tier price',
      operationId: 'AdminUpdateCategoryPricing',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Remove a pricing tier from a category
  ///@param id
  ///@param tierId
  Future<chopper.Response<AdminRemoveCategoryPricingResponse>>
  AdminRemoveCategoryPricing({required String? id, required String? tierId}) {
    generatedMapping.putIfAbsent(
      AdminRemoveCategoryPricingResponse,
      () => AdminRemoveCategoryPricingResponse.fromJsonFactory,
    );

    return _AdminRemoveCategoryPricing(id: id, tierId: tierId);
  }

  ///Remove a pricing tier from a category
  ///@param id
  ///@param tierId
  @DELETE(path: '/api/v1/admin/categories/{id}/pricing/{tierId}')
  Future<chopper.Response<AdminRemoveCategoryPricingResponse>>
  _AdminRemoveCategoryPricing({
    @Path('id') required String? id,
    @Path('tierId') required String? tierId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes a pricing tier from a category when that add-on service is no longer offered for that content type.
    

    **Note:** Existing orders that already contain this tier are unaffected —
    the price snapshot is preserved on the order item tier record.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the pricing configuration does not exist
''',
      summary: 'Remove a pricing tier from a category',
      operationId: 'AdminRemoveCategoryPricing',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Deactivate a category
  ///@param id
  Future<chopper.Response<AdminDeactivateCategoryResponse>>
  AdminDeactivateCategory({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivateCategoryResponse,
      () => AdminDeactivateCategoryResponse.fromJsonFactory,
    );

    return _AdminDeactivateCategory(id: id);
  }

  ///Deactivate a category
  ///@param id
  @PATCH(path: '/api/v1/admin/categories/{id}/deactivate', optionalBody: true)
  Future<chopper.Response<AdminDeactivateCategoryResponse>>
  _AdminDeactivateCategory({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a category, preventing it from being used in new content or orders.
    

    Existing content assigned to this category is not affected.
    The category can be restored later using the activate endpoint.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated category details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the category does not exist

    - Returns 409 Conflict if the category is already inactive
''',
      summary: 'Deactivate a category',
      operationId: 'AdminDeactivateCategory',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Create a new category
  ///@param contentTypeId
  Future<chopper.Response<AdminCreateCategoryResponse>> AdminCreateCategory({
    required String? contentTypeId,
    required AdminCreateCategoryRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateCategoryResponse,
      () => AdminCreateCategoryResponse.fromJsonFactory,
    );

    return _AdminCreateCategory(contentTypeId: contentTypeId, body: body);
  }

  ///Create a new category
  ///@param contentTypeId
  @POST(path: '/api/v1/admin/categories/{contentTypeId}', optionalBody: true)
  Future<chopper.Response<AdminCreateCategoryResponse>> _AdminCreateCategory({
    @Path('contentTypeId') required String? contentTypeId,
    @Body() required AdminCreateCategoryRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new content category (e.g. "Artist Profile", "116 Le Focus", "Chronique Sale").
    \n
    Every article and video must belong to exactly one category. Categories determine whether
    content is free or paid — a free category skips the payment flow entirely and goes straight
    to editorial review.
    \n
    **Note:** The content type must already exist before creating a category.
    The slug must be unique, URL-safe, and lowercase (e.g. "artist-profile").
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with category details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 404 Not Found if the content type does not exist\n
    - Returns 409 Conflict if the slug is already taken\n''',
      summary: 'Create a new category',
      operationId: 'AdminCreateCategory',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Add a pricing tier to a category
  ///@param id
  Future<chopper.Response<AdminAddCategoryPricingResponse>>
  AdminAddCategoryPricing({
    required String? id,
    required AdminAddCategoryPricingRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAddCategoryPricingResponse,
      () => AdminAddCategoryPricingResponse.fromJsonFactory,
    );

    return _AdminAddCategoryPricing(id: id, body: body);
  }

  ///Add a pricing tier to a category
  ///@param id
  @POST(path: '/api/v1/admin/categories/{id}/pricing', optionalBody: true)
  Future<chopper.Response<AdminAddCategoryPricingResponse>>
  _AdminAddCategoryPricing({
    @Path('id') required String? id,
    @Body() required AdminAddCategoryPricingRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Attaches a pricing tier to a category and sets the price for that add-on
    (e.g. "Artist Profile + base_upload = USD25").
    \n
    A paid category can only accept orders once it has at least one pricing tier configured.
    The pricing tier must be active at the time of assignment.
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with the pricing details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 404 Not Found if the category or pricing tier does not exist\n
    - Returns 409 Conflict if this tier is already configured for the category, or the tier is inactive\n''',
      summary: 'Add a pricing tier to a category',
      operationId: 'AdminAddCategoryPricing',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///Activate a category
  ///@param id
  Future<chopper.Response<AdminActivateCategoryResponse>>
  AdminActivateCategory({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminActivateCategoryResponse,
      () => AdminActivateCategoryResponse.fromJsonFactory,
    );

    return _AdminActivateCategory(id: id);
  }

  ///Activate a category
  ///@param id
  @PATCH(path: '/api/v1/admin/categories/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivateCategoryResponse>>
  _AdminActivateCategory({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a category, making it available for content creation and orders.
    

    An inactive category cannot be used in new content or order items.
    This operation restores it to active status.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated category details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the category does not exist

    - Returns 409 Conflict if the category is already active
''',
      summary: 'Activate a category',
      operationId: 'AdminActivateCategory',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::categories"],
      deprecated: false,
    ),
  });

  ///List all content types
  Future<chopper.Response<AdminGetAllContentTypesResponse>>
  AdminGetAllContentTypes() {
    generatedMapping.putIfAbsent(
      AdminGetAllContentTypesResponse,
      () => AdminGetAllContentTypesResponse.fromJsonFactory,
    );

    return _AdminGetAllContentTypes();
  }

  ///List all content types
  @GET(path: '/api/v1/admin/content-types')
  Future<chopper.Response<AdminGetAllContentTypesResponse>>
  _AdminGetAllContentTypes({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the complete list of content types available in the system.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the list of content types on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all content types',
      operationId: 'AdminGetAllContentTypes',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::content-types"],
      deprecated: false,
    ),
  });

  ///Create a new content type
  Future<chopper.Response<AdminCreateContentTypeResponse>> CreateContentType({
    required AdminCreateContentTypeRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateContentTypeResponse,
      () => AdminCreateContentTypeResponse.fromJsonFactory,
    );

    return _CreateContentType(body: body);
  }

  ///Create a new content type
  @POST(path: '/api/v1/admin/content-types', optionalBody: true)
  Future<chopper.Response<AdminCreateContentTypeResponse>> _CreateContentType({
    @Body() required AdminCreateContentTypeRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new top-level content format (e.g. "Article", "Video").
    \n
    This endpoint creates a content type by:\n
    - Validating the content type name\n
    - Checking that no content type with the same name already exists\n
    - Creating the content type with active status\n
    - Returning the created content type details\n
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Use Cases:**\n
    - Define new content formats before creating categories\n
    \n
    **Request Body:**\n
    - name: The unique display name for the content type (max 30 characters)\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with content type details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 409 Conflict if content type name already exists\n''',
      summary: 'Create a new content type',
      operationId: 'CreateContentType',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::content-types"],
      deprecated: false,
    ),
  });

  ///Update a content type
  ///@param id
  Future<chopper.Response<AdminUpdateContentTypeResponse>>
  AdminUpdateContentType({
    required String? id,
    required AdminUpdateContentTypeRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateContentTypeResponse,
      () => AdminUpdateContentTypeResponse.fromJsonFactory,
    );

    return _AdminUpdateContentType(id: id, body: body);
  }

  ///Update a content type
  ///@param id
  @PUT(path: '/api/v1/admin/content-types/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateContentTypeResponse>>
  _AdminUpdateContentType({
    @Path('id') required String? id,
    @Body() required AdminUpdateContentTypeRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Updates the name of an existing content type.
    

    **Note:** Renaming a content type affects the label of all categories currently assigned to it.
    Ensure the new name accurately reflects the content format before saving.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated content type details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the content type does not exist

    - Returns 409 Conflict if the new name is already taken
''',
      summary: 'Update a content type',
      operationId: 'AdminUpdateContentType',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::content-types"],
      deprecated: false,
    ),
  });

  ///Deactivate a content type
  ///@param id
  Future<chopper.Response<AdminDeactivateContentTypeResponse>>
  AdminDeactivateContentType({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivateContentTypeResponse,
      () => AdminDeactivateContentTypeResponse.fromJsonFactory,
    );

    return _AdminDeactivateContentType(id: id);
  }

  ///Deactivate a content type
  ///@param id
  @PATCH(
    path: '/api/v1/admin/content-types/{id}/deactivate',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDeactivateContentTypeResponse>>
  _AdminDeactivateContentType({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a content type, preventing it from being used across the platform.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the content type does not exist

    - Returns 409 Conflict if the content type is already inactive
''',
      summary: 'Deactivate a content type',
      operationId: 'AdminDeactivateContentType',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::content-types"],
      deprecated: false,
    ),
  });

  ///Activate a content type
  ///@param id
  Future<chopper.Response<AdminActivateContentTypeResponse>>
  ActivateContentType({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminActivateContentTypeResponse,
      () => AdminActivateContentTypeResponse.fromJsonFactory,
    );

    return _ActivateContentType(id: id);
  }

  ///Activate a content type
  ///@param id
  @PATCH(path: '/api/v1/admin/content-types/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivateContentTypeResponse>>
  _ActivateContentType({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a content type, making it available for use across the platform.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the content type does not exist

    - Returns 409 Conflict if the content type is already active
''',
      summary: 'Activate a content type',
      operationId: 'ActivateContentType',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::content-types"],
      deprecated: false,
    ),
  });

  ///List orders for a customer
  ///@param id
  ///@param pageIndex
  ///@param pageSize
  Future<chopper.Response<AdminGetCustomerOrdersResponse>>
  AdminGetCustomerOrders({required String? id, int? pageIndex, int? pageSize}) {
    generatedMapping.putIfAbsent(
      AdminGetCustomerOrdersResponse,
      () => AdminGetCustomerOrdersResponse.fromJsonFactory,
    );

    return _AdminGetCustomerOrders(
      id: id,
      pageIndex: pageIndex,
      pageSize: pageSize,
    );
  }

  ///List orders for a customer
  ///@param id
  ///@param pageIndex
  ///@param pageSize
  @GET(path: '/api/v1/admin/customers/{id}/orders')
  Future<chopper.Response<AdminGetCustomerOrdersResponse>>
  _AdminGetCustomerOrders({
    @Path('id') required String? id,
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns a paginated list of all orders for a specific B2B customer,
    ordered by most recently created first.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with a paginated list of order summaries

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List orders for a customer',
      operationId: 'AdminGetCustomerOrders',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::customers"],
      deprecated: false,
    ),
  });

  ///Get a customer by ID
  ///@param id
  Future<chopper.Response<AdminGetCustomerByIdResponse>> AdminGetCustomerById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetCustomerByIdResponse,
      () => AdminGetCustomerByIdResponse.fromJsonFactory,
    );

    return _AdminGetCustomerById(id: id);
  }

  ///Get a customer by ID
  ///@param id
  @GET(path: '/api/v1/admin/customers/{id}')
  Future<chopper.Response<AdminGetCustomerByIdResponse>> _AdminGetCustomerById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the full details of a single B2B customer by their unique identifier.
    

    Used by the admin to look up a specific customer\'s contact information before
    opening an order or following up on a previous engagement.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with customer details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the customer does not exist
''',
      summary: 'Get a customer by ID',
      operationId: 'AdminGetCustomerById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::customers"],
      deprecated: false,
    ),
  });

  ///Update a customer
  ///@param id
  Future<chopper.Response<AdminUpdateCustomerResponse>> AdminUpdateCustomer({
    required String? id,
    required AdminUpdateCustomerRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateCustomerResponse,
      () => AdminUpdateCustomerResponse.fromJsonFactory,
    );

    return _AdminUpdateCustomer(id: id, body: body);
  }

  ///Update a customer
  ///@param id
  @PUT(path: '/api/v1/admin/customers/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateCustomerResponse>> _AdminUpdateCustomer({
    @Path('id') required String? id,
    @Body() required AdminUpdateCustomerRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the contact information of an existing B2B customer.
    

    Email is intentionally excluded from this operation — it serves as the unique
    identifier for a customer and cannot be changed after creation.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated customer details on success

    - Returns 400 Bad Request if the request body is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the customer does not exist
''',
      summary: 'Update a customer',
      operationId: 'AdminUpdateCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::customers"],
      deprecated: false,
    ),
  });

  ///List all customers
  ///@param pageIndex
  ///@param pageSize
  Future<chopper.Response<AdminGetAllCustomersResponse>> AdminGetAllCustomers({
    int? pageIndex,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllCustomersResponse,
      () => AdminGetAllCustomersResponse.fromJsonFactory,
    );

    return _AdminGetAllCustomers(pageIndex: pageIndex, pageSize: pageSize);
  }

  ///List all customers
  ///@param pageIndex
  ///@param pageSize
  @GET(path: '/api/v1/admin/customers')
  Future<chopper.Response<AdminGetAllCustomersResponse>> _AdminGetAllCustomers({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the paginated list of all B2B customers ordered by most recently created first.
    

    Used by the admin to search for an existing client before creating an order,
    or to look up contact details when following up on payment.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated customer list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all customers',
      operationId: 'AdminGetAllCustomers',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::customers"],
      deprecated: false,
    ),
  });

  ///Create a new customer
  Future<chopper.Response<AdminCreateCustomerResponse>> AdminCreateCustomer({
    required AdminCreateCustomerRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateCustomerResponse,
      () => AdminCreateCustomerResponse.fromJsonFactory,
    );

    return _AdminCreateCustomer(body: body);
  }

  ///Create a new customer
  @POST(path: '/api/v1/admin/customers', optionalBody: true)
  Future<chopper.Response<AdminCreateCustomerResponse>> _AdminCreateCustomer({
    @Body() required AdminCreateCustomerRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a B2B client record for an artist, music label, or brand that commissions paid content.
    

    A customer account must exist before an order can be opened for them. Customers are entirely
    separate from platform visitor accounts (B2C users who read articles and watch videos).
    

    **Note:** The email address is used as the unique identifier and cannot be changed after creation.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with customer details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 409 Conflict if a customer with the same email already exists
''',
      summary: 'Create a new customer',
      operationId: 'AdminCreateCustomer',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::customers"],
      deprecated: false,
    ),
  });

  ///Verify OTP code for admin account activation
  Future<chopper.Response<AdminVerifyOtpResponse>> AdminVerifyOtp({
    required AdminVerifyOtpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminVerifyOtpResponse,
      () => AdminVerifyOtpResponse.fromJsonFactory,
    );

    return _AdminVerifyOtp(body: body);
  }

  ///Verify OTP code for admin account activation
  @POST(path: '/api/v1/admin/auth/verify-otp', optionalBody: true)
  Future<chopper.Response<AdminVerifyOtpResponse>> _AdminVerifyOtp({
    @Body() required AdminVerifyOtpRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Verifies the OTP (One-Time Password) code sent to the admin user\'s email for various purposes.
    The admin user must verify their account within the OTP expiration window to gain full access.
    

    **Supported OTP Purposes:**

    - **Email Verification**: During admin account registration

    - **Account Recovery**: For account recovery processes

    

    This endpoint performs the following operations: 

    - Validates the OTP code format (6-digit numeric)

    - Checks if the admin user exists and is not already verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Marks the admin user account as verified upon successful validation

    - Invalidates all remaining OTPs for the admin user

    

    **Authentication Requirements:**

    - No authentication required; open to admin users with unverified accounts

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Automatic cleanup of expired/used OTPs

    - Admin role verification

    

    **Response Codes:**

    - Returns 200 OK with verification success status

    - Returns 400 Bad Request for invalid OTP code format

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for maximum attempts reached

    - Returns 404 Not Found for no valid OTP found

    - Returns 409 Conflict if account is already verified

    

    **Error Handling:**

    - BadRequestException (400): Invalid OTP code format or value

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found for the admin user.''',
      summary: 'Verify OTP code for admin account activation',
      operationId: 'AdminVerifyOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Sign out the authenticated admin user from all devices
  Future<chopper.Response<AdminSignOutFromAllDevicesResponse>>
  AdminSignOutFromAllDevices() {
    generatedMapping.putIfAbsent(
      AdminSignOutFromAllDevicesResponse,
      () => AdminSignOutFromAllDevicesResponse.fromJsonFactory,
    );

    return _AdminSignOutFromAllDevices();
  }

  ///Sign out the authenticated admin user from all devices
  @POST(path: '/api/v1/admin/auth/sign-out-all', optionalBody: true)
  Future<chopper.Response<AdminSignOutFromAllDevicesResponse>>
  _AdminSignOutFromAllDevices({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated admin user from all devices by invalidating all active sessions.
    After successful sign-out, all refresh tokens will be revoked and the admin must re-authenticate on all devices.
    

    This endpoint is commonly used:

    - After password changes (security best practice)

    - When admin suspects account compromise

    - When enabling two-factor authentication

    - As a "Sign Out Everywhere" feature\n
    \n
    **Authentication Requirements:**\n
    - Valid JWT Bearer token with admin privileges\n
    - Account must be active (not suspended)\n
    \n
    **Security Features:**\n
    - Invalidates all active sessions across all devices\n
    - Uses soft delete for session tracking and analytics\n
    - Prevents token reuse after sign-out\n
    - Idempotent operation (safe to call multiple times)\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with success status\n
    - Returns 401 Unauthorized for invalid/missing JWT token\n
    - Returns 403 Forbidden for non-admin users or inactive accounts\n
    \n
    **Process Flow:**\n
    1. Extracts admin user ID from JWT token\n
    2. Validates account is active and has admin privileges\n
    3. Soft deletes all active sessions for the admin user\n
    4. Returns success response.''',
      summary: 'Sign out the authenticated admin user from all devices',
      operationId: 'AdminSignOutFromAllDevices',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Sign out the authenticated admin user
  Future<chopper.Response<AdminSignOutResponse>> AdminSignOut({
    required AdminSignOutRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminSignOutResponse,
      () => AdminSignOutResponse.fromJsonFactory,
    );

    return _AdminSignOut(body: body);
  }

  ///Sign out the authenticated admin user
  @POST(path: '/api/v1/admin/auth/sign-out', optionalBody: true)
  Future<chopper.Response<AdminSignOutResponse>> _AdminSignOut({
    @Body() required AdminSignOutRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated admin user by updating their login status.
    After successful sign-out, the client should discard the JWT token.
    

    This endpoint performs secure sign-out by:

    - Validating JWT token authentication

    - Verifying account is active (not suspended/banned)

    - Ensuring user has admin or super admin role

    - Updating user login status in the database

    - Allowing unverified accounts to sign out

    

    **Authentication Requirements:**

    - Valid JWT Bearer token

    - Account must be active (not suspended)

    - User must have Admin or SuperAdmin role

    - Verification status is not required for sign-out

    

    **Security Features:**

    - Only active admin accounts can perform sign-out

    - Prevents unnecessary database updates if already logged out

    - Always returns success for consistent UX

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    

    **Process Flow:**

    1. Extracts admin user ID from JWT token

    2. Validates account is active

    3. Verifies admin/super admin role authorization

    4. Updates login status if currently logged in

    5. Returns success response.''',
      summary: 'Sign out the authenticated admin user',
      operationId: 'AdminSignOut',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Reset admin user password using OTP verification
  Future<chopper.Response<AdminResetPasswordResponse>> AdminResetPassword({
    required AdminResetPasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminResetPasswordResponse,
      () => AdminResetPasswordResponse.fromJsonFactory,
    );

    return _AdminResetPassword(body: body);
  }

  ///Reset admin user password using OTP verification
  @POST(path: '/api/v1/admin/auth/reset-password', optionalBody: true)
  Future<chopper.Response<AdminResetPasswordResponse>> _AdminResetPassword({
    @Body() required AdminResetPasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resets an admin user\'s password after validating the OTP code sent during the forgot password process.
    After successful password reset, the admin user can login with their new password.
    

    This endpoint performs the following operations:

    - Validates the OTP code format and authenticity

    - Checks if the admin user exists and is active

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Hashes the new password using secure algorithms

    - Updates the admin user\'s password in the database

    - Invalidates all remaining password reset OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to admin users with valid OTP codes

    - Admin user account must be active

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Secure password hashing (PBKDF2 with SHA-256)

    - Automatic cleanup of expired/used OTPs

    - Password validation enforced by validator

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP code (6-digit numeric)

    - New password meeting security requirements

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid input or inactive account

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for max attempts reached

    - Returns 404 Not Found for no valid OTP found or user not found

    

    **Error Handling:**

    - BadRequestException (400): Invalid input format, inactive account, or invalid OTP

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found or user not found

    

    **Process Flow:**

    1. Validates email format and password requirements

    2. Finds admin user by email address

    3. Validates account is active

    4. Validates OTP code for password reset purpose

    5. Hashes new password securely

    6. Updates admin user\'s password

    7. Marks OTP as used and invalidates remaining OTPs

    8. Returns success response.''',
      summary: 'Reset admin user password using OTP verification',
      operationId: 'AdminResetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Resend OTP verification code for admin users
  Future<chopper.Response<AdminResendOtpResponse>> AdminResendOtp({
    required AdminResendOtpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminResendOtpResponse,
      () => AdminResendOtpResponse.fromJsonFactory,
    );

    return _AdminResendOtp(body: body);
  }

  ///Resend OTP verification code for admin users
  @POST(path: '/api/v1/admin/auth/resend-otp', optionalBody: true)
  Future<chopper.Response<AdminResendOtpResponse>> _AdminResendOtp({
    @Body() required AdminResendOtpRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resends a new OTP verification code for admin users by invalidating existing OTPs and generating a fresh one.
    This endpoint enables admins to request a new verification code when:
    

    - The original OTP wasn\'t received

    - The previous OTP has expired

    - There were issues with email delivery

    - Maximum attempts were reached on the previous OTP

    

    **Request Requirements:**

    - Valid admin email address format

    - Valid OTP purpose (EmailVerification, PasswordReset, TwoFactorAuthentication, AccountRecovery)

    - User must have admin privileges

    - Account must be active

    

    **Security Features:**

    - Admin role verification

    - Account active status validation

    - Automatic invalidation of existing OTPs for the specified purpose

    - New OTP generation with fresh expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status when OTP is resent

    - Returns 400 Bad Request for invalid email format or purpose

    - Returns 404 Not Found when admin user doesn\'t exist

    - Returns 403 Forbidden when user lacks admin privileges

    

    **Process Flow:**

    1. Validates email format and OTP purpose

    2. Verifies admin user exists and has admin role

    3. Checks account is active and verified

    4. Invalidates all existing OTPs for the specified purpose

    5. Generates new OTP with fresh expiration

    6. Returns success response

    

    **Supported OTP Purposes:**

    - EmailVerification: For email address verification

    - PasswordReset: For password reset requests

    - TwoFactorAuthentication: For 2FA setup/verification

    - AccountRecovery: For account recovery processes''',
      summary: 'Resend OTP verification code for admin users',
      operationId: 'AdminResendOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Authenticate admin and return JWT token with admin claims
  Future<chopper.Response<AdminLoginResponse>> AdminLogin({
    required AdminLoginRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminLoginResponse,
      () => AdminLoginResponse.fromJsonFactory,
    );

    return _AdminLogin(body: body);
  }

  ///Authenticate admin and return JWT token with admin claims
  @POST(path: '/api/v1/admin/auth/login', optionalBody: true)
  Future<chopper.Response<AdminLoginResponse>> _AdminLogin({
    @Body() required AdminLoginRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates an admin user using email and password credentials.
    The returned JWT token includes admin-specific claims for accessing administrative endpoints.
    

    This endpoint performs enhanced authentication by:

    - Validating email and password

    - Verifying the account is active and verified

    - Checking for admin role privileges (Admin or SuperAdmin)

    - Generating JWT token with appropriate admin claims

    - Recording the login activity

    

    **Authentication Requirements:**

    - Valid email and password combination

    - Account must be active and verified

    - User must have Admin or SuperAdmin role assigned

    

    **Security Features:**

    - Password verification using secure hashing (bcrypt)

    - Role-based access validation

    - Login activity tracking

    - Enhanced JWT claims for admin operations

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token on successful authentication

    - Returns 400 Bad Request for invalid email format or incorrect password

    - Returns 401 Unauthorized when user lacks admin privileges (Admin/SuperAdmin role required)

    - Returns 403 Forbidden when user account is inactive or disabled

    - Returns 404 Not Found when no user exists with the provided email

    

    **Error Handling:**

    - AuthenticationException (401): Missing admin role - user authenticated but lacks Admin/SuperAdmin privileges

    - AuthorizationException (403): Account inactive - user exists but account is disabled/suspended

    - BadRequestException (400): Invalid password - email exists but password is incorrect

    - NotFoundException (404): User not found - no account exists with the provided email.''',
      summary: 'Authenticate admin and return JWT token with admin claims',
      operationId: 'AdminLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Initiate password reset process for existing admin users
  Future<chopper.Response<AdminForgotPasswordResponse>> AdminForgotPassword({
    required AdminForgotPasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminForgotPasswordResponse,
      () => AdminForgotPasswordResponse.fromJsonFactory,
    );

    return _AdminForgotPassword(body: body);
  }

  ///Initiate password reset process for existing admin users
  @POST(path: '/api/v1/admin/auth/forgot-password', optionalBody: true)
  Future<chopper.Response<AdminForgotPasswordResponse>> _AdminForgotPassword({
    @Body() required AdminForgotPasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Initiates the password reset process by generating an OTP for the specified admin email address.

    The generated OTP can be used with the verify-otp endpoint to proceed with password reset.
    This endpoint follows security best practices by:
    

    - Always returning success to prevent user enumeration attacks

    - Only generating OTP for valid and active admin accounts

    - Silently handling cases where email doesn\'t exist or account is inactive

    

    **Request Requirements:**

    - Valid email address format

    - Email must belong to an existing and active admin account

    

    **Security Features:**

    - User enumeration protection (consistent response regardless of email existence)

    - Account status validation (active admin accounts only)

    - OTP generation with expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status (always true for security) and the email address

    - Returns 400 Bad Request for invalid email format

    

    **Process Flow:**

    1. Validates email format

    2. Checks if admin user exists and is active

    3. Generates OTP for password reset

    4. Returns success response (regardless of actual outcome).''',
      summary: 'Initiate password reset process for existing admin users',
      operationId: 'AdminForgotPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///Change admin user password with current password verification
  Future<chopper.Response<AdminChangePasswordResponse>> AdminChangePassword({
    required AdminChangePasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminChangePasswordResponse,
      () => AdminChangePasswordResponse.fromJsonFactory,
    );

    return _AdminChangePassword(body: body);
  }

  ///Change admin user password with current password verification
  @PATCH(path: '/api/v1/admin/auth/change-password', optionalBody: true)
  Future<chopper.Response<AdminChangePasswordResponse>> _AdminChangePassword({
    @Body() required AdminChangePasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Changes an admin user\'s password after verifying their current password for security.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Validates the current password against stored hash

    - Ensures new password is different from current password

    - Hashes the new password using secure algorithms

    - Updates the admin user\'s password in the database

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Only admin role users can change their password

    

    **Security Features:**

    - Current password verification for authorization

    - Prevention of reusing the same password

    - Secure password hashing (PBKDF2 with SHA-256)

    - Strong password validation enforced by validator

    - Account status validation before password change

    

    **Request Requirements:**

    - Valid old password for verification

    - New password meeting security requirements

    - User must be authenticated with valid JWT token

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid old password or same password

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for new password same as old

    

    **Error Handling:**

    - BadRequestException (400): Invalid old password or inactive account

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not active or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): New password same as current password

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Validates old password and new password requirements

    3. Finds admin user by ID and validates account status

    4. Verifies current password matches provided old password

    5. Ensures new password is different from current password

    6. Hashes new password securely

    7. Updates admin user\'s password in database

    8. Returns success response.''',
      summary: 'Change admin user password with current password verification',
      operationId: 'AdminChangePassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  });

  ///List all lyrics pages
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  Future<chopper.Response<AdminGetAllLyricsResponse>> AdminGetAllLyrics({
    int? pageIndex,
    int? pageSize,
    String? search,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllLyricsResponse,
      () => AdminGetAllLyricsResponse.fromJsonFactory,
    );

    return _AdminGetAllLyrics(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
    );
  }

  ///List all lyrics pages
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  @GET(path: '/api/v1/admin/lyrics')
  Future<chopper.Response<AdminGetAllLyricsResponse>> _AdminGetAllLyrics({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all lyrics pages for admin management.
    Results are returned as a paginated list suitable for list and management views.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated lyrics list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List all lyrics pages',
      operationId: 'AdminGetAllLyrics',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::lyrics"],
      deprecated: false,
    ),
  });

  ///Create a lyrics page
  Future<chopper.Response<AdminCreateLyricsResponse>> CreateLyrics({
    required AdminCreateLyricsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateLyricsResponse,
      () => AdminCreateLyricsResponse.fromJsonFactory,
    );

    return _CreateLyrics(body: body);
  }

  ///Create a lyrics page
  @POST(path: '/api/v1/admin/lyrics', optionalBody: true)
  Future<chopper.Response<AdminCreateLyricsResponse>> _CreateLyrics({
    @Body() required AdminCreateLyricsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Creates a new SEO-optimised lyrics page for a song.
    

    A lyrics page can be:
    - Standalone with no parent content
    - Linked to a full video by providing a <c>videoId</c> (e.g., lyric video, "Behind the Lyrics" episode)
    - Linked to an article by providing an <c>articleId</c> (e.g., a dedicated Lyrics Page article)
    \n
    Returns a conflict error if lyrics for the same song title and artist already exist.
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with lyrics details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 409 Conflict if lyrics for the same song and artist already exist\n
    - Returns 429 Too Many Requests if rate limit is exceeded\n''',
      summary: 'Create a lyrics page',
      operationId: 'CreateLyrics',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::lyrics"],
      deprecated: false,
    ),
  });

  ///Update SEO metadata for a lyrics page
  ///@param id
  Future<chopper.Response<AdminUpdateLyricsSeoResponse>> UpdateLyricsSeo({
    required String? id,
    required AdminUpdateLyricsSeoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateLyricsSeoResponse,
      () => AdminUpdateLyricsSeoResponse.fromJsonFactory,
    );

    return _UpdateLyricsSeo(id: id, body: body);
  }

  ///Update SEO metadata for a lyrics page
  ///@param id
  @PATCH(path: '/api/v1/admin/lyrics/{id}/seo', optionalBody: true)
  Future<chopper.Response<AdminUpdateLyricsSeoResponse>> _UpdateLyricsSeo({
    @Path('id') required String? id,
    @Body() required AdminUpdateLyricsSeoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the SEO metadata fields of the specified lyrics page, including meta title,
    meta description, meta keywords, and Schema.org JSON-LD structured data.
    

    Passing <c>null</c> for any field clears its value. This endpoint does not affect
    the lyrics text itself — use <c>PUT /api/v1/admin/lyrics/{id}</c> for that.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated lyrics details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the lyrics record does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Update SEO metadata for a lyrics page',
      operationId: 'UpdateLyricsSeo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::lyrics"],
      deprecated: false,
    ),
  });

  ///Update the lyrics text
  ///@param id
  Future<chopper.Response<AdminUpdateLyricsResponse>> UpdateLyrics({
    required String? id,
    required AdminUpdateLyricsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateLyricsResponse,
      () => AdminUpdateLyricsResponse.fromJsonFactory,
    );

    return _UpdateLyrics(id: id, body: body);
  }

  ///Update the lyrics text
  ///@param id
  @PUT(path: '/api/v1/admin/lyrics/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateLyricsResponse>> _UpdateLyrics({
    @Path('id') required String? id,
    @Body() required AdminUpdateLyricsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Replaces the lyrics text of the specified lyrics page.
    

    Only the lyrics text body can be updated via this endpoint. To update SEO metadata,
    use the <c>PATCH /api/v1/admin/lyrics/{id}/seo</c> endpoint.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated lyrics details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the lyrics record does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Update the lyrics text',
      operationId: 'UpdateLyrics',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::lyrics"],
      deprecated: false,
    ),
  });

  ///Retrieve authenticated admin user's complete profile information
  Future<chopper.Response<AdminGetOwnProfileResponse>> AdminGetOwnProfile() {
    generatedMapping.putIfAbsent(
      AdminGetOwnProfileResponse,
      () => AdminGetOwnProfileResponse.fromJsonFactory,
    );

    return _AdminGetOwnProfile();
  }

  ///Retrieve authenticated admin user's complete profile information
  @GET(path: '/api/v1/admin/me/profile')
  Future<chopper.Response<AdminGetOwnProfileResponse>> _AdminGetOwnProfile({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the complete profile information for the currently authenticated admin user.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Retrieves complete admin user information including roles and permissions

    - Fetches admin user avatar file information if available

    - Returns comprehensive admin user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - User must have Admin or SuperAdmin role

    

    **Returned Information:**

    - Basic user details (ID, email, username, verification status)

    - User roles and associated permissions

    - Avatar file information (if available)

    - Account status and activity information

    - Authentication provider information (local/social)

    

    **Security Features:**

    - Admin user can only access their own profile information

    - Account status validation before profile retrieval

    - Comprehensive permission and role information for authorization

    - Avatar file security through proper file service integration

    

    **Response Codes:**

    - Returns 200 OK with complete admin user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for insufficient permissions or inactive accounts

    - Returns 404 Not Found for user not found

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Insufficient permissions or account inactive

    - NotFoundException (404): User not found

    

    **Use Cases:**

    - Display admin user profile information in admin applications

    - Determine admin user permissions for UI/UX customization

    - Validate admin user account status

    - Access avatar and display admin user information

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds admin user by ID and validates account status

    3. Retrieves admin user roles and permissions

    4. Fetches avatar file information if available

    5. Maps complete user data to response DTO

    6. Returns comprehensive admin user profile information''',
      summary:
          'Retrieve authenticated admin user\'s complete profile information',
      operationId: 'AdminGetOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me"],
      deprecated: false,
    ),
  });

  ///Update authenticated admin user's own profile information
  Future<chopper.Response<AdminUpdateOwnProfileResponse>>
  AdminUpdateOwnProfile({required AdminUpdateOwnProfileRequest? body}) {
    generatedMapping.putIfAbsent(
      AdminUpdateOwnProfileResponse,
      () => AdminUpdateOwnProfileResponse.fromJsonFactory,
    );

    return _AdminUpdateOwnProfile(body: body);
  }

  ///Update authenticated admin user's own profile information
  @PATCH(path: '/api/v1/admin/me/profile', optionalBody: true)
  Future<chopper.Response<AdminUpdateOwnProfileResponse>>
  _AdminUpdateOwnProfile({
    @Body() required AdminUpdateOwnProfileRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the profile information for the currently authenticated admin user.

    This endpoint requires admin user authentication - only logged-in admin users can update their own profile,
    providing secure profile management for authenticated admin users
    while maintaining data integrity and security requirements.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Validates uniqueness for username and phone number if being updated

    - Updates admin user profile information selectively

    - Returns updated admin user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Only logged-in admin users can update their profile

    - Admin or SuperAdmin role required

    

    **Updateable Information:**

    - Username (must be unique across the system)

    - Phone number with country information

    - Country details (name, ISO code, dial code)

    

    **Restrictions:**

    - Email updates are not allowed for admin users (security restriction)

    

    **Security Features:**

    - Admin user can only update their own profile information

    - Account status validation before updates

    - Uniqueness validation for username and phone

    - Email updates prohibited for admin users

    

    **Response Codes:**

    - Returns 200 OK with updated admin user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for duplicate username/phone

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not active or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): Username or phone already exists

    

    **Use Cases:**

    - Update admin profile information in administration panels

    - Change username for admin branding

    - Update contact information and location details

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds admin user by ID and validates account status

    3. Validates uniqueness for updated fields

    4. Updates admin user profile information selectively

    5. Saves changes to database

    6. Returns updated admin user profile data

    

    **Important Notes:**

    - Email updates are restricted for admin users

    - Phone number updates include country information

    - Only provided fields are updated (partial updates supported)

    - All validations are performed before any updates.''',
      summary: 'Update authenticated admin user\'s own profile information',
      operationId: 'AdminUpdateOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me"],
      deprecated: false,
    ),
  });

  ///Update admin user avatar via file upload
  Future<chopper.Response<AdminUpdateAvatarResponse>> AdminUpdateAvatar({
    required MultipartFile avatarFile,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateAvatarResponse,
      () => AdminUpdateAvatarResponse.fromJsonFactory,
    );

    return _AdminUpdateAvatar(avatarFile: avatarFile);
  }

  ///Update admin user avatar via file upload
  @PATCH(path: '/api/v1/admin/me/avatar', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminUpdateAvatarResponse>> _AdminUpdateAvatar({
    @PartFile() required MultipartFile avatarFile,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the authenticated admin user\'s avatar by uploading an image file.

    This endpoint accepts multipart/form-data file uploads and stores the image in Cloudinary cloud storage.
    The system will automatically delete any previous avatar when a new one is uploaded.
    

    Admin users only need to have active accounts (no verification requirement).
    

    **Authentication Requirements:**

    - Admin user must be logged in (JWT token required)

    - Must have Admin or SuperAdmin role

    - Account must be active

    

    **Request Requirements:**

    - Content-Type: multipart/form-data

    - Form field name: "avatarFile"\n
    - Allowed file types: JPEG, PNG, GIF, WebP\n
    - Maximum file size: 1MB\n
    - File must be a valid image\n
    \n
    **Avatar Management:**\n
    - Previous avatar is automatically deleted from cloud storage\n
    - Images are stored in Cloudinary with automatic optimization\n
    - Secure HTTPS URLs are generated for accessing avatars\n
    - Smart quality optimization and format conversion\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with updated admin user information including new avatar\n
    - Returns 400 Bad Request for invalid file type, size, or missing file\n
    - Returns 401 Unauthorized for unauthenticated requests\n
    - Returns 403 Forbidden for non-admin users or inactive accounts\n
    - Returns 404 Not Found when admin user doesn\'t exist\n
    \n
    **Security Features:**\n
    - Only authenticated admin users can update their own avatar\n
    - Role-based authorization (Admin/SuperAdmin required)\n
    - Account activity verification (active accounts only)\n
    - File type and size validation\n
    - Automatic cleanup of old avatar files from cloud storage\n
    - Secure signed uploads to Cloudinary\n
    \n
    **Process Flow:**\n
    1. Validates admin authentication and account status\n
    2. Validates the uploaded file (type, size, format)\n
    3. Uploads the new avatar to Cloudinary cloud storage\n
    4. Deletes the previous avatar from cloud storage (if exists)\n
    5. Updates admin user record with new avatar reference\n
    6. Returns updated admin user information with avatar details\n
    \n
    **Example cURL Request:**\n
    ```
    curl -X PATCH https://api.example.com/api/v1/admin/profile/avatar \
      -H "Authorization: Bearer ADMIN_JWT_TOKEN" \
      -F "avatarFile=@/path/to/image.jpg"
    ```''',
      summary: 'Update admin user avatar via file upload',
      operationId: 'AdminUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me"],
      deprecated: false,
    ),
  });

  ///Retrieve the authenticated admin's roles and permissions
  Future<chopper.Response<AdminGetOwnRolesResponse>> AdminGetOwnRoles() {
    generatedMapping.putIfAbsent(
      AdminGetOwnRolesResponse,
      () => AdminGetOwnRolesResponse.fromJsonFactory,
    );

    return _AdminGetOwnRoles();
  }

  ///Retrieve the authenticated admin's roles and permissions
  @GET(path: '/api/v1/admin/me/roles')
  Future<chopper.Response<AdminGetOwnRolesResponse>> _AdminGetOwnRoles({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves all roles assigned to the currently authenticated admin user, each including
    its full set of permissions.

    

    This lightweight endpoint is intended for client applications that need to check or
    refresh the current admin\'s permissions without fetching the full profile, enabling
    role-based UI rendering and frontend access control.

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Admin or SuperAdmin role required

    

    **Returned Information:**

    - List of roles assigned to the admin

    - Each role includes its name, description, active status, and full permission list

    

    **Response Codes:**

    - Returns 200 OK with the admin\'s roles and permissions

    - Returns 401 Unauthorized for invalid or missing JWT token

    - Returns 403 Forbidden for insufficient permissions

    - Returns 404 Not Found if the user no longer exists
''',
      summary: 'Retrieve the authenticated admin\'s roles and permissions',
      operationId: 'AdminGetOwnRoles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me"],
      deprecated: false,
    ),
  });

  ///Retrieve all sessions for the authenticated admin user
  ///@param isActive
  Future<chopper.Response<AdminGetOwnSessionsResponse>> AdminGetOwnSessions({
    bool? isActive,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetOwnSessionsResponse,
      () => AdminGetOwnSessionsResponse.fromJsonFactory,
    );

    return _AdminGetOwnSessions(isActive: isActive);
  }

  ///Retrieve all sessions for the authenticated admin user
  ///@param isActive
  @GET(path: '/api/v1/admin/me/sessions')
  Future<chopper.Response<AdminGetOwnSessionsResponse>> _AdminGetOwnSessions({
    @Query('isActive') bool? isActive,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a list of all sessions (devices) for the currently authenticated admin user.
    Supports filtering by session status (active/inactive).
    

    This endpoint provides session management by:

    - Listing all user sessions across different devices

    - Showing device information (IP address, device name, user agent)

    - Indicating session status (active or expired)

    - Displaying session creation and expiration times

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    - User can only view their own sessions

    

    **Query Parameters:**

    - isActive (optional): Filter sessions by status

      - true: Only active sessions

      - false: Only expired/inactive sessions

      - null/omitted: All sessions

    

    **Use Cases:**

    - View all active login sessions

    - Identify unrecognized devices

    - Manage active sessions before revoking specific ones

    - Security audit of login history

    

    **Response Codes:**

    - Returns 200 OK with list of sessions

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    

    **Session Information Includes:**

    - Session ID for revoking specific sessions

    - IP address of the device

    - Device name and user agent string

    - Creation timestamp

    - Expiration timestamp

    - Active status (computed from expiration time and deletion status)''',
      summary: 'Retrieve all sessions for the authenticated admin user',
      operationId: 'AdminGetOwnSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me::sessions"],
      deprecated: false,
    ),
  });

  ///Retrieve a specific session by ID
  ///@param id
  Future<chopper.Response<AdminGetOwnSessionByIdResponse>>
  AdminGetOwnSessionById({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminGetOwnSessionByIdResponse,
      () => AdminGetOwnSessionByIdResponse.fromJsonFactory,
    );

    return _AdminGetOwnSessionById(id: id);
  }

  ///Retrieve a specific session by ID
  ///@param id
  @GET(path: '/api/v1/admin/me/sessions/{id}')
  Future<chopper.Response<AdminGetOwnSessionByIdResponse>>
  _AdminGetOwnSessionById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves detailed information about a specific session identified by its ID.
    The session must belong to the authenticated admin user.
    

    This endpoint provides session details by:

    - Validating the session ID from the route parameter

    - Verifying the session belongs to the authenticated admin user

    - Returning complete session metadata and status

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    - User can only view their own sessions

    

    **Use Cases:**

    - View detailed information about a specific session

    - Check session status before revoking

    - Verify device information for security auditing

    - Display session details in admin dashboard

    

    **Security Features:**

    - Session ownership verification prevents viewing other users\' sessions

    - Returns 404 (not 403) for unauthorized access to prevent session enumeration

    

    **Response Codes:**

    - Returns 200 OK with session details on success

    - Returns 400 Bad Request if session ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

    

    **Session Information Includes:**

    - Session ID

    - IP address of the device

    - Device name and user agent string

    - Creation timestamp

    - Expiration timestamp

    - Active status (computed from expiration time and deletion status)

    

    **Error Handling:**

    - NotFoundException (404): Session not found or doesn\'t belong to user''',
      summary: 'Retrieve a specific session by ID',
      operationId: 'AdminGetOwnSessionById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me::sessions"],
      deprecated: false,
    ),
  });

  ///Revoke a specific session (log out from a device)
  ///@param id
  Future<chopper.Response<AdminRevokeSessionResponse>> AdminRevokeSession({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminRevokeSessionResponse,
      () => AdminRevokeSessionResponse.fromJsonFactory,
    );

    return _AdminRevokeSession(id: id);
  }

  ///Revoke a specific session (log out from a device)
  ///@param id
  @POST(path: '/api/v1/admin/me/sessions/revoke/{id}', optionalBody: true)
  Future<chopper.Response<AdminRevokeSessionResponse>> _AdminRevokeSession({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Revokes (logs out from) a specific session identified by its ID.
    This allows admin users to remotely log out from other devices.
    

    This endpoint performs session revocation by:

    - Validating the session ID from the route parameter

    - Verifying the session belongs to the authenticated admin user

    - Soft deleting the session (marking it as inactive)

    - Invalidating all tokens associated with that session

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    - User can only revoke their own sessions

    

    **Use Cases:**

    - Log out from a specific device remotely

    - Remove unrecognized or suspicious sessions

    - Clean up old sessions after viewing session list

    - Security response to potential account compromise

    

    **Security Features:**

    - Session ownership verification prevents revoking other users\' sessions

    - Soft delete ensures session history is maintained for audit purposes

    - Immediate invalidation prevents further use of associated tokens

    

    **Response Codes:**

    - Returns 200 OK with success flag on successful revocation

    - Returns 400 Bad Request if session ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

    

    **Error Handling:**

    - NotFoundException (404): Session not found or doesn\'t belong to user

    - Attempting to revoke another user\'s session returns 404 (not 403) to prevent session enumeration attacks''',
      summary: 'Revoke a specific session (log out from a device)',
      operationId: 'AdminRevokeSession',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::me::sessions"],
      deprecated: false,
    ),
  });

  ///List orders awaiting payment
  ///@param pageIndex
  ///@param pageSize
  Future<chopper.Response<AdminGetPendingPaymentOrdersResponse>>
  AdminGetPendingPaymentOrders({int? pageIndex, int? pageSize}) {
    generatedMapping.putIfAbsent(
      AdminGetPendingPaymentOrdersResponse,
      () => AdminGetPendingPaymentOrdersResponse.fromJsonFactory,
    );

    return _AdminGetPendingPaymentOrders(
      pageIndex: pageIndex,
      pageSize: pageSize,
    );
  }

  ///List orders awaiting payment
  ///@param pageIndex
  ///@param pageSize
  @GET(path: '/api/v1/admin/orders/pending-payment')
  Future<chopper.Response<AdminGetPendingPaymentOrdersResponse>>
  _AdminGetPendingPaymentOrders({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns a paginated list of orders in PendingPayment status, ordered oldest-first
    so that staff can process payments in the order they were submitted.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with a paginated list of order summaries

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List orders awaiting payment',
      operationId: 'AdminGetPendingPaymentOrders',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Get the payment record of an order
  ///@param id
  Future<chopper.Response<AdminGetOrderPaymentResponse>> AdminGetOrderPayment({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetOrderPaymentResponse,
      () => AdminGetOrderPaymentResponse.fromJsonFactory,
    );

    return _AdminGetOrderPayment(id: id);
  }

  ///Get the payment record of an order
  ///@param id
  @GET(path: '/api/v1/admin/orders/{id}/payment')
  Future<chopper.Response<AdminGetOrderPaymentResponse>> _AdminGetOrderPayment({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the payment details for a specific order, including status, proof URL,
    payment method, and verification details.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the payment details

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the payment record does not exist
''',
      summary: 'Get the payment record of an order',
      operationId: 'AdminGetOrderPayment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Get a single order by ID
  ///@param id
  Future<chopper.Response<AdminGetOrderByIdResponse>> AdminGetOrderById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetOrderByIdResponse,
      () => AdminGetOrderByIdResponse.fromJsonFactory,
    );

    return _AdminGetOrderById(id: id);
  }

  ///Get a single order by ID
  ///@param id
  @GET(path: '/api/v1/admin/orders/{id}')
  Future<chopper.Response<AdminGetOrderByIdResponse>> _AdminGetOrderById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the full detail of a single order including its items, pricing tiers, and payment.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the order details

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order does not exist
''',
      summary: 'Get a single order by ID',
      operationId: 'AdminGetOrderById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///List all orders
  ///@param pageIndex
  ///@param pageSize
  ///@param status
  ///@param customerId
  Future<chopper.Response<AdminGetAllOrdersResponse>> AdminGetAllOrders({
    int? pageIndex,
    int? pageSize,
    Object? status,
    String? customerId,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllOrdersResponse,
      () => AdminGetAllOrdersResponse.fromJsonFactory,
    );

    return _AdminGetAllOrders(
      pageIndex: pageIndex,
      pageSize: pageSize,
      status: status,
      customerId: customerId,
    );
  }

  ///List all orders
  ///@param pageIndex
  ///@param pageSize
  ///@param status
  ///@param customerId
  @GET(path: '/api/v1/admin/orders')
  Future<chopper.Response<AdminGetAllOrdersResponse>> _AdminGetAllOrders({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('status') Object? status,
    @Query('customerId') String? customerId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns a paginated list of orders. Supports optional filtering by status and customer.
    Results are ordered by most recently created first.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with a paginated list of order summaries

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all orders',
      operationId: 'AdminGetAllOrders',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Create a new content order
  Future<chopper.Response<AdminCreateOrderResponse>> AdminCreateOrder({
    required AdminCreateOrderRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateOrderResponse,
      () => AdminCreateOrderResponse.fromJsonFactory,
    );

    return _AdminCreateOrder(body: body);
  }

  ///Create a new content order
  @POST(path: '/api/v1/admin/orders', optionalBody: true)
  Future<chopper.Response<AdminCreateOrderResponse>> _AdminCreateOrder({
    @Body() required AdminCreateOrderRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Opens a new content order for a B2B client. This is the first step in the revenue flow —
    before any commissioned article or video can be created, an order must exist that links the
    work to the customer who is paying for it.
    

    The order starts in Draft status with no items or total yet. The admin adds items and tiers
    before submitting. Optionally linking a package applies a pre-configured bundle deal.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with the order summary on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the customer or package does not exist
''',
      summary: 'Create a new content order',
      operationId: 'AdminCreateOrder',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Verify an order payment
  ///@param id
  Future<chopper.Response<AdminVerifyPaymentResponse>> AdminVerifyPayment({
    required String? id,
    required AdminVerifyPaymentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminVerifyPaymentResponse,
      () => AdminVerifyPaymentResponse.fromJsonFactory,
    );

    return _AdminVerifyPayment(id: id, body: body);
  }

  ///Verify an order payment
  ///@param id
  @PATCH(path: '/api/v1/admin/orders/{id}/payment/verify', optionalBody: true)
  Future<chopper.Response<AdminVerifyPaymentResponse>> _AdminVerifyPayment({
    @Path('id') required String? id,
    @Body() required AdminVerifyPaymentRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Verifies a PendingPayment order\'s payment, transitioning the order to Paid status.
    A receipt URL is recorded and social boost / featured promotion is stamped on any
    already-linked content items.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order or payment does not exist

    - Returns 409 Conflict if the payment has already been verified or rejected
''',
      summary: 'Verify an order payment',
      operationId: 'AdminVerifyPayment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Submit a draft order for payment
  ///@param id
  Future<chopper.Response<AdminSubmitOrderResponse>> AdminSubmitOrder({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminSubmitOrderResponse,
      () => AdminSubmitOrderResponse.fromJsonFactory,
    );

    return _AdminSubmitOrder(id: id);
  }

  ///Submit a draft order for payment
  ///@param id
  @PATCH(path: '/api/v1/admin/orders/{id}/submit', optionalBody: true)
  Future<chopper.Response<AdminSubmitOrderResponse>> _AdminSubmitOrder({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Submits a Draft order, transitioning it to PendingPayment status.
    A payment record is created automatically at the order\'s current total amount.
    

    The order must have at least one item, and each item must have at least one pricing tier attached.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the order is not in Draft status, or has no items with tiers

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order does not exist
''',
      summary: 'Submit a draft order for payment',
      operationId: 'AdminSubmitOrder',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Reject an order payment
  ///@param id
  Future<chopper.Response<AdminRejectPaymentResponse>> AdminRejectPayment({
    required String? id,
    required AdminRejectPaymentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminRejectPaymentResponse,
      () => AdminRejectPaymentResponse.fromJsonFactory,
    );

    return _AdminRejectPayment(id: id, body: body);
  }

  ///Reject an order payment
  ///@param id
  @PATCH(path: '/api/v1/admin/orders/{id}/payment/reject', optionalBody: true)
  Future<chopper.Response<AdminRejectPaymentResponse>> _AdminRejectPayment({
    @Path('id') required String? id,
    @Body() required AdminRejectPaymentRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Rejects an order\'s payment with optional explanatory notes.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the payment record does not exist

    - Returns 409 Conflict if the payment has already been verified or rejected
''',
      summary: 'Reject an order payment',
      operationId: 'AdminRejectPayment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Cancel a draft or pending-payment order
  ///@param id
  Future<chopper.Response<AdminCancelOrderResponse>> AdminCancelOrder({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminCancelOrderResponse,
      () => AdminCancelOrderResponse.fromJsonFactory,
    );

    return _AdminCancelOrder(id: id);
  }

  ///Cancel a draft or pending-payment order
  ///@param id
  @PATCH(path: '/api/v1/admin/orders/{id}/cancel', optionalBody: true)
  Future<chopper.Response<AdminCancelOrderResponse>> _AdminCancelOrder({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Cancels a Draft or PendingPayment order. Paid orders cannot be cancelled.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the order is Paid and cannot be cancelled

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order does not exist

    - Returns 409 Conflict if the order is already cancelled
''',
      summary: 'Cancel a draft or pending-payment order',
      operationId: 'AdminCancelOrder',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Attach a payment proof to an order
  ///@param id
  ///@param paymentMethod
  Future<chopper.Response<AdminAttachPaymentProofResponse>>
  AdminAttachPaymentProof({
    required String? id,
    required enums.ApiV1AdminOrdersIdPaymentProofPostPaymentMethod?
    paymentMethod,
    required MultipartFile file,
  }) {
    generatedMapping.putIfAbsent(
      AdminAttachPaymentProofResponse,
      () => AdminAttachPaymentProofResponse.fromJsonFactory,
    );

    return _AdminAttachPaymentProof(
      id: id,
      paymentMethod: paymentMethod?.value?.toString(),
      file: file,
    );
  }

  ///Attach a payment proof to an order
  ///@param id
  ///@param paymentMethod
  @POST(path: '/api/v1/admin/orders/{id}/payment/proof', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminAttachPaymentProofResponse>>
  _AdminAttachPaymentProof({
    @Path('id') required String? id,
    @Query('paymentMethod') required String? paymentMethod,
    @PartFile() required MultipartFile file,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Uploads the customer\'s payment receipt image to Cloudinary and attaches the resulting
    URL together with the payment method to the order\'s payment record.
    Accepts a multipart/form-data request with the image file and payment method.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the payment record does not exist
''',
      summary: 'Attach a payment proof to an order',
      operationId: 'AdminAttachPaymentProof',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Add a content item to an order
  ///@param id
  Future<chopper.Response<AdminAddOrderItemResponse>> AdminAddOrderItem({
    required String? id,
    required AdminAddOrderItemRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAddOrderItemResponse,
      () => AdminAddOrderItemResponse.fromJsonFactory,
    );

    return _AdminAddOrderItem(id: id, body: body);
  }

  ///Add a content item to an order
  ///@param id
  @POST(path: '/api/v1/admin/orders/{id}/items', optionalBody: true)
  Future<chopper.Response<AdminAddOrderItemResponse>> _AdminAddOrderItem({
    @Path('id') required String? id,
    @Body() required AdminAddOrderItemRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Adds one commissioned content item to a Draft order. Each item specifies the category,
    the kind of content (Article or Video), and optional promotion options.
    

    The promotion level price is snapshotted at this moment so the client\'s quote is locked
    even if the admin adjusts prices later.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with the order item details on success

    - Returns 400 Bad Request if the order is not in Draft status or validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order, category, or promotion level does not exist
''',
      summary: 'Add a content item to an order',
      operationId: 'AdminAddOrderItem',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Attach a pricing tier to an order item
  ///@param id
  ///@param itemId
  Future<chopper.Response<AdminAddItemTierResponse>> AdminAddItemTier({
    required String? id,
    required String? itemId,
    required AdminAddItemTierRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAddItemTierResponse,
      () => AdminAddItemTierResponse.fromJsonFactory,
    );

    return _AdminAddItemTier(id: id, itemId: itemId, body: body);
  }

  ///Attach a pricing tier to an order item
  ///@param id
  ///@param itemId
  @POST(
    path: '/api/v1/admin/orders/{id}/items/{itemId}/tiers',
    optionalBody: true,
  )
  Future<chopper.Response<AdminAddItemTierResponse>> _AdminAddItemTier({
    @Path('id') required String? id,
    @Path('itemId') required String? itemId,
    @Body() required AdminAddItemTierRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Attaches a pricing tier snapshot to a specific order item in a Draft order.
    The category pricing is snapshotted at this moment so the client\'s quote is locked
    even if the admin adjusts prices later.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with the tier snapshot details on success

    - Returns 400 Bad Request if the order is not in Draft status or validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the order, item, or pricing tier does not exist
''',
      summary: 'Attach a pricing tier to an order item',
      operationId: 'AdminAddItemTier',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::orders"],
      deprecated: false,
    ),
  });

  ///Get a package by ID
  ///@param id
  Future<chopper.Response<AdminGetPackageByIdResponse>> AdminGetPackageById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetPackageByIdResponse,
      () => AdminGetPackageByIdResponse.fromJsonFactory,
    );

    return _AdminGetPackageById(id: id);
  }

  ///Get a package by ID
  ///@param id
  @GET(path: '/api/v1/admin/packages/{id}')
  Future<chopper.Response<AdminGetPackageByIdResponse>> _AdminGetPackageById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the full details of a single content package, including all its slots and their category assignments.
    

    Used by the admin when setting up an order — they need to see exactly what slots
    are in a package before adding it to a client\'s order.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with package details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the package does not exist
''',
      summary: 'Get a package by ID',
      operationId: 'AdminGetPackageById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///List all packages
  ///@param pageIndex
  ///@param pageSize
  ///@param isActive
  Future<chopper.Response<AdminGetAllPackagesResponse>> AdminGetAllPackages({
    int? pageIndex,
    int? pageSize,
    bool? isActive,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllPackagesResponse,
      () => AdminGetAllPackagesResponse.fromJsonFactory,
    );

    return _AdminGetAllPackages(
      pageIndex: pageIndex,
      pageSize: pageSize,
      isActive: isActive,
    );
  }

  ///List all packages
  ///@param pageIndex
  ///@param pageSize
  ///@param isActive
  @GET(path: '/api/v1/admin/packages')
  Future<chopper.Response<AdminGetAllPackagesResponse>> _AdminGetAllPackages({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('isActive') bool? isActive,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the paginated list of all content packages with their slot compositions.
    

    Supports filtering by active status to show only available packages for new orders
    or to review inactive ones for reactivation.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated package list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all packages',
      operationId: 'AdminGetAllPackages',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Create a package
  Future<chopper.Response<AdminCreatePackageResponse>> AdminCreatePackage({
    required AdminCreatePackageRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreatePackageResponse,
      () => AdminCreatePackageResponse.fromJsonFactory,
    );

    return _AdminCreatePackage(body: body);
  }

  ///Create a package
  @POST(path: '/api/v1/admin/packages', optionalBody: true)
  Future<chopper.Response<AdminCreatePackageResponse>> _AdminCreatePackage({
    @Body() required AdminCreatePackageRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Creates a new content package with a flat price.
    

    A package groups multiple content slots into a named bundle deal (e.g., "Artist Starter Pack").
    Slots must be added separately after the package is created.
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with the created package details on success\n
    - Returns 400 Bad Request if the request body is invalid\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n''',
      summary: 'Create a package',
      operationId: 'AdminCreatePackage',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Remove a slot from a package
  ///@param id
  ///@param slotId
  Future<chopper.Response<AdminRemovePackageSlotResponse>>
  AdminRemovePackageSlot({required String? id, required String? slotId}) {
    generatedMapping.putIfAbsent(
      AdminRemovePackageSlotResponse,
      () => AdminRemovePackageSlotResponse.fromJsonFactory,
    );

    return _AdminRemovePackageSlot(id: id, slotId: slotId);
  }

  ///Remove a slot from a package
  ///@param id
  ///@param slotId
  @DELETE(path: '/api/v1/admin/packages/{id}/slots/{slotId}')
  Future<chopper.Response<AdminRemovePackageSlotResponse>>
  _AdminRemovePackageSlot({
    @Path('id') required String? id,
    @Path('slotId') required String? slotId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Permanently removes a slot from the specified package.
    

    This operation cannot be undone. The slot and its category assignment will be deleted.
    Existing orders that referenced this package before the slot was removed are not affected.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the package or slot does not exist
''',
      summary: 'Remove a slot from a package',
      operationId: 'AdminRemovePackageSlot',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Deactivate a package
  ///@param id
  Future<chopper.Response<AdminDeactivatePackageResponse>>
  AdminDeactivatePackage({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivatePackageResponse,
      () => AdminDeactivatePackageResponse.fromJsonFactory,
    );

    return _AdminDeactivatePackage(id: id);
  }

  ///Deactivate a package
  ///@param id
  @PATCH(path: '/api/v1/admin/packages/{id}/deactivate', optionalBody: true)
  Future<chopper.Response<AdminDeactivatePackageResponse>>
  _AdminDeactivatePackage({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a package, removing it from available bundles for new orders.
    

    Existing orders that reference this package are not affected.
    The package can be restored later using the activate endpoint.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated package details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the package does not exist

    - Returns 409 Conflict if the package is already inactive
''',
      summary: 'Deactivate a package',
      operationId: 'AdminDeactivatePackage',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Add a slot to a package
  ///@param id
  Future<chopper.Response<AdminAddPackageSlotResponse>> AdminAddPackageSlot({
    required String? id,
    required AdminAddPackageSlotRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAddPackageSlotResponse,
      () => AdminAddPackageSlotResponse.fromJsonFactory,
    );

    return _AdminAddPackageSlot(id: id, body: body);
  }

  ///Add a slot to a package
  ///@param id
  @POST(path: '/api/v1/admin/packages/{id}/slots', optionalBody: true)
  Future<chopper.Response<AdminAddPackageSlotResponse>> _AdminAddPackageSlot({
    @Path('id') required String? id,
    @Body() required AdminAddPackageSlotRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Adds a new content slot to an existing package.
    

    A slot defines what content must be delivered as part of the package.
    Specify a category to lock the slot to a specific type of content,
    or leave the category empty to create an open slot where the client may choose any category.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with the updated package details on success

    - Returns 400 Bad Request if the request body is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the package or category does not exist
''',
      summary: 'Add a slot to a package',
      operationId: 'AdminAddPackageSlot',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Activate a package
  ///@param id
  Future<chopper.Response<AdminActivatePackageResponse>> AdminActivatePackage({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminActivatePackageResponse,
      () => AdminActivatePackageResponse.fromJsonFactory,
    );

    return _AdminActivatePackage(id: id);
  }

  ///Activate a package
  ///@param id
  @PATCH(path: '/api/v1/admin/packages/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivatePackageResponse>> _AdminActivatePackage({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a package, making it available for new orders.
    

    An inactive package cannot be added to new client orders.
    This operation restores it to active status.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated package details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the package does not exist

    - Returns 409 Conflict if the package is already active
''',
      summary: 'Activate a package',
      operationId: 'AdminActivatePackage',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::packages"],
      deprecated: false,
    ),
  });

  ///Retrieve a permission by ID
  ///@param id
  Future<chopper.Response<AdminGetPermissionByIdResponse>>
  AdminGetPermissionById({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminGetPermissionByIdResponse,
      () => AdminGetPermissionByIdResponse.fromJsonFactory,
    );

    return _AdminGetPermissionById(id: id);
  }

  ///Retrieve a permission by ID
  ///@param id
  @GET(path: '/api/v1/admin/permissions/{id}')
  Future<chopper.Response<AdminGetPermissionByIdResponse>>
  _AdminGetPermissionById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves detailed information about a specific permission identified by its ID.
    

    This endpoint provides permission details by:

    - Validating the permission ID from the route parameter

    - Fetching the permission data

    - Returning complete permission metadata

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    - Permission status (IsActive, IsDeleted, DeletedAt)

    

    **Response Codes:**

    - Returns 200 OK with permission details on success

    - Returns 400 Bad Request if permission ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if permission doesn\'t exist

    

    **Error Handling:**

    - NotFoundException (404): Permission not found with the specified ID''',
      summary: 'Retrieve a permission by ID',
      operationId: 'AdminGetPermissionById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Update an existing permission
  ///@param id
  Future<chopper.Response<AdminUpdatePermissionResponse>>
  AdminUpdatePermission({
    required String? id,
    required AdminUpdatePermissionRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdatePermissionResponse,
      () => AdminUpdatePermissionResponse.fromJsonFactory,
    );

    return _AdminUpdatePermission(id: id, body: body);
  }

  ///Update an existing permission
  ///@param id
  @PUT(path: '/api/v1/admin/permissions/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdatePermissionResponse>>
  _AdminUpdatePermission({
    @Path('id') required String? id,
    @Body() required AdminUpdatePermissionRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates an existing permission\'s resource, action, and/or description.
    Only provided fields will be updated (partial update supported).
    

    This endpoint updates a permission by:

    - Validating the permission ID and update data

    - Checking that the new resource/action combination doesn\'t conflict with existing permissions

    - Updating only the fields that are provided

    - Returning the updated permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Request Body:**

    - resource: The new resource name (optional, max 15 characters)

    - action: The new action name (optional, max 15 characters)

    - description: The new description (optional, max 300 characters)

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    - Permission status (IsActive, IsDeleted)

    

    **Response Codes:**

    - Returns 200 OK with updated permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    - Returns 409 Conflict if new resource/action combination already exists

    

    **Error Handling:**

    - ValidationException (400): Invalid resource, action, or description format

    - NotFoundException (404): Permission not found with the specified ID

    - ConflictException (409): Permission with the new resource/action already exists''',
      summary: 'Update an existing permission',
      operationId: 'AdminUpdatePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Soft delete a permission
  ///@param id
  Future<chopper.Response<AdminSoftDeletePermissionResponse>>
  AdminSoftDeletePermission({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminSoftDeletePermissionResponse,
      () => AdminSoftDeletePermissionResponse.fromJsonFactory,
    );

    return _AdminSoftDeletePermission(id: id);
  }

  ///Soft delete a permission
  ///@param id
  @DELETE(path: '/api/v1/admin/permissions/{id}')
  Future<chopper.Response<AdminSoftDeletePermissionResponse>>
  _AdminSoftDeletePermission({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Soft deletes a permission, marking it as deleted without permanent removal.
    

    This endpoint soft deletes a permission by:

    - Validating the permission ID exists

    - Checking that the permission is not already deleted

    - Setting the permission\'s IsDeleted status to true and IsActive to false

    - Recording the deletion timestamp

    - Returning the updated permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Remove a permission while preserving the ability to restore it

    - Hide permission from active listings

    - Maintain audit trail of deleted permissions

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    

    **Response Codes:**

    - Returns 200 OK with soft deleted permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    - Returns 409 Conflict if permission is already deleted

    

    **Error Handling:**

    - ValidationException (400): Invalid permission ID format

    - NotFoundException (404): Permission not found with the specified ID

    - ConflictException (409): Permission is already deleted''',
      summary: 'Soft delete a permission',
      operationId: 'AdminSoftDeletePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Retrieve all permissions with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  ///@param isDeleted
  Future<chopper.Response<AdminGetAllPermissionsResponse>>
  AdminGetAllPermissions({
    int? pageIndex,
    int? pageSize,
    String? search,
    bool? isActive,
    bool? isDeleted,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllPermissionsResponse,
      () => AdminGetAllPermissionsResponse.fromJsonFactory,
    );

    return _AdminGetAllPermissions(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      isActive: isActive,
      isDeleted: isDeleted,
    );
  }

  ///Retrieve all permissions with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  ///@param isDeleted
  @GET(path: '/api/v1/admin/permissions')
  Future<chopper.Response<AdminGetAllPermissionsResponse>>
  _AdminGetAllPermissions({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('isActive') bool? isActive,
    @Query('isDeleted') bool? isDeleted,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of permissions with optional search and filtering.
    

    This endpoint provides permission listing by:

    - Supporting fuzzy search across Resource, Action, and Description (case-insensitive)

    - Filtering by active status (IsActive)

    - Filtering by deleted status (IsDeleted)

    - Paginating results for efficient data retrieval

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Query Parameters:**

    - pageIndex: Zero-based page index (default: 0)

    - pageSize: Number of items per page (default: 10)

    - search: Fuzzy search term for Resource, Action, and Description

    - isActive: Filter by active status (true/false)

    - isDeleted: Filter by deleted status (true/false)

    

    **Use Cases:**

    - List all available permissions in the system

    - Search for specific permissions by resource, action, or description

    - Filter permissions by status for administrative purposes

    - Paginate through large permission sets

    

    **Response Includes:**

    - Paginated list of permissions with ID, resource, action, description, and status

    - Total count for pagination

    - Current page index and page size

    

    **Response Codes:**

    - Returns 200 OK with paginated permission list on success

    - Returns 400 Bad Request if query parameters are invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions''',
      summary: 'Retrieve all permissions with pagination and filtering',
      operationId: 'AdminGetAllPermissions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Create a new permission
  Future<chopper.Response<AdminCreatePermissionResponse>>
  AdminCreatePermission({required AdminCreatePermissionRequest? body}) {
    generatedMapping.putIfAbsent(
      AdminCreatePermissionResponse,
      () => AdminCreatePermissionResponse.fromJsonFactory,
    );

    return _AdminCreatePermission(body: body);
  }

  ///Create a new permission
  @POST(path: '/api/v1/admin/permissions', optionalBody: true)
  Future<chopper.Response<AdminCreatePermissionResponse>>
  _AdminCreatePermission({
    @Body() required AdminCreatePermissionRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new permission with the specified resource, action, and description.
    

    This endpoint creates a permission by:

    - Validating the resource, action, and description

    - Checking that no permission with the same resource and action already exists

    - Creating the permission with active status

    - Returning the created permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Request Body:**

    - resource: The resource name (max 15 characters)

    - action: The action name (max 15 characters)

    - description: A description of the permission\'s purpose (max 300 characters)

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    - Permission status (IsActive, IsDeleted)

    

    **Response Codes:**

    - Returns 201 Created with permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 409 Conflict if permission with resource and action already exists

    

    **Error Handling:**

    - ValidationException (400): Invalid resource, action, or description format

    - ConflictException (409): Permission with the same resource and action already exists''',
      summary: 'Create a new permission',
      operationId: 'AdminCreatePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Restore a soft-deleted permission
  ///@param id
  Future<chopper.Response<AdminRestorePermissionResponse>>
  AdminRestorePermission({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminRestorePermissionResponse,
      () => AdminRestorePermissionResponse.fromJsonFactory,
    );

    return _AdminRestorePermission(id: id);
  }

  ///Restore a soft-deleted permission
  ///@param id
  @PATCH(path: '/api/v1/admin/permissions/{id}/restore', optionalBody: true)
  Future<chopper.Response<AdminRestorePermissionResponse>>
  _AdminRestorePermission({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Restores a soft-deleted permission, making it available again.
    

    This endpoint restores a permission by:

    - Validating the permission ID exists

    - Checking that the permission is currently soft-deleted

    - Setting the permission\'s IsDeleted status to false

    - Clearing the deletion timestamp

    - Returning the restored permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Recover accidentally deleted permissions

    - Reinstate previously removed permissions

    

    **Note:**

    - The restored permission will remain inactive (IsActive = false)

    - Use the activate endpoint to make the permission usable again

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    

    **Response Codes:**

    - Returns 200 OK with restored permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    - Returns 409 Conflict if permission is not deleted

    

    **Error Handling:**

    - ValidationException (400): Invalid permission ID format

    - NotFoundException (404): Permission not found with the specified ID

    - ConflictException (409): Permission is not deleted and cannot be restored''',
      summary: 'Restore a soft-deleted permission',
      operationId: 'AdminRestorePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Permanently delete a permission
  ///@param id
  Future<chopper.Response<AdminHardDeletePermissionResponse>>
  AdminHardDeletePermission({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminHardDeletePermissionResponse,
      () => AdminHardDeletePermissionResponse.fromJsonFactory,
    );

    return _AdminHardDeletePermission(id: id);
  }

  ///Permanently delete a permission
  ///@param id
  @DELETE(path: '/api/v1/admin/permissions/{id}/hard')
  Future<chopper.Response<AdminHardDeletePermissionResponse>>
  _AdminHardDeletePermission({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes a permission from the system. This action cannot be undone.
    

    This endpoint hard deletes a permission by:

    - Validating the permission ID exists

    - Permanently removing the permission from the database

    - Cascading deletion to role-permission associations

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Permanently remove obsolete permissions

    - Clean up test or temporary permissions

    

    **Response Codes:**

    - Returns 200 OK on successful deletion

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    

    **Error Handling:**

    - ValidationException (400): Invalid permission ID format

    - NotFoundException (404): Permission not found with the specified ID''',
      summary: 'Permanently delete a permission',
      operationId: 'AdminHardDeletePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Deactivate a permission
  ///@param id
  Future<chopper.Response<AdminDeactivatePermissionResponse>>
  AdminDeactivatePermission({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivatePermissionResponse,
      () => AdminDeactivatePermissionResponse.fromJsonFactory,
    );

    return _AdminDeactivatePermission(id: id);
  }

  ///Deactivate a permission
  ///@param id
  @PATCH(path: '/api/v1/admin/permissions/{id}/deactivate', optionalBody: true)
  Future<chopper.Response<AdminDeactivatePermissionResponse>>
  _AdminDeactivatePermission({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a permission, preventing it from being assigned to roles.
    

    This endpoint deactivates a permission by:

    - Validating the permission ID exists

    - Checking that the permission is not already inactive

    - Setting the permission\'s IsActive status to false

    - Returning the updated permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Temporarily disable a permission without deleting it

    - Prevent new role assignments of the permission

    - Existing role assignments remain unaffected

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    

    **Response Codes:**

    - Returns 200 OK with deactivated permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    - Returns 409 Conflict if permission is already inactive

    

    **Error Handling:**

    - ValidationException (400): Invalid permission ID format

    - NotFoundException (404): Permission not found with the specified ID

    - ConflictException (409): Permission is already inactive''',
      summary: 'Deactivate a permission',
      operationId: 'AdminDeactivatePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///Activate a permission
  ///@param id
  Future<chopper.Response<AdminActivatePermissionResponse>>
  AdminActivatePermission({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminActivatePermissionResponse,
      () => AdminActivatePermissionResponse.fromJsonFactory,
    );

    return _AdminActivatePermission(id: id);
  }

  ///Activate a permission
  ///@param id
  @PATCH(path: '/api/v1/admin/permissions/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivatePermissionResponse>>
  _AdminActivatePermission({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a permission, allowing it to be assigned to roles.
    

    This endpoint activates a permission by:

    - Validating the permission ID exists

    - Checking that the permission is not already active

    - Setting the permission\'s IsActive status to true

    - Returning the updated permission details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Re-enable a previously deactivated permission

    - Make a permission available for assignment to roles

    

    **Response Includes:**

    - Permission ID, resource, action, and description

    

    **Response Codes:**

    - Returns 200 OK with activated permission details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if permission doesn\'t exist

    - Returns 409 Conflict if permission is already active

    

    **Error Handling:**

    - ValidationException (400): Invalid permission ID format

    - NotFoundException (404): Permission not found with the specified ID

    - ConflictException (409): Permission is already active''',
      summary: 'Activate a permission',
      operationId: 'AdminActivatePermission',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::permissions"],
      deprecated: false,
    ),
  });

  ///List all pricing tiers
  Future<chopper.Response<AdminGetAllPricingTiersResponse>>
  AdminGetAllPricingTiers() {
    generatedMapping.putIfAbsent(
      AdminGetAllPricingTiersResponse,
      () => AdminGetAllPricingTiersResponse.fromJsonFactory,
    );

    return _AdminGetAllPricingTiers();
  }

  ///List all pricing tiers
  @GET(path: '/api/v1/admin/pricing-tiers')
  Future<chopper.Response<AdminGetAllPricingTiersResponse>>
  _AdminGetAllPricingTiers({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the complete list of pricing tiers available for category pricing configuration.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the list of pricing tiers on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all pricing tiers',
      operationId: 'AdminGetAllPricingTiers',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::pricing-tiers"],
      deprecated: false,
    ),
  });

  ///Create a new pricing tier
  Future<chopper.Response<AdminCreatePricingTierResponse>> CreatePricingTier({
    required AdminCreatePricingTierRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreatePricingTierResponse,
      () => AdminCreatePricingTierResponse.fromJsonFactory,
    );

    return _CreatePricingTier(body: body);
  }

  ///Create a new pricing tier
  @POST(path: '/api/v1/admin/pricing-tiers', optionalBody: true)
  Future<chopper.Response<AdminCreatePricingTierResponse>> _CreatePricingTier({
    @Body() required AdminCreatePricingTierRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new add-on service fee tier (e.g. "base_upload", "social_boost").
    \n
    This endpoint creates a pricing tier by:\n
    - Validating the tier name and optional description\n
    - Checking that no pricing tier with the same name already exists\n
    - Creating the tier with active status\n
    - Returning the created pricing tier details\n
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Request Body:**\n
    - name: The unique name for the pricing tier (max 40 characters)\n
    - description: Optional description of what this tier covers (max 200 characters)\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with pricing tier details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 409 Conflict if pricing tier name already exists\n''',
      summary: 'Create a new pricing tier',
      operationId: 'CreatePricingTier',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::pricing-tiers"],
      deprecated: false,
    ),
  });

  ///Update a pricing tier
  ///@param id
  Future<chopper.Response<AdminUpdatePricingTierResponse>>
  AdminUpdatePricingTier({
    required String? id,
    required AdminUpdatePricingTierRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdatePricingTierResponse,
      () => AdminUpdatePricingTierResponse.fromJsonFactory,
    );

    return _AdminUpdatePricingTier(id: id, body: body);
  }

  ///Update a pricing tier
  ///@param id
  @PUT(path: '/api/v1/admin/pricing-tiers/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdatePricingTierResponse>>
  _AdminUpdatePricingTier({
    @Path('id') required String? id,
    @Body() required AdminUpdatePricingTierRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the name and description of an existing pricing tier.
    

    Price changes on existing order snapshots are unaffected — only new orders will reflect the change.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated pricing tier details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the pricing tier does not exist

    - Returns 409 Conflict if the new name is already taken
''',
      summary: 'Update a pricing tier',
      operationId: 'AdminUpdatePricingTier',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::pricing-tiers"],
      deprecated: false,
    ),
  });

  ///Deactivate a pricing tier
  ///@param id
  Future<chopper.Response<AdminDeactivatePricingTierResponse>>
  AdminDeactivatePricingTier({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivatePricingTierResponse,
      () => AdminDeactivatePricingTierResponse.fromJsonFactory,
    );

    return _AdminDeactivatePricingTier(id: id);
  }

  ///Deactivate a pricing tier
  ///@param id
  @PATCH(
    path: '/api/v1/admin/pricing-tiers/{id}/deactivate',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDeactivatePricingTierResponse>>
  _AdminDeactivatePricingTier({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a pricing tier, preventing it from being assigned to new content.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the pricing tier does not exist

    - Returns 409 Conflict if the pricing tier is already inactive
''',
      summary: 'Deactivate a pricing tier',
      operationId: 'AdminDeactivatePricingTier',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::pricing-tiers"],
      deprecated: false,
    ),
  });

  ///Activate a pricing tier
  ///@param id
  Future<chopper.Response<AdminActivatePricingTierResponse>>
  ActivatePricingTier({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminActivatePricingTierResponse,
      () => AdminActivatePricingTierResponse.fromJsonFactory,
    );

    return _ActivatePricingTier(id: id);
  }

  ///Activate a pricing tier
  ///@param id
  @PATCH(path: '/api/v1/admin/pricing-tiers/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivatePricingTierResponse>>
  _ActivatePricingTier({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a pricing tier, making it available for assignment to content.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the pricing tier does not exist

    - Returns 409 Conflict if the pricing tier is already active
''',
      summary: 'Activate a pricing tier',
      operationId: 'ActivatePricingTier',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::pricing-tiers"],
      deprecated: false,
    ),
  });

  ///List all promotion levels
  Future<chopper.Response<AdminGetAllPromotionLevelsResponse>>
  AdminGetAllPromotionLevels() {
    generatedMapping.putIfAbsent(
      AdminGetAllPromotionLevelsResponse,
      () => AdminGetAllPromotionLevelsResponse.fromJsonFactory,
    );

    return _AdminGetAllPromotionLevels();
  }

  ///List all promotion levels
  @GET(path: '/api/v1/admin/promotion-levels')
  Future<chopper.Response<AdminGetAllPromotionLevelsResponse>>
  _AdminGetAllPromotionLevels({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the complete list of promotion levels available for order upsells.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with the list of promotion levels on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all promotion levels',
      operationId: 'AdminGetAllPromotionLevels',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Create a new promotion level
  Future<chopper.Response<AdminCreatePromotionLevelResponse>>
  AdminCreatePromotionLevel({required AdminCreatePromotionLevelRequest? body}) {
    generatedMapping.putIfAbsent(
      AdminCreatePromotionLevelResponse,
      () => AdminCreatePromotionLevelResponse.fromJsonFactory,
    );

    return _AdminCreatePromotionLevel(body: body);
  }

  ///Create a new promotion level
  @POST(path: '/api/v1/admin/promotion-levels', optionalBody: true)
  Future<chopper.Response<AdminCreatePromotionLevelResponse>>
  _AdminCreatePromotionLevel({
    @Body() required AdminCreatePromotionLevelRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new homepage placement upgrade option (e.g. "Featured — 7 days").
    \n
    This endpoint creates a promotion level by:\n
    - Validating the name, duration, and price\n
    - Checking that no promotion level with the same name already exists\n
    - Creating the level with active status\n
    - Returning the created promotion level details\n
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have SuperAdmin role\n
    \n
    **Request Body:**\n
    - name: The unique display name for the promotion level (max 40 characters)\n
    - durationDays: The homepage placement duration in days (must be > 0)\n
    - priceUsd: The price in USD (must be >= 0)\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with promotion level details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks SuperAdmin role\n
    - Returns 409 Conflict if promotion level name already exists\n''',
      summary: 'Create a new promotion level',
      operationId: 'AdminCreatePromotionLevel',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Update a promotion level
  ///@param id
  Future<chopper.Response<AdminUpdatePromotionLevelResponse>>
  AdminUpdatePromotionLevel({
    required String? id,
    required AdminUpdatePromotionLevelRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdatePromotionLevelResponse,
      () => AdminUpdatePromotionLevelResponse.fromJsonFactory,
    );

    return _AdminUpdatePromotionLevel(id: id, body: body);
  }

  ///Update a promotion level
  ///@param id
  @PUT(path: '/api/v1/admin/promotion-levels/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdatePromotionLevelResponse>>
  _AdminUpdatePromotionLevel({
    @Path('id') required String? id,
    @Body() required AdminUpdatePromotionLevelRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the name, duration, and price of an existing promotion level.
    

    Price changes on existing order snapshots are unaffected — only new orders will reflect the change.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated promotion level details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the promotion level does not exist

    - Returns 409 Conflict if the new name is already taken
''',
      summary: 'Update a promotion level',
      operationId: 'AdminUpdatePromotionLevel',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Deactivate a promotion level
  ///@param id
  Future<chopper.Response<AdminDeactivatePromotionLevelResponse>>
  AdminDeactivatePromotionLevel({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivatePromotionLevelResponse,
      () => AdminDeactivatePromotionLevelResponse.fromJsonFactory,
    );

    return _AdminDeactivatePromotionLevel(id: id);
  }

  ///Deactivate a promotion level
  ///@param id
  @PATCH(
    path: '/api/v1/admin/promotion-levels/{id}/deactivate',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDeactivatePromotionLevelResponse>>
  _AdminDeactivatePromotionLevel({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a promotion level, preventing it from being assigned to new content.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the promotion level does not exist

    - Returns 409 Conflict if the promotion level is already inactive
''',
      summary: 'Deactivate a promotion level',
      operationId: 'AdminDeactivatePromotionLevel',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Activate a promotion level
  ///@param id
  Future<chopper.Response<AdminActivatePromotionLevelResponse>>
  ActivatePromotionLevel({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminActivatePromotionLevelResponse,
      () => AdminActivatePromotionLevelResponse.fromJsonFactory,
    );

    return _ActivatePromotionLevel(id: id);
  }

  ///Activate a promotion level
  ///@param id
  @PATCH(
    path: '/api/v1/admin/promotion-levels/{id}/activate',
    optionalBody: true,
  )
  Future<chopper.Response<AdminActivatePromotionLevelResponse>>
  _ActivatePromotionLevel({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Activates a promotion level, making it available for assignment to content.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the promotion level does not exist

    - Returns 409 Conflict if the promotion level is already active
''',
      summary: 'Activate a promotion level',
      operationId: 'ActivatePromotionLevel',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Retrieve a role by ID with its permissions
  ///@param id
  Future<chopper.Response<AdminGetRoleByIdResponse>> AdminGetRoleById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetRoleByIdResponse,
      () => AdminGetRoleByIdResponse.fromJsonFactory,
    );

    return _AdminGetRoleById(id: id);
  }

  ///Retrieve a role by ID with its permissions
  ///@param id
  @GET(path: '/api/v1/admin/roles/{id}')
  Future<chopper.Response<AdminGetRoleByIdResponse>> _AdminGetRoleById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves detailed information about a specific role identified by its ID,
    including all permissions assigned to the role.
    

    This endpoint provides role details by:

    - Validating the role ID from the route parameter

    - Fetching the role with all associated permissions

    - Returning complete role metadata and permission list

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Use Cases:**

    - View detailed information about a specific role

    - Review permissions assigned to a role

    - Audit role configuration

    - Display role details in admin dashboard

    

    **Response Includes:**

    - Role ID, name, and description

    - Role status (IsActive, IsDeleted, DeletedAt)

    - List of all permissions assigned to the role

    - Each permission includes resource, action, and description

    

    **Response Codes:**

    - Returns 200 OK with role details and permissions on success

    - Returns 400 Bad Request if role ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if role doesn\'t exist

    

    **Error Handling:**

    - NotFoundException (404): Role not found with the specified ID''',
      summary: 'Retrieve a role by ID with its permissions',
      operationId: 'AdminGetRoleById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Update an existing role
  ///@param id
  Future<chopper.Response<AdminUpdateRoleResponse>> AdminUpdateRole({
    required String? id,
    required AdminUpdateRoleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateRoleResponse,
      () => AdminUpdateRoleResponse.fromJsonFactory,
    );

    return _AdminUpdateRole(id: id, body: body);
  }

  ///Update an existing role
  ///@param id
  @PUT(path: '/api/v1/admin/roles/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateRoleResponse>> _AdminUpdateRole({
    @Path('id') required String? id,
    @Body() required AdminUpdateRoleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Updates an existing role\'s name and/or description.
    Only provided fields will be updated (partial update supported).
    

    This endpoint updates a role by:

    - Validating the role ID and update data

    - Checking that the new name doesn\'t conflict with existing roles

    - Updating only the fields that are provided

    - Returning the updated role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Rename an existing role

    - Update a role\'s description

    - Modify role details without affecting permissions

    

    **Request Body:**

    - name: The new name for the role (optional, max 20 characters)

    - description: The new description for the role (optional, max 300 characters)

    

    **Response Includes:**

    - Role ID, name, and description

    - Role status (IsActive, IsDeleted)

    

    **Response Codes:**

    - Returns 200 OK with updated role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if new role name already exists

    

    **Error Handling:**

    - ValidationException (400): Invalid name or description format

    - NotFoundException (404): Role not found with the specified ID

    - ConflictException (409): Role with the new name already exists''',
      summary: 'Update an existing role',
      operationId: 'AdminUpdateRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Soft delete a role
  ///@param id
  Future<chopper.Response<AdminSoftDeleteRoleResponse>> AdminSoftDeleteRole({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminSoftDeleteRoleResponse,
      () => AdminSoftDeleteRoleResponse.fromJsonFactory,
    );

    return _AdminSoftDeleteRole(id: id);
  }

  ///Soft delete a role
  ///@param id
  @DELETE(path: '/api/v1/admin/roles/{id}')
  Future<chopper.Response<AdminSoftDeleteRoleResponse>> _AdminSoftDeleteRole({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Soft deletes a role, marking it as deleted without permanent removal.
    

    This endpoint soft deletes a role by:

    - Validating the role ID exists

    - Checking that the role is not already deleted

    - Setting the role\'s IsDeleted status to true and IsActive to false

    - Recording the deletion timestamp

    - Returning the updated role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Remove a role while preserving the ability to restore it

    - Hide role from active listings

    - Maintain audit trail of deleted roles

    

    **Response Includes:**

    - Role ID, name, and description

    

    **Response Codes:**

    - Returns 200 OK with soft deleted role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if role is already deleted

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID format

    - NotFoundException (404): Role not found with the specified ID

    - ConflictException (409): Role is already deleted''',
      summary: 'Soft delete a role',
      operationId: 'AdminSoftDeleteRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Retrieve all roles with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  ///@param isDeleted
  Future<chopper.Response<AdminGetAllRolesResponse>> AdminGetAllRoles({
    int? pageIndex,
    int? pageSize,
    String? search,
    bool? isActive,
    bool? isDeleted,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllRolesResponse,
      () => AdminGetAllRolesResponse.fromJsonFactory,
    );

    return _AdminGetAllRoles(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      isActive: isActive,
      isDeleted: isDeleted,
    );
  }

  ///Retrieve all roles with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  ///@param isDeleted
  @GET(path: '/api/v1/admin/roles')
  Future<chopper.Response<AdminGetAllRolesResponse>> _AdminGetAllRoles({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('isActive') bool? isActive,
    @Query('isDeleted') bool? isDeleted,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of roles with optional search and filtering.
    

    This endpoint provides role listing by:

    - Supporting fuzzy search across Name and Description (case-insensitive)

    - Filtering by active status (IsActive)

    - Filtering by deleted status (IsDeleted)

    - Paginating results for efficient data retrieval

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Query Parameters:**

    - pageIndex: Zero-based page index (default: 0)

    - pageSize: Number of items per page (default: 10)

    - search: Fuzzy search term for Name and Description

    - isActive: Filter by active status (true/false)

    - isDeleted: Filter by deleted status (true/false)

    

    **Use Cases:**

    - List all available roles in the system

    - Search for specific roles by name or description

    - Filter roles by status for administrative purposes

    - Paginate through large role sets

    

    **Response Includes:**

    - Paginated list of roles with ID, name, description, and status

    - Total count for pagination

    - Current page index and page size

    

    **Response Codes:**

    - Returns 200 OK with paginated role list on success

    - Returns 400 Bad Request if query parameters are invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions''',
      summary: 'Retrieve all roles with pagination and filtering',
      operationId: 'AdminGetAllRoles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Create a new role
  Future<chopper.Response<AdminCreateRoleResponse>> AdminCreateRole({
    required AdminCreateRoleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateRoleResponse,
      () => AdminCreateRoleResponse.fromJsonFactory,
    );

    return _AdminCreateRole(body: body);
  }

  ///Create a new role
  @POST(path: '/api/v1/admin/roles', optionalBody: true)
  Future<chopper.Response<AdminCreateRoleResponse>> _AdminCreateRole({
    @Body() required AdminCreateRoleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new role with the specified name and description.
    

    This endpoint creates a role by:

    - Validating the role name and description

    - Checking that no role with the same name already exists

    - Creating the role with active status

    - Returning the created role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Create custom roles for organization-specific access control

    - Define new permission groupings

    

    **Request Body:**

    - name: The unique name for the role (max 20 characters)

    - description: A description of the role\'s purpose (max 300 characters)

    

    **Response Includes:**

    - Role ID, name, and description

    - Role status (IsActive, IsDeleted)

    

    **Response Codes:**

    - Returns 201 Created with role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 409 Conflict if role name already exists

    

    **Error Handling:**

    - ValidationException (400): Invalid name or description format

    - ConflictException (409): Role with the same name already exists''',
      summary: 'Create a new role',
      operationId: 'AdminCreateRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Restore a soft-deleted role
  ///@param id
  Future<chopper.Response<AdminRestoreRoleResponse>> AdminRestoreRole({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminRestoreRoleResponse,
      () => AdminRestoreRoleResponse.fromJsonFactory,
    );

    return _AdminRestoreRole(id: id);
  }

  ///Restore a soft-deleted role
  ///@param id
  @PATCH(path: '/api/v1/admin/roles/{id}/restore', optionalBody: true)
  Future<chopper.Response<AdminRestoreRoleResponse>> _AdminRestoreRole({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Restores a soft-deleted role, making it available again.
    

    This endpoint restores a role by:

    - Validating the role ID exists

    - Checking that the role is currently soft-deleted

    - Setting the role\'s IsDeleted status to false

    - Clearing the deletion timestamp

    - Returning the restored role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Recover accidentally deleted roles

    - Reinstate previously removed roles

    

    **Note:**

    - The restored role will remain inactive (IsActive = false)

    - Use the activate endpoint to make the role assignable again

    

    **Response Includes:**

    - Role ID, name, and description

    

    **Response Codes:**

    - Returns 200 OK with restored role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if role is not deleted

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID format

    - NotFoundException (404): Role not found with the specified ID

    - ConflictException (409): Role is not deleted and cannot be restored''',
      summary: 'Restore a soft-deleted role',
      operationId: 'AdminRestoreRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Remove a permission from a role
  ///@param id
  ///@param permissionId
  Future<chopper.Response<AdminRemovePermissionFromRoleResponse>>
  AdminRemovePermissionFromRole({
    required String? id,
    required String? permissionId,
  }) {
    generatedMapping.putIfAbsent(
      AdminRemovePermissionFromRoleResponse,
      () => AdminRemovePermissionFromRoleResponse.fromJsonFactory,
    );

    return _AdminRemovePermissionFromRole(id: id, permissionId: permissionId);
  }

  ///Remove a permission from a role
  ///@param id
  ///@param permissionId
  @DELETE(path: '/api/v1/admin/roles/{id}/permissions/{permissionId}')
  Future<chopper.Response<AdminRemovePermissionFromRoleResponse>>
  _AdminRemovePermissionFromRole({
    @Path('id') required String? id,
    @Path('permissionId') required String? permissionId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes a permission from a role, revoking that permission from all users with the role.
    

    This endpoint removes a permission by:

    - Validating the role ID exists

    - Checking that the permission is assigned to the role

    - Removing the role-permission association

    - Returning the updated role with remaining permissions

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Revoke capabilities from a role

    - Reduce role access to resources

    

    **Response Includes:**

    - Role ID, name, and description

    - List of remaining assigned permissions

    

    **Response Codes:**

    - Returns 200 OK with updated role details on success

    - Returns 400 Bad Request if permission is not assigned to role

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID or permission ID format

    - BadRequestException (400): Permission is not assigned to the role

    - NotFoundException (404): Role not found''',
      summary: 'Remove a permission from a role',
      operationId: 'AdminRemovePermissionFromRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Permanently delete a role
  ///@param id
  Future<chopper.Response<AdminHardDeleteRoleResponse>> AdminHardDeleteRole({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminHardDeleteRoleResponse,
      () => AdminHardDeleteRoleResponse.fromJsonFactory,
    );

    return _AdminHardDeleteRole(id: id);
  }

  ///Permanently delete a role
  ///@param id
  @DELETE(path: '/api/v1/admin/roles/{id}/hard')
  Future<chopper.Response<AdminHardDeleteRoleResponse>> _AdminHardDeleteRole({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes a role from the system. This action cannot be undone.
    

    This endpoint hard deletes a role by:

    - Validating the role ID exists

    - Checking that the role is not a core system role (SuperAdmin, Admin, Visitor)

    - Permanently removing the role from the database

    - Cascading deletion to role-permission associations

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Permanently remove obsolete roles

    - Clean up test or temporary roles

    

    **Protected Roles:**

    - SuperAdmin, Admin, and Visitor roles cannot be hard deleted

    

    **Response Codes:**

    - Returns 200 OK on successful deletion

    - Returns 400 Bad Request if attempting to delete a core role

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID format or core role protection

    - NotFoundException (404): Role not found with the specified ID''',
      summary: 'Permanently delete a role',
      operationId: 'AdminHardDeleteRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Deactivate a role
  ///@param id
  Future<chopper.Response<AdminDeactivateRoleResponse>> AdminDeactivateRole({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminDeactivateRoleResponse,
      () => AdminDeactivateRoleResponse.fromJsonFactory,
    );

    return _AdminDeactivateRole(id: id);
  }

  ///Deactivate a role
  ///@param id
  @PATCH(path: '/api/v1/admin/roles/{id}/deactivate', optionalBody: true)
  Future<chopper.Response<AdminDeactivateRoleResponse>> _AdminDeactivateRole({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Deactivates a role, preventing it from being assigned to users.
    

    This endpoint deactivates a role by:

    - Validating the role ID exists

    - Checking that the role is not already inactive

    - Setting the role\'s IsActive status to false

    - Returning the updated role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Temporarily disable a role without deleting it

    - Prevent new users from being assigned the role

    - Existing user assignments remain unaffected

    

    **Response Includes:**

    - Role ID, name, and description

    

    **Response Codes:**

    - Returns 200 OK with deactivated role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if role is already inactive

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID format

    - NotFoundException (404): Role not found with the specified ID

    - ConflictException (409): Role is already inactive''',
      summary: 'Deactivate a role',
      operationId: 'AdminDeactivateRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Bulk update role permissions
  ///@param id
  Future<chopper.Response<AdminBulkUpdateRolePermissionsResponse>>
  AdminBulkUpdateRolePermissions({
    required String? id,
    required AdminBulkUpdateRolePermissionsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminBulkUpdateRolePermissionsResponse,
      () => AdminBulkUpdateRolePermissionsResponse.fromJsonFactory,
    );

    return _AdminBulkUpdateRolePermissions(id: id, body: body);
  }

  ///Bulk update role permissions
  ///@param id
  @PUT(path: '/api/v1/admin/roles/{id}/permissions', optionalBody: true)
  Future<chopper.Response<AdminBulkUpdateRolePermissionsResponse>>
  _AdminBulkUpdateRolePermissions({
    @Path('id') required String? id,
    @Body() required AdminBulkUpdateRolePermissionsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Replaces all permissions of a role with the specified list.
    

    This endpoint bulk updates permissions by:

    - Validating the role ID exists

    - Removing all permissions not in the new list

    - Adding all permissions in the new list that aren\'t already assigned

    - Returning the updated role with all permissions

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Completely reset role permissions

    - Sync role permissions with an external system

    - Batch permission updates

    

    **Request Body:**

    - permissionIds: Array of permission IDs to assign to the role

    

    **Response Includes:**

    - Role ID, name, and description

    - List of all assigned permissions

    

    **Response Codes:**

    - Returns 200 OK with updated role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID or permission ID format

    - NotFoundException (404): Role not found''',
      summary: 'Bulk update role permissions',
      operationId: 'AdminBulkUpdateRolePermissions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Assign a permission to a role
  ///@param id
  Future<chopper.Response<AdminAssignPermissionToRoleResponse>>
  AdminAssignPermissionToRole({
    required String? id,
    required AdminAssignPermissionToRoleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAssignPermissionToRoleResponse,
      () => AdminAssignPermissionToRoleResponse.fromJsonFactory,
    );

    return _AdminAssignPermissionToRole(id: id, body: body);
  }

  ///Assign a permission to a role
  ///@param id
  @POST(path: '/api/v1/admin/roles/{id}/permissions', optionalBody: true)
  Future<chopper.Response<AdminAssignPermissionToRoleResponse>>
  _AdminAssignPermissionToRole({
    @Path('id') required String? id,
    @Body() required AdminAssignPermissionToRoleRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Assigns a permission to a role, granting that permission to all users with the role.
    

    This endpoint assigns a permission by:

    - Validating the role ID exists

    - Validating the permission ID exists

    - Checking that the permission is not already assigned to the role

    - Creating the role-permission association

    - Returning the updated role with all permissions

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Grant new capabilities to a role

    - Expand role access to new resources

    

    **Request Body:**

    - permissionId: The ID of the permission to assign

    

    **Response Includes:**

    - Role ID, name, and description

    - List of all assigned permissions

    

    **Response Codes:**

    - Returns 200 OK with updated role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role or permission doesn\'t exist

    - Returns 409 Conflict if permission is already assigned to role

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID or permission ID format

    - NotFoundException (404): Role or permission not found

    - ConflictException (409): Permission is already assigned to the role''',
      summary: 'Assign a permission to a role',
      operationId: 'AdminAssignPermissionToRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Activate a role
  ///@param id
  Future<chopper.Response<AdminActivateRoleResponse>> AdminActivateRole({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminActivateRoleResponse,
      () => AdminActivateRoleResponse.fromJsonFactory,
    );

    return _AdminActivateRole(id: id);
  }

  ///Activate a role
  ///@param id
  @PATCH(path: '/api/v1/admin/roles/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivateRoleResponse>> _AdminActivateRole({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Activates a role, allowing it to be assigned to users.
    

    This endpoint activates a role by:

    - Validating the role ID exists

    - Checking that the role is not already active

    - Setting the role\'s IsActive status to true

    - Returning the updated role details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Re-enable a previously deactivated role

    - Make a role available for assignment to users

    

    **Response Includes:**

    - Role ID, name, and description

    

    **Response Codes:**

    - Returns 200 OK with activated role details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if role is already active

    

    **Error Handling:**

    - ValidationException (400): Invalid role ID format

    - NotFoundException (404): Role not found with the specified ID

    - ConflictException (409): Role is already active''',
      summary: 'Activate a role',
      operationId: 'AdminActivateRole',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::roles"],
      deprecated: false,
    ),
  });

  ///Get session metrics and statistics
  Future<chopper.Response<AdminGetSessionMetricsResponse>>
  AdminGetSessionMetrics() {
    generatedMapping.putIfAbsent(
      AdminGetSessionMetricsResponse,
      () => AdminGetSessionMetricsResponse.fromJsonFactory,
    );

    return _AdminGetSessionMetrics();
  }

  ///Get session metrics and statistics
  @GET(path: '/api/v1/admin/sessions/metrics')
  Future<chopper.Response<AdminGetSessionMetricsResponse>>
  _AdminGetSessionMetrics({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves comprehensive session metrics including platform distribution and user activity.
    This is an admin-only operation for monitoring system usage and platform analytics.
    

    **Metrics Provided:**

    - Client Platform Counts: Sessions grouped by client platform (iOS app, Android app, Web browser, PWA)

    - Device Type Counts: Sessions grouped by device type (Mobile, Desktop, Tablet)

    - Total Active Sessions: Count of all currently active sessions

    - Total Active Users: Count of unique users with at least one active session

    

    **Use Cases:**

    - Monitor platform adoption (mobile app vs web app usage)

    - Track device type distribution for responsive design priorities

    - Measure concurrent user activity

    - Generate dashboards showing real-time system usage

    

    **Response Codes:**

    - Returns 200 OK with metrics data

    - Returns 401 Unauthorized if access token is invalid

    - Returns 403 Forbidden if not admin''',
      summary: 'Get session metrics and statistics',
      operationId: 'AdminGetSessionMetrics',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Retrieve all sessions with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param status
  ///@param userId
  ///@param ipAddress
  ///@param fromDate
  ///@param toDate
  Future<chopper.Response<AdminGetAllSessionsResponse>> AdminGetAllSessions({
    int? pageIndex,
    int? pageSize,
    String? status,
    String? userId,
    String? ipAddress,
    DateTime? fromDate,
    DateTime? toDate,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllSessionsResponse,
      () => AdminGetAllSessionsResponse.fromJsonFactory,
    );

    return _AdminGetAllSessions(
      pageIndex: pageIndex,
      pageSize: pageSize,
      status: status,
      userId: userId,
      ipAddress: ipAddress,
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  ///Retrieve all sessions with pagination and filtering
  ///@param pageIndex
  ///@param pageSize
  ///@param status
  ///@param userId
  ///@param ipAddress
  ///@param fromDate
  ///@param toDate
  @GET(path: '/api/v1/admin/sessions')
  Future<chopper.Response<AdminGetAllSessionsResponse>> _AdminGetAllSessions({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('status') String? status,
    @Query('userId') String? userId,
    @Query('ipAddress') String? ipAddress,
    @Query('fromDate') DateTime? fromDate,
    @Query('toDate') DateTime? toDate,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all user sessions with optional filtering capabilities.
    This is an admin-only operation for monitoring and managing user sessions.
    

    **Query Parameters:**

    - pageIndex: Zero-based page index (default: 0)

    - pageSize: Number of items per page (default: 10, max: 100)

    - status: Filter by status ("active" or "expired")\n
    - userId: Filter by user ID (GUID)\n
    - ipAddress: Filter by IP address (partial match)\n
    - deviceName: Filter by device name (partial match)\n
    - fromDate: Filter sessions created after this date\n
    - toDate: Filter sessions created before this date\n
    \n
    **Response Includes:**\n
    - Paginated list of sessions\n
    - Total count of matching sessions\n
    - Current page index and size\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with paginated sessions\n
    - Returns 400 Bad Request for invalid parameters\n
    - Returns 401 Unauthorized if access token is invalid\n
    - Returns 403 Forbidden if not admin''',
      summary: 'Retrieve all sessions with pagination and filtering',
      operationId: 'AdminGetAllSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Export session data with optional filtering
  ///@param status
  ///@param fromDate
  ///@param toDate
  ///@param format
  ///@param columns
  Future<chopper.Response> AdminExportSessionData({
    String? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? format,
    String? columns,
  }) {
    return _AdminExportSessionData(
      status: status,
      fromDate: fromDate,
      toDate: toDate,
      format: format,
      columns: columns,
    );
  }

  ///Export session data with optional filtering
  ///@param status
  ///@param fromDate
  ///@param toDate
  ///@param format
  ///@param columns
  @GET(path: '/api/v1/admin/sessions/export')
  Future<chopper.Response> _AdminExportSessionData({
    @Query('status') String? status,
    @Query('fromDate') DateTime? fromDate,
    @Query('toDate') DateTime? toDate,
    @Query('format') String? format,
    @Query('columns') String? columns,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Exports session data with optional filtering by status and date range.
    This is an admin-only operation for extracting session data for reporting and analysis.
    

    **Filter Parameters:**

    - Status: Filter by session status ("active" or "expired").\n
    - FromDate: Include only sessions created after this date.\n
    - ToDate: Include only sessions created before this date.\n
    \n
    **Exported Fields:**\n
    - Session ID, User ID\n
    - IP Address, Device Name, User Agent, Client Platform\n
    - Created At, Expires At, Is Active, Deleted At\n
    \n
    **Use Cases:**\n
    - Generate session activity reports\n
    - Export data for compliance and auditing\n
    - Analyze session patterns and user behavior\n
    - Create backups of session data\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with session export data\n
    - Returns 400 Bad Request if filter parameters are invalid\n
    - Returns 401 Unauthorized if access token is invalid\n
    - Returns 403 Forbidden if not admin''',
      summary: 'Export session data with optional filtering',
      operationId: 'AdminExportSessionData',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Refresh admin access token using a valid refresh token
  Future<chopper.Response<AdminRefreshTokenResponse>> AdminRefreshToken() {
    generatedMapping.putIfAbsent(
      AdminRefreshTokenResponse,
      () => AdminRefreshTokenResponse.fromJsonFactory,
    );

    return _AdminRefreshToken();
  }

  ///Refresh admin access token using a valid refresh token
  @POST(path: '/api/v1/admin/sessions/refresh-token', optionalBody: true)
  Future<chopper.Response<AdminRefreshTokenResponse>> _AdminRefreshToken({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Validates and rotates a refresh token to obtain a new admin access token.
    Implements token rotation for enhanced security - the old refresh token is invalidated.
    

    This endpoint performs token refresh by:

    - Reading the refresh token from the HttpOnly cookie

    - Validating the provided refresh token

    - Verifying the session is still active and not expired

    - Generating a new access token

    - Rotating the refresh token (old token becomes invalid)

    - Setting new tokens as HttpOnly cookies

    

    **Authentication Requirements:**

    - Valid, non-expired refresh token (via HttpOnly cookie)

    - Session must be active (not logged out or revoked)

    - User must have Admin or SuperAdmin role

    

    **Security Features:**

    - Automatic token rotation prevents token reuse

    - Refresh token hashing for secure storage

    - Session validation ensures only active sessions can refresh

    - Tokens delivered exclusively via HttpOnly cookies

    

    **Response Codes:**

    - Returns 200 OK with user info on successful refresh

    - Returns 401 Unauthorized for unauthenticated requests

    - Returns 403 Forbidden for invalid or expired refresh tokens

    

    **Error Handling:**

    - AuthorizationException (403): Invalid/expired refresh token or session revoked

    - Token rotation ensures old refresh tokens cannot be reused after successful refresh.''',
      summary: 'Refresh admin access token using a valid refresh token',
      operationId: 'AdminRefreshToken',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Force logout a user from all devices
  ///@param id
  Future<chopper.Response<AdminForceLogoutUserResponse>> AdminForceLogoutUser({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminForceLogoutUserResponse,
      () => AdminForceLogoutUserResponse.fromJsonFactory,
    );

    return _AdminForceLogoutUser(id: id);
  }

  ///Force logout a user from all devices
  ///@param id
  @POST(path: '/api/v1/admin/sessions/force-logout/{id}', optionalBody: true)
  Future<chopper.Response<AdminForceLogoutUserResponse>> _AdminForceLogoutUser({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Forces a user to log out from all their active sessions across all devices.
    This is an admin-only operation used for security purposes or account management.
    

    This endpoint performs force logout by:

    - Validating the target user ID from the route parameter

    - Soft deleting all sessions associated with that user

    - Invalidating all tokens for those sessions

    

    **Authentication Requirements:**

    - Admin must be authenticated with a valid access token

    - Requires admin role and appropriate permissions

    

    **Use Cases:**

    - Security response to compromised accounts

    - Account suspension or termination

    - Policy enforcement (e.g., forced password reset)

    - Emergency access revocation

    

    **Response Codes:**

    - Returns 200 OK with success flag on successful logout

    - Returns 400 Bad Request if user ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if admin lacks required permissions

    

    **Important Notes:**

    - This operation affects all user sessions, not just one device

    - Sessions are soft deleted for audit trail purposes

    - User will need to log in again on all devices''',
      summary: 'Force logout a user from all devices',
      operationId: 'AdminForceLogoutUser',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Cleanup all expired sessions
  Future<chopper.Response<AdminCleanupExpiredSessionsResponse>>
  AdminCleanupExpiredSessions() {
    generatedMapping.putIfAbsent(
      AdminCleanupExpiredSessionsResponse,
      () => AdminCleanupExpiredSessionsResponse.fromJsonFactory,
    );

    return _AdminCleanupExpiredSessions();
  }

  ///Cleanup all expired sessions
  @POST(path: '/api/v1/admin/sessions/cleanup', optionalBody: true)
  Future<chopper.Response<AdminCleanupExpiredSessionsResponse>>
  _AdminCleanupExpiredSessions({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Performs a cleanup operation to soft delete all expired sessions from the database.
    This is an admin-only maintenance operation used for database hygiene.
    

    This endpoint performs cleanup by:

    - Identifying all sessions that have expired (past their ExpiresAt timestamp)

    - Soft deleting those expired sessions to maintain audit trail

    - Returning the count of sessions that were cleaned up

    

    **Authentication Requirements:**

    - Admin must be authenticated with a valid access token

    - Requires admin role and appropriate permissions

    

    **Use Cases:**

    - Regular maintenance to keep session data clean

    - Database optimization and cleanup

    - Scheduled cleanup operations (can be triggered manually or via cron)

    - Removing stale session data that won\'t be used again

    

    **Response Codes:**

    - Returns 200 OK with deleted count on successful cleanup

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if admin lacks required permissions

    

    **Important Notes:**

    - Sessions are soft deleted, not permanently removed

    - This operation only affects expired sessions, not active ones

    - The operation is safe to run multiple times

    - Consider running this periodically as part of maintenance tasks
''',
      summary: 'Cleanup all expired sessions',
      operationId: 'AdminCleanupExpiredSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  });

  ///Get short video details
  ///@param id
  Future<chopper.Response<AdminGetShortByIdResponse>> AdminGetShortById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetShortByIdResponse,
      () => AdminGetShortByIdResponse.fromJsonFactory,
    );

    return _AdminGetShortById(id: id);
  }

  ///Get short video details
  ///@param id
  @GET(path: '/api/v1/admin/shorts/{id}')
  Future<chopper.Response<AdminGetShortByIdResponse>> _AdminGetShortById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single short video clip by its unique identifier.
    

    Returns the complete short video information including video URL, thumbnail, activity status,
    engagement counters, and parent video link if applicable.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with short video details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get short video details',
      operationId: 'AdminGetShortById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Permanently delete a short video
  ///@param id
  Future<chopper.Response<AdminDeleteShortVideoResponse>> DeleteShortVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminDeleteShortVideoResponse,
      () => AdminDeleteShortVideoResponse.fromJsonFactory,
    );

    return _DeleteShortVideo(id: id);
  }

  ///Permanently delete a short video
  ///@param id
  @DELETE(path: '/api/v1/admin/shorts/{id}')
  Future<chopper.Response<AdminDeleteShortVideoResponse>> _DeleteShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes the specified short video record and removes all associated
    media assets (video file and thumbnail, if present) from cloud storage.
    This operation is irreversible.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Permanently delete a short video',
      operationId: 'DeleteShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///List all short videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  Future<chopper.Response<AdminGetAllShortsResponse>> AdminGetAllShorts({
    int? pageIndex,
    int? pageSize,
    String? search,
    bool? isActive,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllShortsResponse,
      () => AdminGetAllShortsResponse.fromJsonFactory,
    );

    return _AdminGetAllShorts(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      isActive: isActive,
    );
  }

  ///List all short videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param isActive
  @GET(path: '/api/v1/admin/shorts')
  Future<chopper.Response<AdminGetAllShortsResponse>> _AdminGetAllShorts({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('isActive') bool? isActive,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all short video clips for admin management.
    

    Supports optional filtering by active status. Results are returned as a paginated list
    suitable for list and management views.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated short video list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List all short videos',
      operationId: 'AdminGetAllShorts',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Upload and create a new short video clip
  ///@param title
  ///@param slug
  ///@param videoId
  Future<chopper.Response<AdminCreateShortVideoResponse>> CreateShortVideo({
    required String? title,
    required String? slug,
    String? videoId,
    required MultipartFile videoFile,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateShortVideoResponse,
      () => AdminCreateShortVideoResponse.fromJsonFactory,
    );

    return _CreateShortVideo(
      title: title,
      slug: slug,
      videoId: videoId,
      videoFile: videoFile,
    );
  }

  ///Upload and create a new short video clip
  ///@param title
  ///@param slug
  ///@param videoId
  @POST(path: '/api/v1/admin/shorts', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminCreateShortVideoResponse>> _CreateShortVideo({
    @Query('title') required String? title,
    @Query('slug') required String? slug,
    @Query('videoId') String? videoId,
    @PartFile() required MultipartFile videoFile,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Uploads a video file to Cloudinary and creates a new short video record.
    

    Short videos are standalone loopable clips (gossip, reels, quick previews) uploaded
    directly to cloud storage — not YouTube. They bypass the editorial approval workflow.
    

    Optionally, a short video can be linked to a full video by providing a <c>videoId</c>,
    making it a teaser clip for the parent production.
    

    The video file must be submitted as <c>multipart/form-data</c>.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with short video details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Upload and create a new short video clip',
      operationId: 'CreateShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Upload or replace the thumbnail for a short video
  ///@param id
  Future<chopper.Response<AdminUploadShortVideoThumbnailResponse>>
  UploadShortVideoThumbnail({
    required String? id,
    required MultipartFile file,
  }) {
    generatedMapping.putIfAbsent(
      AdminUploadShortVideoThumbnailResponse,
      () => AdminUploadShortVideoThumbnailResponse.fromJsonFactory,
    );

    return _UploadShortVideoThumbnail(id: id, file: file);
  }

  ///Upload or replace the thumbnail for a short video
  ///@param id
  @POST(path: '/api/v1/admin/shorts/{id}/thumbnail', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminUploadShortVideoThumbnailResponse>>
  _UploadShortVideoThumbnail({
    @Path('id') required String? id,
    @PartFile() required MultipartFile file,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Uploads an image file to Cloudinary and sets it as the thumbnail for the specified
    short video. If a thumbnail already exists, the previous image is deleted from
    cloud storage after the new one is successfully saved.
    

    The image file must be submitted as <c>multipart/form-data</c>.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with thumbnail URL and storage key on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Upload or replace the thumbnail for a short video',
      operationId: 'UploadShortVideoThumbnail',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Deactivate a short video
  ///@param id
  Future<chopper.Response<AdminDeactivateShortVideoResponse>>
  DeactivateShortVideo({required String? id}) {
    generatedMapping.putIfAbsent(
      AdminDeactivateShortVideoResponse,
      () => AdminDeactivateShortVideoResponse.fromJsonFactory,
    );

    return _DeactivateShortVideo(id: id);
  }

  ///Deactivate a short video
  ///@param id
  @PATCH(path: '/api/v1/admin/shorts/{id}/deactivate', optionalBody: true)
  Future<chopper.Response<AdminDeactivateShortVideoResponse>>
  _DeactivateShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Hides the specified short video from the public feed by clearing its active status.
    Deactivation is reversible and does not delete any media assets.
    

    Returns a conflict error if the short video is already inactive.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the short video does not exist

    - Returns 409 Conflict if the short video is already inactive

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Deactivate a short video',
      operationId: 'DeactivateShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Activate a short video
  ///@param id
  Future<chopper.Response<AdminActivateShortVideoResponse>> ActivateShortVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminActivateShortVideoResponse,
      () => AdminActivateShortVideoResponse.fromJsonFactory,
    );

    return _ActivateShortVideo(id: id);
  }

  ///Activate a short video
  ///@param id
  @PATCH(path: '/api/v1/admin/shorts/{id}/activate', optionalBody: true)
  Future<chopper.Response<AdminActivateShortVideoResponse>>
  _ActivateShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Makes the specified short video visible on the public feed by setting its active status.
    

    Returns a conflict error if the short video is already active.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the short video does not exist

    - Returns 409 Conflict if the short video is already active

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Activate a short video',
      operationId: 'ActivateShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::shorts"],
      deprecated: false,
    ),
  });

  ///Create a new content tag
  Future<chopper.Response<AdminCreateTagResponse>> AdminCreateTag({
    required AdminCreateTagRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateTagResponse,
      () => AdminCreateTagResponse.fromJsonFactory,
    );

    return _AdminCreateTag(body: body);
  }

  ///Create a new content tag
  @POST(path: '/api/v1/admin/tags', optionalBody: true)
  Future<chopper.Response<AdminCreateTagResponse>> _AdminCreateTag({
    @Body() required AdminCreateTagRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new content discovery tag (e.g. "Fally Ipupa", "Kinshasa", "Afrobeats").
    \n
    This endpoint creates a tag by:\n
    - Validating the name and slug format\n
    - Checking that no tag with the same slug already exists\n
    - Creating the tag and returning its details\n
    \n
    **Authentication Requirements:**\n
    - User must be authenticated with a valid access token\n
    - User must have Admin or SuperAdmin role\n
    \n
    **Request Body:**\n
    - name: The display name for the tag (max 50 characters)\n
    - slug: URL-safe identifier — lowercase letters, numbers, and hyphens only (max 60 characters)\n
    \n
    **Response Codes:**\n
    - Returns 201 Created with tag details on success\n
    - Returns 400 Bad Request if validation fails\n
    - Returns 401 Unauthorized if access token is invalid or expired\n
    - Returns 403 Forbidden if user lacks Admin role\n
    - Returns 409 Conflict if tag slug already exists\n''',
      summary: 'Create a new content tag',
      operationId: 'AdminCreateTag',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::tags"],
      deprecated: false,
    ),
  });

  ///Get user's roles
  ///@param id
  Future<chopper.Response<AdminGetUserRolesResponse>> AdminGetUserRoles({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetUserRolesResponse,
      () => AdminGetUserRolesResponse.fromJsonFactory,
    );

    return _AdminGetUserRoles(id: id);
  }

  ///Get user's roles
  ///@param id
  @GET(path: '/api/v1/admin/users/{id}/roles')
  Future<chopper.Response<AdminGetUserRolesResponse>> _AdminGetUserRoles({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Retrieves all roles assigned to a specific user.
    

    This endpoint retrieves user roles by:

    - Validating the user ID

    - Fetching all role assignments for the user

    - Returning the list of roles with details

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Use Cases:**

    - View user\'s current role assignments

    - Audit user permissions

    

    **Response Includes:**

    - List of roles with ID, name, and description

    

    **Response Codes:**

    - Returns 200 OK with list of roles on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required role

    

    **Error Handling:**

    - ValidationException (400): Invalid user ID format''',
      summary: 'Get user\'s roles',
      operationId: 'AdminGetUserRoles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::users"],
      deprecated: false,
    ),
  });

  ///Assign a role to a user
  ///@param id
  Future<chopper.Response<AdminAssignRoleToUserResponse>>
  AdminAssignRoleToUser({
    required String? id,
    required AdminAssignRoleToUserRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAssignRoleToUserResponse,
      () => AdminAssignRoleToUserResponse.fromJsonFactory,
    );

    return _AdminAssignRoleToUser(id: id, body: body);
  }

  ///Assign a role to a user
  ///@param id
  @POST(path: '/api/v1/admin/users/{id}/roles', optionalBody: true)
  Future<chopper.Response<AdminAssignRoleToUserResponse>>
  _AdminAssignRoleToUser({
    @Path('id') required String? id,
    @Body() required AdminAssignRoleToUserRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Assigns a role to a user, granting them all permissions associated with that role.
    

    This endpoint assigns a role by:

    - Validating the role ID exists and is active

    - Checking that the role is not already assigned to the user

    - Creating the user-role association

    - Returning the user\'s updated roles

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Grant new capabilities to a user

    - Promote user to a higher role

    

    **Request Body:**

    - roleId: The ID of the role to assign

    

    **Response Includes:**

    - List of all roles assigned to the user

    

    **Response Codes:**

    - Returns 200 OK with updated roles on success

    - Returns 400 Bad Request if role is inactive or deleted

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if role doesn\'t exist

    - Returns 409 Conflict if role is already assigned to user

    

    **Error Handling:**

    - ValidationException (400): Invalid user ID or role ID format

    - BadRequestException (400): Role is inactive or deleted

    - NotFoundException (404): Role not found

    - ConflictException (409): Role is already assigned to the user''',
      summary: 'Assign a role to a user',
      operationId: 'AdminAssignRoleToUser',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::users"],
      deprecated: false,
    ),
  });

  ///Remove a role from a user
  ///@param id
  ///@param roleId
  Future<chopper.Response<AdminRemoveRoleFromUserResponse>>
  AdminRemoveRoleFromUser({required String? id, required String? roleId}) {
    generatedMapping.putIfAbsent(
      AdminRemoveRoleFromUserResponse,
      () => AdminRemoveRoleFromUserResponse.fromJsonFactory,
    );

    return _AdminRemoveRoleFromUser(id: id, roleId: roleId);
  }

  ///Remove a role from a user
  ///@param id
  ///@param roleId
  @DELETE(path: '/api/v1/admin/users/{id}/roles/{roleId}')
  Future<chopper.Response<AdminRemoveRoleFromUserResponse>>
  _AdminRemoveRoleFromUser({
    @Path('id') required String? id,
    @Path('roleId') required String? roleId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes a role from a user, revoking all permissions associated with that role.
    

    This endpoint removes a role by:

    - Checking that the role is assigned to the user

    - Removing the user-role association

    - Returning the user\'s updated roles

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Use Cases:**

    - Revoke capabilities from a user

    - Demote user from a role

    

    **Response Includes:**

    - List of remaining roles assigned to the user

    

    **Response Codes:**

    - Returns 200 OK with updated roles on success

    - Returns 400 Bad Request if role is not assigned to user

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    

    **Error Handling:**

    - ValidationException (400): Invalid user ID or role ID format

    - BadRequestException (400): Role is not assigned to the user''',
      summary: 'Remove a role from a user',
      operationId: 'AdminRemoveRoleFromUser',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::users"],
      deprecated: false,
    ),
  });

  ///Get video details by ID
  ///@param id
  Future<chopper.Response<AdminGetVideoByIdResponse>> AdminGetVideoById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetVideoByIdResponse,
      () => AdminGetVideoByIdResponse.fromJsonFactory,
    );

    return _AdminGetVideoById(id: id);
  }

  ///Get video details by ID
  ///@param id
  @GET(path: '/api/v1/admin/videos/{id}')
  Future<chopper.Response<AdminGetVideoByIdResponse>> _AdminGetVideoById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single video including its tags,
    SEO metadata, thumbnail, YouTube ID, and workflow status.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with video details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Get video details by ID',
      operationId: 'AdminGetVideoById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Update all editable video fields
  ///@param id
  Future<chopper.Response<AdminUpdateVideoResponse>> UpdateVideo({
    required String? id,
    required AdminUpdateVideoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateVideoResponse,
      () => AdminUpdateVideoResponse.fromJsonFactory,
    );

    return _UpdateVideo(id: id, body: body);
  }

  ///Update all editable video fields
  ///@param id
  @PUT(path: '/api/v1/admin/videos/{id}', optionalBody: true)
  Future<chopper.Response<AdminUpdateVideoResponse>> _UpdateVideo({
    @Path('id') required String? id,
    @Body() required AdminUpdateVideoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates all editable fields of a video in a single request.
    

    Permitted when the video status is <c>Draft</c>, <c>PendingPayment</c>,
    <c>PendingReview</c>, or <c>Rejected</c>. Attempting to update a video in
    <c>Approved</c>, <c>Published</c>, or <c>Archived</c> status returns 400 Bad Request.
    

    If the slug is changed, the new slug must be unique across all videos.
    

    When providing a <c>customerId</c>, an <c>orderItemId</c> is required and vice versa.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated video details on success

    - Returns 400 Bad Request if validation fails or video is not in an editable status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video or category does not exist

    - Returns 409 Conflict if the new slug is already taken

    - Returns 429 Too Many Requests if the rate limit is exceeded
''',
      summary: 'Update all editable video fields',
      operationId: 'UpdateVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Permanently delete a video
  ///@param id
  Future<chopper.Response<AdminDeleteVideoResponse>> DeleteVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminDeleteVideoResponse,
      () => AdminDeleteVideoResponse.fromJsonFactory,
    );

    return _DeleteVideo(id: id);
  }

  ///Permanently delete a video
  ///@param id
  @DELETE(path: '/api/v1/admin/videos/{id}')
  Future<chopper.Response<AdminDeleteVideoResponse>> _DeleteVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes a video and its associated Cloudinary thumbnail asset.
    

    Only videos in <c>Draft</c> or <c>Rejected</c> status can be deleted.
    Attempting to delete a video in any other status (Published, Approved,
    PendingReview, PendingPayment) will return a 400 Bad Request.
    

    For published or approved videos, use the archive endpoint instead to
    remove the video from public feeds without permanently deleting it.
    

    This operation is <b>irreversible</b> — the Cloudinary thumbnail asset is deleted
    from cloud storage before the database record is removed.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the video is not in Draft or Rejected status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Permanently delete a video',
      operationId: 'DeleteVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///List all videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param status
  ///@param categoryId
  Future<chopper.Response<AdminGetAllVideosResponse>> AdminGetAllVideos({
    int? pageIndex,
    int? pageSize,
    String? search,
    Object? status,
    String? categoryId,
  }) {
    generatedMapping.putIfAbsent(
      AdminGetAllVideosResponse,
      () => AdminGetAllVideosResponse.fromJsonFactory,
    );

    return _AdminGetAllVideos(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      status: status,
      categoryId: categoryId,
    );
  }

  ///List all videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param status
  ///@param categoryId
  @GET(path: '/api/v1/admin/videos')
  Future<chopper.Response<AdminGetAllVideosResponse>> _AdminGetAllVideos({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('status') Object? status,
    @Query('categoryId') String? categoryId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of videos for admin management.
    Supports optional filtering by content status and category.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with paginated video list on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role
''',
      summary: 'List all videos',
      operationId: 'AdminGetAllVideos',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Create a new video
  Future<chopper.Response<AdminCreateVideoResponse>> CreateVideo({
    required AdminCreateVideoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminCreateVideoResponse,
      () => AdminCreateVideoResponse.fromJsonFactory,
    );

    return _CreateVideo(body: body);
  }

  ///Create a new video
  @POST(path: '/api/v1/admin/videos', optionalBody: true)
  Future<chopper.Response<AdminCreateVideoResponse>> _CreateVideo({
    @Body() required AdminCreateVideoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new video shell (step 1 of the video creation flow).
    

    The video is created with a title, slug, and category only. The YouTube ID
    and thumbnail must be attached via subsequent endpoints before the video
    can be published.
    

    For paid (commissioned) videos, both <c>customerId</c> and <c>orderItemId</c>
    must be provided together. For free editorial content, both must be omitted.
    

    An optional <c>shootingScheduledAt</c> date can be provided for pre-booked
    productions where the client pays before the shoot takes place.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 201 Created with video details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the specified category does not exist

    - Returns 409 Conflict if a video with the same slug already exists
''',
      summary: 'Create a new video',
      operationId: 'CreateVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Upload a custom video thumbnail
  ///@param id
  Future<chopper.Response<AdminUploadVideoThumbnailResponse>>
  UploadVideoThumbnail({required String? id, required MultipartFile file}) {
    generatedMapping.putIfAbsent(
      AdminUploadVideoThumbnailResponse,
      () => AdminUploadVideoThumbnailResponse.fromJsonFactory,
    );

    return _UploadVideoThumbnail(id: id, file: file);
  }

  ///Upload a custom video thumbnail
  ///@param id
  @POST(path: '/api/v1/admin/videos/{id}/thumbnail', optionalBody: true)
  @Multipart()
  Future<chopper.Response<AdminUploadVideoThumbnailResponse>>
  _UploadVideoThumbnail({
    @Path('id') required String? id,
    @PartFile() required MultipartFile file,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Uploads or replaces the video\'s thumbnail image.
    

    If the video already has a thumbnail (from a previous upload or from the
    YouTube thumbnail auto-download), the old Cloudinary asset is deleted after
    the new thumbnail is uploaded successfully.
    

    Accepts multipart/form-data with a single image file.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with thumbnail URL and storage key on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video does not exist

    - Returns 429 Too Many Requests if the rate limit is exceeded
''',
      summary: 'Upload a custom video thumbnail',
      operationId: 'UploadVideoThumbnail',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Replace all tags on a video
  ///@param id
  Future<chopper.Response<AdminUpdateVideoTagsResponse>> UpdateVideoTags({
    required String? id,
    required AdminUpdateVideoTagsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateVideoTagsResponse,
      () => AdminUpdateVideoTagsResponse.fromJsonFactory,
    );

    return _UpdateVideoTags(id: id, body: body);
  }

  ///Replace all tags on a video
  ///@param id
  @PUT(path: '/api/v1/admin/videos/{id}/tags', optionalBody: true)
  Future<chopper.Response<AdminUpdateVideoTagsResponse>> _UpdateVideoTags({
    @Path('id') required String? id,
    @Body() required AdminUpdateVideoTagsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Replaces the full set of tags associated with a video.
    All existing tag associations are removed and replaced with the provided tag set.
    

    All provided tag identifiers must exist.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video or any tag does not exist
''',
      summary: 'Replace all tags on a video',
      operationId: 'UpdateVideoTags',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Update video SEO metadata
  ///@param id
  Future<chopper.Response<AdminUpdateVideoSeoResponse>> UpdateVideoSeo({
    required String? id,
    required AdminUpdateVideoSeoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminUpdateVideoSeoResponse,
      () => AdminUpdateVideoSeoResponse.fromJsonFactory,
    );

    return _UpdateVideoSeo(id: id, body: body);
  }

  ///Update video SEO metadata
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/seo', optionalBody: true)
  Future<chopper.Response<AdminUpdateVideoSeoResponse>> _UpdateVideoSeo({
    @Path('id') required String? id,
    @Body() required AdminUpdateVideoSeoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates a video\'s SEO metadata fields (meta title and meta description).
    

    If <c>metaTitle</c> is null, the video\'s display title is used as the SEO title.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated video details on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Update video SEO metadata',
      operationId: 'UpdateVideoSeo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Submit a video for review or payment
  ///@param id
  Future<chopper.Response<AdminSubmitVideoResponse>> SubmitVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminSubmitVideoResponse,
      () => AdminSubmitVideoResponse.fromJsonFactory,
    );

    return _SubmitVideo(id: id);
  }

  ///Submit a video for review or payment
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/submit', optionalBody: true)
  Future<chopper.Response<AdminSubmitVideoResponse>> _SubmitVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Submits a video draft for review or payment.
    

    Free videos transition from <c>Draft</c> to <c>PendingReview</c>.
    Paid videos (linked to a customer and order item) transition from
    <c>Draft</c> to <c>PendingPayment</c>.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Submit a video for review or payment',
      operationId: 'SubmitVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Schedule a video shoot
  ///@param id
  Future<chopper.Response<AdminScheduleShootResponse>> ScheduleShoot({
    required String? id,
    required AdminScheduleShootRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminScheduleShootResponse,
      () => AdminScheduleShootResponse.fromJsonFactory,
    );

    return _ScheduleShoot(id: id, body: body);
  }

  ///Schedule a video shoot
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/shoot', optionalBody: true)
  Future<chopper.Response<AdminScheduleShootResponse>> _ScheduleShoot({
    @Path('id') required String? id,
    @Body() required AdminScheduleShootRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Schedules or updates the shooting date for a video production.
    

    Used for pre-booked productions where the client pays before the shoot
    takes place. The shooting date must be in the future.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the date is not in the future

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Schedule a video shoot',
      operationId: 'ScheduleShoot',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Reject a video during editorial review
  ///@param id
  Future<chopper.Response<AdminRejectVideoResponse>> RejectVideo({
    required String? id,
    required AdminRejectVideoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminRejectVideoResponse,
      () => AdminRejectVideoResponse.fromJsonFactory,
    );

    return _RejectVideo(id: id, body: body);
  }

  ///Reject a video during editorial review
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/reject', optionalBody: true)
  Future<chopper.Response<AdminRejectVideoResponse>> _RejectVideo({
    @Path('id') required String? id,
    @Body() required AdminRejectVideoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Rejects a video that is currently in <c>PendingReview</c> status,
    transitioning it to <c>Rejected</c> with a mandatory rejection reason.
    

    Only videos in <c>PendingReview</c> status can be rejected.
    Attempting to reject a video in any other status will return a 400 Bad Request.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the video is not in PendingReview status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Reject a video during editorial review',
      operationId: 'RejectVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Publish an approved video
  ///@param id
  Future<chopper.Response<AdminPublishVideoResponse>> PublishVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminPublishVideoResponse,
      () => AdminPublishVideoResponse.fromJsonFactory,
    );

    return _PublishVideo(id: id);
  }

  ///Publish an approved video
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/publish', optionalBody: true)
  Future<chopper.Response<AdminPublishVideoResponse>> _PublishVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Publishes a video that is currently in <c>Approved</c> status,
    transitioning it to <c>Published</c> and making it visible to all public visitors.
    

    Only videos in <c>Approved</c> status can be published.
    Attempting to publish a video in any other status will return a 400 Bad Request.
    

    A YouTube video ID must be attached before publishing.
    The domain method enforces this gate — if no YouTube ID is attached,
    a 400 Bad Request will be returned.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the video is not in Approved status or has no YouTube ID

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Publish an approved video',
      operationId: 'PublishVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Attach a YouTube video ID
  ///@param id
  Future<chopper.Response<AdminAttachYoutubeIdResponse>> AttachYoutubeId({
    required String? id,
    required AdminAttachYoutubeIdRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      AdminAttachYoutubeIdResponse,
      () => AdminAttachYoutubeIdResponse.fromJsonFactory,
    );

    return _AttachYoutubeId(id: id, body: body);
  }

  ///Attach a YouTube video ID
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/youtube', optionalBody: true)
  Future<chopper.Response<AdminAttachYoutubeIdResponse>> _AttachYoutubeId({
    @Path('id') required String? id,
    @Body() required AdminAttachYoutubeIdRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Attaches a YouTube video ID to a video and automatically downloads
    the YouTube thumbnail, re-uploading it to Cloudinary.
    

    If the video already has a thumbnail, the old Cloudinary asset is deleted
    after the new thumbnail is uploaded successfully.
    

    The YouTube thumbnail is first attempted at maxresdefault quality (1280x720),
    falling back to hqdefault (480x360) if unavailable.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have Admin or SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK with updated video details on success

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks Admin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Attach a YouTube video ID',
      operationId: 'AttachYoutubeId',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Archive a video
  ///@param id
  Future<chopper.Response<AdminArchiveVideoResponse>> ArchiveVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminArchiveVideoResponse,
      () => AdminArchiveVideoResponse.fromJsonFactory,
    );

    return _ArchiveVideo(id: id);
  }

  ///Archive a video
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/archive', optionalBody: true)
  Future<chopper.Response<AdminArchiveVideoResponse>> _ArchiveVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Archives a video, removing it from all public feeds without permanently deleting it.
    

    Archiving is reversible — Cloudinary thumbnail assets are <b>not</b> deleted.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Archive a video',
      operationId: 'ArchiveVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Approve a video for publication
  ///@param id
  Future<chopper.Response<AdminApproveVideoResponse>> ApproveVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AdminApproveVideoResponse,
      () => AdminApproveVideoResponse.fromJsonFactory,
    );

    return _ApproveVideo(id: id);
  }

  ///Approve a video for publication
  ///@param id
  @PATCH(path: '/api/v1/admin/videos/{id}/approve', optionalBody: true)
  Future<chopper.Response<AdminApproveVideoResponse>> _ApproveVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Approves a video that is currently in <c>PendingReview</c> status,
    transitioning it to <c>Approved</c> and clearing it for publication.
    

    Only videos in <c>PendingReview</c> status can be approved.
    Attempting to approve a video in any other status will return a 400 Bad Request.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have SuperAdmin role

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the video is not in PendingReview status

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks SuperAdmin role

    - Returns 404 Not Found if the video does not exist
''',
      summary: 'Approve a video for publication',
      operationId: 'ApproveVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::videos"],
      deprecated: false,
    ),
  });

  ///Get my bookmarked articles
  ///@param pageIndex
  ///@param pageSize
  Future<chopper.Response<ArticleSummaryDtoPaginatedResult>>
  PublicGetMyArticleBookmarks({int? pageIndex, int? pageSize}) {
    generatedMapping.putIfAbsent(
      ArticleSummaryDtoPaginatedResult,
      () => ArticleSummaryDtoPaginatedResult.fromJsonFactory,
    );

    return _PublicGetMyArticleBookmarks(
      pageIndex: pageIndex,
      pageSize: pageSize,
    );
  }

  ///Get my bookmarked articles
  ///@param pageIndex
  ///@param pageSize
  @GET(path: '/api/v1/public/articles/bookmarks')
  Future<chopper.Response<ArticleSummaryDtoPaginatedResult>>
  _PublicGetMyArticleBookmarks({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns a paginated list of articles bookmarked by the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get my bookmarked articles',
      operationId: 'PublicGetMyArticleBookmarks',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///List comments for an article
  ///@param id
  ///@param pageIndex
  ///@param pageSize
  Future<chopper.Response<ArticleCommentDtoPaginatedResult>>
  PublicGetArticleComments({
    required String? id,
    int? pageIndex,
    int? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      ArticleCommentDtoPaginatedResult,
      () => ArticleCommentDtoPaginatedResult.fromJsonFactory,
    );

    return _PublicGetArticleComments(
      id: id,
      pageIndex: pageIndex,
      pageSize: pageSize,
    );
  }

  ///List comments for an article
  ///@param id
  ///@param pageIndex
  ///@param pageSize
  @GET(path: '/api/v1/public/articles/{id}/comments')
  Future<chopper.Response<ArticleCommentDtoPaginatedResult>>
  _PublicGetArticleComments({
    @Path('id') required String? id,
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns a paginated list of comments for a given article.
    Soft-deleted comments are included but their body is returned as null.
    

    **Authentication Requirements:**

    - No authentication required — anonymous access is permitted

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List comments for an article',
      operationId: 'PublicGetArticleComments',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Post a comment on an article
  ///@param id
  Future<chopper.Response<PublicAddArticleCommentResponse>>
  PublicAddArticleComment({
    required String? id,
    required PublicAddArticleCommentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicAddArticleCommentResponse,
      () => PublicAddArticleCommentResponse.fromJsonFactory,
    );

    return _PublicAddArticleComment(id: id, body: body);
  }

  ///Post a comment on an article
  ///@param id
  @POST(path: '/api/v1/public/articles/{id}/comments', optionalBody: true)
  Future<chopper.Response<PublicAddArticleCommentResponse>>
  _PublicAddArticleComment({
    @Path('id') required String? id,
    @Body() required PublicAddArticleCommentRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Posts a new comment on an article. The comment body must not exceed 1000 characters.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 201 Created on success with the comment DTO

    - Returns 400 Bad Request if the body exceeds the maximum length

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Post a comment on an article',
      operationId: 'PublicAddArticleComment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Remove a like from an article
  ///@param id
  Future<chopper.Response<PublicUnlikeArticleResponse>> PublicUnlikeArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicUnlikeArticleResponse,
      () => PublicUnlikeArticleResponse.fromJsonFactory,
    );

    return _PublicUnlikeArticle(id: id);
  }

  ///Remove a like from an article
  ///@param id
  @DELETE(path: '/api/v1/public/articles/{id}/likes')
  Future<chopper.Response<PublicUnlikeArticleResponse>> _PublicUnlikeArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes the authenticated user\'s like from an article.
    

    Returns 400 Bad Request if the user has not liked the article.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the user has not liked this article

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Remove a like from an article',
      operationId: 'PublicUnlikeArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Like an article
  ///@param id
  Future<chopper.Response<PublicLikeArticleResponse>> PublicLikeArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicLikeArticleResponse,
      () => PublicLikeArticleResponse.fromJsonFactory,
    );

    return _PublicLikeArticle(id: id);
  }

  ///Like an article
  ///@param id
  @POST(path: '/api/v1/public/articles/{id}/likes', optionalBody: true)
  Future<chopper.Response<PublicLikeArticleResponse>> _PublicLikeArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records that the authenticated user has liked an article.
    

    Returns 409 Conflict if the user has already liked the article.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the article does not exist

    - Returns 409 Conflict if the user has already liked this article

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Like an article',
      operationId: 'PublicLikeArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Remove a bookmark from an article
  ///@param id
  Future<chopper.Response<PublicUnbookmarkArticleResponse>>
  PublicUnbookmarkArticle({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicUnbookmarkArticleResponse,
      () => PublicUnbookmarkArticleResponse.fromJsonFactory,
    );

    return _PublicUnbookmarkArticle(id: id);
  }

  ///Remove a bookmark from an article
  ///@param id
  @DELETE(path: '/api/v1/public/articles/{id}/bookmarks')
  Future<chopper.Response<PublicUnbookmarkArticleResponse>>
  _PublicUnbookmarkArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes the authenticated user\'s bookmark from an article.
    

    Returns 400 Bad Request if the user has not bookmarked the article.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the user has not bookmarked this article

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Remove a bookmark from an article',
      operationId: 'PublicUnbookmarkArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Bookmark an article
  ///@param id
  Future<chopper.Response<PublicBookmarkArticleResponse>>
  PublicBookmarkArticle({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicBookmarkArticleResponse,
      () => PublicBookmarkArticleResponse.fromJsonFactory,
    );

    return _PublicBookmarkArticle(id: id);
  }

  ///Bookmark an article
  ///@param id
  @POST(path: '/api/v1/public/articles/{id}/bookmarks', optionalBody: true)
  Future<chopper.Response<PublicBookmarkArticleResponse>>
  _PublicBookmarkArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records that the authenticated user has bookmarked an article for later reading.
    

    Returns 409 Conflict if the user has already bookmarked the article.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the article does not exist

    - Returns 409 Conflict if the user has already bookmarked this article

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Bookmark an article',
      operationId: 'PublicBookmarkArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Record an article share
  ///@param id
  Future<chopper.Response<PublicShareArticleResponse>> PublicShareArticle({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicShareArticleResponse,
      () => PublicShareArticleResponse.fromJsonFactory,
    );

    return _PublicShareArticle(id: id);
  }

  ///Record an article share
  ///@param id
  @POST(path: '/api/v1/public/articles/{id}/shares', optionalBody: true)
  Future<chopper.Response<PublicShareArticleResponse>> _PublicShareArticle({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records a share event for an article. Works for both authenticated users and anonymous visitors.
    

    **Authentication Requirements:**

    - No authentication required — anonymous access is permitted

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 404 Not Found if the article does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Record an article share',
      operationId: 'PublicShareArticle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Edit an article comment
  ///@param id
  ///@param commentId
  Future<chopper.Response<PublicEditArticleCommentResponse>>
  PublicEditArticleComment({
    required String? id,
    required String? commentId,
    required PublicEditArticleCommentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicEditArticleCommentResponse,
      () => PublicEditArticleCommentResponse.fromJsonFactory,
    );

    return _PublicEditArticleComment(id: id, commentId: commentId, body: body);
  }

  ///Edit an article comment
  ///@param id
  ///@param commentId
  @PUT(
    path: '/api/v1/public/articles/{id}/comments/{commentId}',
    optionalBody: true,
  )
  Future<chopper.Response<PublicEditArticleCommentResponse>>
  _PublicEditArticleComment({
    @Path('id') required String? id,
    @Path('commentId') required String? commentId,
    @Body() required PublicEditArticleCommentRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the body of an existing article comment. Only the comment owner can edit their own comment.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the user is not the comment owner or body is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the comment does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Edit an article comment',
      operationId: 'PublicEditArticleComment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Delete own article comment
  ///@param id
  ///@param commentId
  Future<chopper.Response<PublicDeleteArticleCommentResponse>>
  PublicDeleteArticleComment({
    required String? id,
    required String? commentId,
  }) {
    generatedMapping.putIfAbsent(
      PublicDeleteArticleCommentResponse,
      () => PublicDeleteArticleCommentResponse.fromJsonFactory,
    );

    return _PublicDeleteArticleComment(id: id, commentId: commentId);
  }

  ///Delete own article comment
  ///@param id
  ///@param commentId
  @DELETE(path: '/api/v1/public/articles/{id}/comments/{commentId}')
  Future<chopper.Response<PublicDeleteArticleCommentResponse>>
  _PublicDeleteArticleComment({
    @Path('id') required String? id,
    @Path('commentId') required String? commentId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Soft-deletes an article comment. Users can only delete their own comments.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the user is not the comment owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the comment does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Delete own article comment',
      operationId: 'PublicDeleteArticleComment',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///List published articles
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param categoryId
  ///@param tagSlug
  Future<chopper.Response<PublicGetPublishedArticlesResponse>>
  GetPublishedArticles({
    int? pageIndex,
    int? pageSize,
    String? search,
    String? categoryId,
    String? tagSlug,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetPublishedArticlesResponse,
      () => PublicGetPublishedArticlesResponse.fromJsonFactory,
    );

    return _GetPublishedArticles(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      categoryId: categoryId,
      tagSlug: tagSlug,
    );
  }

  ///List published articles
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param categoryId
  ///@param tagSlug
  @GET(path: '/api/v1/public/articles')
  Future<chopper.Response<PublicGetPublishedArticlesResponse>>
  _GetPublishedArticles({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('categoryId') String? categoryId,
    @Query('tagSlug') String? tagSlug,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all published articles for public consumption.
    

    Supports optional filtering by category. Results are returned as a paginated list
    with summary information suitable for article feed and browsing views.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with paginated article list on success

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List published articles',
      operationId: 'GetPublishedArticles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///List featured articles
  Future<chopper.Response<PublicGetFeaturedArticlesResponse>>
  GetFeaturedArticles() {
    generatedMapping.putIfAbsent(
      PublicGetFeaturedArticlesResponse,
      () => PublicGetFeaturedArticlesResponse.fromJsonFactory,
    );

    return _GetFeaturedArticles();
  }

  ///List featured articles
  @GET(path: '/api/v1/public/articles/featured')
  Future<chopper.Response<PublicGetFeaturedArticlesResponse>>
  _GetFeaturedArticles({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the list of currently featured published articles for public consumption.
    

    Featured articles are handpicked published articles promoted on the homepage
    or highlighted sections of the site. Only published articles marked as featured
    are returned by this endpoint.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with the list of featured articles

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List featured articles',
      operationId: 'GetFeaturedArticles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///Get published article by slug
  ///@param slug
  Future<chopper.Response<PublicGetArticleBySlugResponse>> GetArticleBySlug({
    required String? slug,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetArticleBySlugResponse,
      () => PublicGetArticleBySlugResponse.fromJsonFactory,
    );

    return _GetArticleBySlug(slug: slug);
  }

  ///Get published article by slug
  ///@param slug
  @GET(path: '/api/v1/public/articles/{slug}')
  Future<chopper.Response<PublicGetArticleBySlugResponse>> _GetArticleBySlug({
    @Path('slug') required String? slug,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single published article by its URL slug.
    

    Returns the complete article including body content, cover image, SEO metadata,
    all associated images, and applied tags. Only published articles are accessible
    via this endpoint — drafts, pending review, and archived articles return 404.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with article details on success

    - Returns 404 Not Found if the article does not exist or is not published

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get published article by slug',
      operationId: 'GetArticleBySlug',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::articles"],
      deprecated: false,
    ),
  });

  ///List public categories
  ///@param contentTypeId
  Future<chopper.Response<PublicGetActiveCategoriesResponse>>
  PublicGetActiveCategories({String? contentTypeId}) {
    generatedMapping.putIfAbsent(
      PublicGetActiveCategoriesResponse,
      () => PublicGetActiveCategoriesResponse.fromJsonFactory,
    );

    return _PublicGetActiveCategories(contentTypeId: contentTypeId);
  }

  ///List public categories
  ///@param contentTypeId
  @GET(path: '/api/v1/public/categories')
  Future<chopper.Response<PublicGetActiveCategoriesResponse>>
  _PublicGetActiveCategories({
    @Query('contentTypeId') String? contentTypeId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the list of active categories available to public visitors.
    

    Powers the public-facing catalogue page so potential B2B clients can see what content
    formats 116 offers (e.g. "Artist Profile", "116 Le Focus", "Chronique Sale") before
    getting in touch. Also used by the frontend to build category filter tabs on the article
    and video feed pages.
    \n
    Only active categories are returned — deactivated formats are hidden from the public.
    An optional contentTypeId filter can narrow the list to a specific content type.
    \n
    **Authentication Requirements:**\n
    - No authentication required\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with the list of active categories\n''',
      summary: 'List public categories',
      operationId: 'PublicGetActiveCategories',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::categories"],
      deprecated: false,
    ),
  });

  ///Verify OTP code for account activation
  Future<chopper.Response<PublicVerifyOtpResponse>> PublicVerifyOtp({
    required PublicVerifyOtpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicVerifyOtpResponse,
      () => PublicVerifyOtpResponse.fromJsonFactory,
    );

    return _PublicVerifyOtp(body: body);
  }

  ///Verify OTP code for account activation
  @POST(path: '/api/v1/public/auth/verify-otp', optionalBody: true)
  Future<chopper.Response<PublicVerifyOtpResponse>> _PublicVerifyOtp({
    @Body() required PublicVerifyOtpRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Verifies the OTP (One-Time Password) code sent to the user\'s email for various purposes.
    The user must verify their account within the OTP expiration window to gain full access.
    

    **Supported OTP Purposes:**

    - **Email Verification**: During user account registration

    - **Account Recovery**: For account recovery processes

    

    This endpoint performs the following operations:

    - Validates the OTP code format (6-digit numeric)

    - Checks if the user exists and is not already verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Marks the user account as verified upon successful validation

    - Invalidates all remaining OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to users with unverified accounts

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Automatic cleanup of expired/used OTPs

    

    **Response Codes:**

    - Returns 200 OK with verification success status

    - Returns 400 Bad Request for invalid OTP code format

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for maximum attempts reached

    - Returns 404 Not Found for no valid OTP found

    - Returns 409 Conflict if account is already verified

    

    **Error Handling:**

    - BadRequestException (400): Invalid OTP code format or value

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found for the user

    - ConflictException (409): User account is already verified.''',
      summary: 'Verify OTP code for account activation',
      operationId: 'PublicVerifyOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Authenticate user via social provider
  Future<chopper.Response<PublicSocialLoginWebResponse>> PublicSocialLogin({
    required PublicSocialLoginRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicSocialLoginWebResponse,
      () => PublicSocialLoginWebResponse.fromJsonFactory,
    );

    return _PublicSocialLogin(body: body);
  }

  ///Authenticate user via social provider
  @POST(path: '/api/v1/public/auth/social-login', optionalBody: true)
  Future<chopper.Response<PublicSocialLoginWebResponse>> _PublicSocialLogin({
    @Body() required PublicSocialLoginRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates a user through external social providers (Google or Facebook).

    Social users are automatically verified and granted visitor role permissions.
    Avatar images from social providers are downloaded and stored locally.
    

    This endpoint performs the following operations:

    - Validates social provider data (email, username, avatar URL, provider)

    - Checks for existing local account conflicts

    - Creates new user account or updates existing social user

    - Downloads and stores avatar from social provider URL

    - Assigns visitor role to new users

    - Marks social users as verified and active

    

    **Authentication Requirements:**

    - No authentication required; open to the public for social login

    

    **Supported Providers:**

    - Google OAuth

    - Facebook OAuth

    

    **Security Features:**

    - Prevents social login if local account exists with same email

    - Downloads external avatars to prevent hotlinking

    - Automatically verifies social accounts (trusted providers)

    - Updates user login status

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token

    - Returns 400 Bad Request for invalid provider or malformed data

    - Returns 409 Conflict if local account exists with same email

    

    **Error Handling:**

    - BadRequestException (400): Invalid provider or malformed social data

    - ConflictException (409): Local account already exists with email.''',
      summary: 'Authenticate user via social provider',
      operationId: 'PublicSocialLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Register a new public user account
  Future<chopper.Response<PublicSignUpWebResponse>> PublicSignUp({
    required PublicSignUpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicSignUpWebResponse,
      () => PublicSignUpWebResponse.fromJsonFactory,
    );

    return _PublicSignUp(body: body);
  }

  ///Register a new public user account
  @POST(path: '/api/v1/public/auth/signup', optionalBody: true)
  Future<chopper.Response<PublicSignUpWebResponse>> _PublicSignUp({
    @Body() required PublicSignUpRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Registers a new public user by creating an account with the provided details.

    The created user account will initially have the Visitor role and related permissions,
    granting basic public access until further elevated by admins.
    

    This endpoint performs the following operations:

    - Validates signup data (email, username, password, etc.)

    - Ensures the email/username is unique

    - Hashes the password using secure algorithms (bcrypt)

    - Creates a new public user account in the system

    - Triggers optional account verification (email/SMS)

    

    **Authentication Requirements:**

    - No authentication required; open to the public for account creation

    

    **Security Features:**

    - Password securely hashed before storage

    - Uniqueness checks on email and username

    - Optional verification workflow (e.g., email confirmation)

    

    **Response Codes:**

    - Returns 201 Created with newly created user info (excluding sensitive data)

    - Returns 400 Bad Request for invalid input or weak password

    - Returns 409 Conflict if email/username already exists

    

    **Error Handling:**

    - BadRequestException (400): Invalid signup data (missing/invalid fields, weak password)

    - ConflictException (409): Email or username already in use.''',
      summary: 'Register a new public user account',
      operationId: 'PublicSignUp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Sign out the authenticated user from all devices
  Future<chopper.Response<PublicSignOutFromAllDevicesResponse>>
  PublicSignOutFromAllDevices() {
    generatedMapping.putIfAbsent(
      PublicSignOutFromAllDevicesResponse,
      () => PublicSignOutFromAllDevicesResponse.fromJsonFactory,
    );

    return _PublicSignOutFromAllDevices();
  }

  ///Sign out the authenticated user from all devices
  @POST(path: '/api/v1/public/auth/sign-out-all', optionalBody: true)
  Future<chopper.Response<PublicSignOutFromAllDevicesResponse>>
  _PublicSignOutFromAllDevices({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated user from all devices by invalidating all active sessions.
    After successful sign-out, all refresh tokens will be revoked and the user must re-authenticate on all devices.
    

    This endpoint is commonly used:

    - After password changes (security best practice)

    - When user suspects account compromise

    - When enabling two-factor authentication

    - As a "Sign Out Everywhere" feature\n
    \n
    **Authentication Requirements:**\n
    - Valid JWT Bearer token\n
    - Account must be active (not suspended)\n
    - Verification status is not required for sign-out\n
    \n
    **Security Features:**\n
    - Invalidates all active sessions across all devices\n
    - Uses soft delete for session tracking and analytics\n
    - Prevents token reuse after sign-out\n
    - Idempotent operation (safe to call multiple times)\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with success status\n
    - Returns 401 Unauthorized for invalid/missing JWT token\n
    - Returns 403 Forbidden for inactive accounts\n
    \n
    **Process Flow:**\n
    1. Extracts user ID from JWT token\n
    2. Validates account is active\n
    3. Soft deletes all active sessions for the user\n
    4. Returns success response.''',
      summary: 'Sign out the authenticated user from all devices',
      operationId: 'PublicSignOutFromAllDevices',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Sign out the authenticated user
  Future<chopper.Response<PublicSignOutResponse>> PublicSignOut({
    required PublicSignOutRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicSignOutResponse,
      () => PublicSignOutResponse.fromJsonFactory,
    );

    return _PublicSignOut(body: body);
  }

  ///Sign out the authenticated user
  @POST(path: '/api/v1/public/auth/sign-out', optionalBody: true)
  Future<chopper.Response<PublicSignOutResponse>> _PublicSignOut({
    @Body() required PublicSignOutRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated user by updating their login status.
    After successful sign-out, the client should discard the JWT token.
    

    This endpoint performs secure sign-out by:

    - Validating JWT token authentication

    - Verifying account is active (not suspended/banned)

    - Updating user login status in the database

    - Allowing unverified accounts to sign out

    

    **Authentication Requirements:**

    - Valid JWT Bearer token

    - Account must be active (not suspended)

    - Verification status is not required for sign-out

    

    **Security Features:**

    - Only active accounts can perform sign-out

    - Prevents unnecessary database updates if already logged out

    - Always returns success for consistent UX

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts

    

    **Process Flow:**

    1. Extracts user ID from JWT token

    2. Validates account is active

    3. Updates login status if currently logged in

    4. Returns success response.''',
      summary: 'Sign out the authenticated user',
      operationId: 'PublicSignOut',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Set password for external auth users (Google/Facebook)
  Future<chopper.Response<PublicSetPasswordResponse>> PublicSetPassword({
    required PublicSetPasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicSetPasswordResponse,
      () => PublicSetPasswordResponse.fromJsonFactory,
    );

    return _PublicSetPassword(body: body);
  }

  ///Set password for external auth users (Google/Facebook)
  @POST(path: '/api/v1/public/auth/set-password', optionalBody: true)
  Future<chopper.Response<PublicSetPasswordResponse>> _PublicSetPassword({
    @Body() required PublicSetPasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Allows users who authenticated via external providers (Google/Facebook) to set a password for local authentication.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active

    - Checks that user has an email address configured

    - Validates that user\'s current auth provider is Google or Facebook (not Local)

    - Hashes the new password using secure algorithms

    - Sets the password and changes auth provider to Local

    - Updates the user in the database

    

    **Request Requirements:**

    - Valid password meeting security requirements

    - User must be authenticated with valid JWT token

    - User must have authenticated via Google or Facebook originally

    - User must have an email address configured

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for missing email, already set password, or invalid auth provider

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts

    - Returns 404 Not Found for user not found

    

    **Error Handling:**

    - BadRequestException (400): Missing email, password already set, or not external auth user

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not active

    - NotFoundException (404): User not found

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Validates password requirements

    3. Finds user by ID and validates account status

    4. Checks that user has an email address

    5. Validates user\'s current auth provider is Google or Facebook

    6. Hashes new password securely

    7. Sets password and changes auth provider to Local

    8. Updates user in database

    9. Returns success response.

    

    **Note:** After successfully setting a password, users can log in using their email and password,

    in addition to continuing to use their external authentication provider.''',
      summary: 'Set password for external auth users (Google/Facebook)',
      operationId: 'PublicSetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Reset user password using OTP verification
  Future<chopper.Response<PublicResetPasswordResponse>> PublicResetPassword({
    required PublicResetPasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicResetPasswordResponse,
      () => PublicResetPasswordResponse.fromJsonFactory,
    );

    return _PublicResetPassword(body: body);
  }

  ///Reset user password using OTP verification
  @POST(path: '/api/v1/public/auth/reset-password', optionalBody: true)
  Future<chopper.Response<PublicResetPasswordResponse>> _PublicResetPassword({
    @Body() required PublicResetPasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resets a user\'s password after validating the OTP code sent during the forgot password process.
    After successful password reset, the user can login with their new password.
    

    This endpoint performs the following operations:

    - Validates the OTP code format and authenticity

    - Checks if the user exists and is active/verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Hashes the new password using secure algorithms

    - Updates the user\'s password in the database

    - Invalidates all remaining password reset OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to users with valid OTP codes

    - User account must be active and verified

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Secure password hashing (PBKDF2 with SHA-256)

    - Automatic cleanup of expired/used OTPs

    - Password validation enforced by validator

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP code (6-digit numeric)

    - New password meeting security requirements

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid input or inactive account

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for max attempts reached or unverified account

    - Returns 404 Not Found for no valid OTP found or user not found

    

    **Error Handling:**

    - BadRequestException (400): Invalid input format, inactive account, or invalid OTP

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached or account not verified

    - NotFoundException (404): No valid OTP found or user not found

    

    **Process Flow:**

    1. Validates email format and password requirements

    2. Finds user by email address

    3. Validates account is active and verified

    4. Validates OTP code for password reset purpose

    5. Hashes new password securely

    6. Updates user\'s password

    7. Marks OTP as used and invalidates remaining OTPs

    8. Returns success response.''',
      summary: 'Reset user password using OTP verification',
      operationId: 'PublicResetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Resend OTP verification code for public users
  Future<chopper.Response<PublicResendOtpResponse>> PublicResendOtp({
    required PublicResendOtpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicResendOtpResponse,
      () => PublicResendOtpResponse.fromJsonFactory,
    );

    return _PublicResendOtp(body: body);
  }

  ///Resend OTP verification code for public users
  @POST(path: '/api/v1/public/auth/resend-otp', optionalBody: true)
  Future<chopper.Response<PublicResendOtpResponse>> _PublicResendOtp({
    @Body() required PublicResendOtpRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resends a new OTP verification code for public users by invalidating existing OTPs and generating a fresh one.
    

    This endpoint enables users to request a new verification code when:

    - The original OTP wasn\'t received

    - The previous OTP has expired

    - There were issues with email delivery

    - Maximum attempts were reached on the previous OTP

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP purpose (EmailVerification, PasswordReset, TwoFactorAuthentication, AccountRecovery)

    - Account must be active

    

    **Security Features:**

    - Account active status validation

    - Automatic invalidation of existing OTPs for the specified purpose

    - New OTP generation with fresh expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status when OTP is resent

    - Returns 400 Bad Request for invalid email format or purpose

    - Returns 404 Not Found when user doesn\'t exist

    - Returns 403 Forbidden when user account is inactive

    

    **Process Flow:**

    1. Validates email format and OTP purpose

    2. Verifies user exists

    3. Checks account is active and verified

    4. Invalidates all existing OTPs for the specified purpose

    5. Generates new OTP with fresh expiration

    6. Returns success response

    

    **Supported OTP Purposes:**

    - EmailVerification: For email address verification

    - PasswordReset: For password reset requests

    - TwoFactorAuthentication: For 2FA setup/verification

    - AccountRecovery: For account recovery processes''',
      summary: 'Resend OTP verification code for public users',
      operationId: 'PublicResendOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Authenticate public user and return JWT token with user claims
  Future<chopper.Response<PublicLoginWebResponse>> PublicLogin({
    required PublicLoginRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicLoginWebResponse,
      () => PublicLoginWebResponse.fromJsonFactory,
    );

    return _PublicLogin(body: body);
  }

  ///Authenticate public user and return JWT token with user claims
  @POST(path: '/api/v1/public/auth/login', optionalBody: true)
  Future<chopper.Response<PublicLoginWebResponse>> _PublicLogin({
    @Body() required PublicLoginRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates a public user using email/userName and password credentials.
    The returned JWT token includes claims for accessing public user\'s endpoints.
    

    This endpoint performs enhanced authentication by:

    - Validating credentials and password

    - Verifying the account is active and verified

    - Generating JWT token with appropriate user claims

    - Recording the login activity

    

    **Authentication Requirements:**

    - Valid email/userName and password combination

    - Account must be active and verified

    

    **Security Features:**

    - Password verification using secure hashing (bcrypt)

    - Login activity tracking

    - Basic JWT claims for public users operations

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token on successful authentication

    - Returns 400 Bad Request for invalid email/userName or incorrect password

    - Returns 403 Forbidden when user account is inactive or disabled

    - Returns 404 Not Found when no user exists with the provided email/userName

    

    **Error Handling:**

    - AuthorizationException (403): Account inactive - user exists but account is disabled/suspended

    - BadRequestException (400): Invalid password - email/userName exists but password is incorrect

    - NotFoundException (404): User not found - no account exists with the provided email/userName.''',
      summary: 'Authenticate public user and return JWT token with user claims',
      operationId: 'PublicLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Initiate password reset process for existing users
  Future<chopper.Response<PublicForgotPasswordResponse>> PublicForgotPassword({
    required PublicForgotPasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicForgotPasswordResponse,
      () => PublicForgotPasswordResponse.fromJsonFactory,
    );

    return _PublicForgotPassword(body: body);
  }

  ///Initiate password reset process for existing users
  @POST(path: '/api/v1/public/auth/forgot-password', optionalBody: true)
  Future<chopper.Response<PublicForgotPasswordResponse>> _PublicForgotPassword({
    @Body() required PublicForgotPasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Initiates the password reset process by generating an OTP for the specified email address.
    The generated OTP can be used with the verify-otp endpoint to proceed with password reset.
    

    This endpoint follows security best practices by:

    - Always returning success to prevent user enumeration attacks

    - Only generating OTP for valid, active, and verified accounts

    - Silently handling cases where email doesn\'t exist or account is inactive

    

    **Request Requirements:**

    - Valid email address format

    - Email must belong to an existing, active, and verified account

    

    **Security Features:**

    - User enumeration protection (consistent response regardless of email existence)

    - Account status validation (active and verified)

    - OTP generation with expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status (always true for security) and the email address

    - Returns 400 Bad Request for invalid email format

    

    **Process Flow:**

    1. Validates email format

    2. Checks if user exists and is active/verified

    3. Generates OTP for password reset

    4. Returns success response (regardless of actual outcome).''',
      summary: 'Initiate password reset process for existing users',
      operationId: 'PublicForgotPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Change user password with current password verification
  Future<chopper.Response<PublicChangePasswordResponse>> PublicChangePassword({
    required PublicChangePasswordRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicChangePasswordResponse,
      () => PublicChangePasswordResponse.fromJsonFactory,
    );

    return _PublicChangePassword(body: body);
  }

  ///Change user password with current password verification
  @PATCH(path: '/api/v1/public/auth/change-password', optionalBody: true)
  Future<chopper.Response<PublicChangePasswordResponse>> _PublicChangePassword({
    @Body() required PublicChangePasswordRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Changes a user\'s password after verifying their current password for security.

    After successful password change, the user continues using their existing session.
    The new password will be required for future logins.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Validates the current password against stored hash

    - Ensures new password is different from current password

    - Hashes the new password using secure algorithms

    - Updates the user\'s password in the database

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only visitor role users can change their password

    

    **Security Features:**

    - Current password verification for authorization

    - Prevention of reusing the same password

    - Secure password hashing (PBKDF2 with SHA-256)

    - Strong password validation enforced by validator

    - Account status validation before password change

    

    **Request Requirements:**

    - Valid old password for verification

    - New password meeting security requirements

    - User must be authenticated with valid JWT token

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid old password or same password

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for new password same as old

    

    **Error Handling:**

    - BadRequestException (400): Invalid old password or inactive account

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): New password same as current password

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Validates old password and new password requirements

    3. Finds user by ID and validates account status

    4. Verifies current password matches provided old password

    5. Ensures new password is different from current password

    6. Hashes new password securely

    7. Updates user\'s password in database

    8. Returns success response.''',
      summary: 'Change user password with current password verification',
      operationId: 'PublicChangePassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  });

  ///Get lyrics by song title and artist name
  ///@param songTitle
  ///@param artistName
  Future<chopper.Response<PublicGetLyricsBySlugResponse>> GetLyricsBySlug({
    required String? songTitle,
    required String? artistName,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetLyricsBySlugResponse,
      () => PublicGetLyricsBySlugResponse.fromJsonFactory,
    );

    return _GetLyricsBySlug(songTitle: songTitle, artistName: artistName);
  }

  ///Get lyrics by song title and artist name
  ///@param songTitle
  ///@param artistName
  @GET(path: '/api/v1/public/lyrics/{songTitle}/{artistName}')
  Future<chopper.Response<PublicGetLyricsBySlugResponse>> _GetLyricsBySlug({
    @Path('songTitle') required String? songTitle,
    @Path('artistName') required String? artistName,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a lyrics page using the song title and artist name as URL path parameters.
    This endpoint is designed for SEO-friendly public access to lyrics pages
    (e.g., <c>/api/v1/public/lyrics/eloko-oyo/fally-ipupa</c>).
    

    The lookup is case-insensitive.
    

    **Authentication Requirements:**

    - No authentication required (public endpoint)

    

    **Response Codes:**

    - Returns 200 OK with lyrics details on success

    - Returns 404 Not Found if no lyrics match the given song title and artist name

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get lyrics by song title and artist name',
      operationId: 'GetLyricsBySlug',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::lyrics"],
      deprecated: false,
    ),
  });

  ///Retrieve authenticated user's complete profile information
  Future<chopper.Response<PublicGetOwnProfileResponse>> PublicGetOwnProfile() {
    generatedMapping.putIfAbsent(
      PublicGetOwnProfileResponse,
      () => PublicGetOwnProfileResponse.fromJsonFactory,
    );

    return _PublicGetOwnProfile();
  }

  ///Retrieve authenticated user's complete profile information
  @GET(path: '/api/v1/public/me/profile')
  Future<chopper.Response<PublicGetOwnProfileResponse>> _PublicGetOwnProfile({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the complete profile information for the currently authenticated user.

    This endpoint provides all necessary user information for client applications
    to display profile details and manage user-specific functionality.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Retrieves complete user information including roles and permissions

    - Fetches user avatar file information if available

    - Returns comprehensive user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only visitor role users can access their profile

    

    **Returned Information:**

    - Basic user details (ID, email, username, verification status)

    - User roles and associated permissions

    - Avatar file information (if available)

    - Account status and activity information

    - Authentication provider information (local/social)

    

    **Security Features:**

    - User can only access their own profile information

    - Account status validation before profile retrieval

    - Comprehensive permission and role information for authorization

    - Avatar file security through proper file service integration

    

    **Response Codes:**

    - Returns 200 OK with complete user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    

    **Use Cases:**

    - Display user profile information in client applications

    - Determine user permissions for UI/UX customization

    - Validate user account status and verification

    - Access avatar and display user information

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds user by ID and validates account status

    3. Retrieves user roles and permissions

    4. Fetches avatar file information if available

    5. Maps complete user data to response DTO

    6. Returns comprehensive user profile information.''',
      summary: 'Retrieve authenticated user\'s complete profile information',
      operationId: 'PublicGetOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me"],
      deprecated: false,
    ),
  });

  ///Update authenticated user's own profile information
  Future<chopper.Response<PublicUpdateOwnProfileResponse>>
  PublicUpdateOwnProfile({required PublicUpdateOwnProfileRequest? body}) {
    generatedMapping.putIfAbsent(
      PublicUpdateOwnProfileResponse,
      () => PublicUpdateOwnProfileResponse.fromJsonFactory,
    );

    return _PublicUpdateOwnProfile(body: body);
  }

  ///Update authenticated user's own profile information
  @PATCH(path: '/api/v1/public/me/profile', optionalBody: true)
  Future<chopper.Response<PublicUpdateOwnProfileResponse>>
  _PublicUpdateOwnProfile({
    @Body() required PublicUpdateOwnProfileRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the profile information for the currently authenticated user.

    This endpoint requires user authentication - only logged-in users can update their own profile,
    providing secure profile management for authenticated users
    while maintaining data integrity and security requirements.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Validates uniqueness for email, username, and phone number if being updated

    - Updates user profile information selectively

    - Returns updated user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only logged-in users can update their profile

    

    **Updateable Information:**

    - Email address (triggers re-verification and logout)

    - Username (must be unique across the system)

    - Phone number with country information

    - Country details (name, ISO code, dial code)

    

    **Security Features:**

    - User can only update their own profile information

    - Account status validation before updates

    - Uniqueness validation for email, username, and phone

    - Email update triggers account re-verification

    

    **Response Codes:**

    - Returns 200 OK with updated user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for duplicate email/username/phone

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): Email, username, or phone already exists

    

    **Use Cases:**

    - Update user profile information in client applications

    - Change email address (requires re-verification)

    - Update contact information and location details

    - Modify username for personal branding

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds user by ID and validates account status

    3. Validates uniqueness for updated fields

    4. Updates user profile information selectively

    5. Saves changes to database

    6. Returns updated user profile data

    

    **Important Notes:**

    - Email updates reset verification status and force logout

    - Phone number updates include country information

    - Only provided fields are updated (partial updates supported)

    - All validations are performed before any updates.''',
      summary: 'Update authenticated user\'s own profile information',
      operationId: 'PublicUpdateOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me"],
      deprecated: false,
    ),
  });

  ///Update user avatar via file upload
  Future<chopper.Response<PublicUpdateAvatarResponse>> PublicUpdateAvatar({
    required MultipartFile avatarFile,
  }) {
    generatedMapping.putIfAbsent(
      PublicUpdateAvatarResponse,
      () => PublicUpdateAvatarResponse.fromJsonFactory,
    );

    return _PublicUpdateAvatar(avatarFile: avatarFile);
  }

  ///Update user avatar via file upload
  @PATCH(path: '/api/v1/public/me/avatar', optionalBody: true)
  @Multipart()
  Future<chopper.Response<PublicUpdateAvatarResponse>> _PublicUpdateAvatar({
    @PartFile() required MultipartFile avatarFile,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the authenticated user\'s avatar by uploading an image file.

    This endpoint accepts multipart/form-data file uploads and stores the image in Cloudinary cloud storage.
    The system will automatically delete any previous avatar when a new one is uploaded.
    Only verified users can update their avatar to maintain profile quality and security.
    

    **Authentication Requirements:**

    - User must be logged in (JWT token required)

    - Account must be active and verified

    

    **Request Requirements:**

    - Content-Type: multipart/form-data

    - Form field name: "avatarFile"\n
    - Allowed file types: JPEG, PNG, GIF, WebP\n
    - Maximum file size: 1MB\n
    - File must be a valid image\n
    \n
    **Avatar Management:**\n
    - Previous avatar is automatically deleted from cloud storage\n
    - Images are stored in Cloudinary with automatic optimization\n
    - Secure HTTPS URLs are generated for accessing avatars\n
    - Smart quality optimization and format conversion\n
    \n
    **Response Codes:**\n
    - Returns 200 OK with updated user information including new avatar\n
    - Returns 400 Bad Request for invalid file type, size, or missing file\n
    - Returns 401 Unauthorized for unauthenticated requests\n
    - Returns 403 Forbidden for inactive or unverified accounts\n
    - Returns 404 Not Found when user doesn\'t exist\n
    \n
    **Security Features:**\n
    - Only the authenticated user can update their own avatar\n
    - Account verification required (verified accounts only)\n
    - File type and size validation\n
    - Automatic cleanup of old avatar files from cloud storage\n
    - Secure signed uploads to Cloudinary\n
    \n
    **Process Flow:**\n
    1. Validates user authentication and account status\n
    2. Validates the uploaded file (type, size, format)\n
    3. Uploads the new avatar to Cloudinary cloud storage\n
    4. Deletes the previous avatar from cloud storage (if exists)\n
    5. Updates user record with new avatar reference\n
    6. Returns updated user information with avatar details\n
    \n
    **Example cURL Request:**\n
    ```
    curl -X PATCH https://api.example.com/api/v1/public/profile/avatar \
      -H "Authorization: Bearer YOUR_JWT_TOKEN" \
      -F "avatarFile=@/path/to/image.jpg"
    ```''',
      summary: 'Update user avatar via file upload',
      operationId: 'PublicUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me"],
      deprecated: false,
    ),
  });

  ///Retrieve the authenticated user's roles and permissions
  Future<chopper.Response<PublicGetOwnRolesResponse>> PublicGetOwnRoles() {
    generatedMapping.putIfAbsent(
      PublicGetOwnRolesResponse,
      () => PublicGetOwnRolesResponse.fromJsonFactory,
    );

    return _PublicGetOwnRoles();
  }

  ///Retrieve the authenticated user's roles and permissions
  @GET(path: '/api/v1/public/me/roles')
  Future<chopper.Response<PublicGetOwnRolesResponse>> _PublicGetOwnRoles({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves all roles assigned to the currently authenticated user, each including
    its full set of permissions.

    

    This endpoint is intended for client applications that need to determine what
    features and actions the current user is allowed to perform, enabling role-based
    UI rendering and frontend access control.

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Only visitor role users can access this endpoint

    

    **Returned Information:**

    - List of roles assigned to the user

    - Each role includes its name, description, active status, and full permission list

    

    **Response Codes:**

    - Returns 200 OK with the user\'s roles and permissions

    - Returns 401 Unauthorized for invalid or missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found if the user no longer exists
''',
      summary: 'Retrieve the authenticated user\'s roles and permissions',
      operationId: 'PublicGetOwnRoles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me"],
      deprecated: false,
    ),
  });

  ///Retrieve all sessions for the authenticated user
  ///@param isActive
  Future<chopper.Response<PublicGetOwnSessionsResponse>> PublicGetOwnSessions({
    bool? isActive,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetOwnSessionsResponse,
      () => PublicGetOwnSessionsResponse.fromJsonFactory,
    );

    return _PublicGetOwnSessions(isActive: isActive);
  }

  ///Retrieve all sessions for the authenticated user
  ///@param isActive
  @GET(path: '/api/v1/public/me/sessions')
  Future<chopper.Response<PublicGetOwnSessionsResponse>> _PublicGetOwnSessions({
    @Query('isActive') bool? isActive,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a list of all sessions (devices) for the currently authenticated user.
    Supports filtering by session status (active/inactive).
    

    This endpoint provides session management by:

    - Listing all user sessions across different devices

    - Showing device information (IP address, device name, user agent)

    - Indicating session status (active or expired)

    - Displaying session creation and expiration times

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User can only view their own sessions

    

    **Query Parameters:**

    - isActive (optional): Filter sessions by status

      - true: Only active sessions

      - false: Only expired/inactive sessions

      - null/omitted: All sessions

    

    **Use Cases:**

    - View all active login sessions

    - Identify unrecognized devices

    - Manage active sessions before revoking specific ones

    - Security audit of login history

    

    **Response Codes:**

    - Returns 200 OK with list of sessions

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    

    **Session Information Includes:**

    - Session ID for revoking specific sessions

    - IP address of the device

    - Device name and user agent string

    - Creation timestamp

    - Expiration timestamp

    - Active status (computed from expiration time and deletion status)''',
      summary: 'Retrieve all sessions for the authenticated user',
      operationId: 'PublicGetOwnSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me::sessions"],
      deprecated: false,
    ),
  });

  ///Retrieve a specific session by ID
  ///@param id
  Future<chopper.Response<PublicGetOwnSessionByIdResponse>>
  PublicGetOwnSessionById({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicGetOwnSessionByIdResponse,
      () => PublicGetOwnSessionByIdResponse.fromJsonFactory,
    );

    return _PublicGetOwnSessionById(id: id);
  }

  ///Retrieve a specific session by ID
  ///@param id
  @GET(path: '/api/v1/public/me/sessions/{id}')
  Future<chopper.Response<PublicGetOwnSessionByIdResponse>>
  _PublicGetOwnSessionById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves detailed information about a specific session identified by its ID.
    The session must belong to the authenticated user.
    

    This endpoint provides session details by:

    - Validating the session ID from the route parameter

    - Verifying the session belongs to the authenticated user

    - Returning complete session metadata and status

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User can only view their own sessions

    

    **Use Cases:**

    - View detailed information about a specific session

    - Check session status before revoking

    - Verify device information for security auditing

    - Display session details in user dashboard

    

    **Security Features:**

    - Session ownership verification prevents viewing other users\' sessions

    - Returns 404 (not 403) for unauthorized access to prevent session enumeration

    

    **Response Codes:**

    - Returns 200 OK with session details on success

    - Returns 400 Bad Request if session ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

    

    **Session Information Includes:**

    - Session ID

    - IP address of the device

    - Device name and user agent string

    - Creation timestamp

    - Expiration timestamp

    - Active status (computed from expiration time and deletion status)

    

    **Error Handling:**

    - NotFoundException (404): Session not found or doesn\'t belong to user''',
      summary: 'Retrieve a specific session by ID',
      operationId: 'PublicGetOwnSessionById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me::sessions"],
      deprecated: false,
    ),
  });

  ///Revoke a specific session (log out from a device)
  ///@param id
  Future<chopper.Response<PublicRevokeSessionResponse>> PublicRevokeSession({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicRevokeSessionResponse,
      () => PublicRevokeSessionResponse.fromJsonFactory,
    );

    return _PublicRevokeSession(id: id);
  }

  ///Revoke a specific session (log out from a device)
  ///@param id
  @POST(path: '/api/v1/public/me/sessions/revoke/{id}', optionalBody: true)
  Future<chopper.Response<PublicRevokeSessionResponse>> _PublicRevokeSession({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Revokes (logs out from) a specific session identified by its ID.
    This allows users to remotely log out from other devices.
    

    This endpoint performs session revocation by:

    - Validating the session ID from the route parameter

    - Verifying the session belongs to the authenticated user

    - Soft deleting the session (marking it as inactive)

    - Invalidating all tokens associated with that session

    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User can only revoke their own sessions

    

    **Use Cases:**

    - Log out from a specific device remotely

    - Remove unrecognized or suspicious sessions

    - Clean up old sessions after viewing session list

    - Security response to potential account compromise

    

    **Security Features:**

    - Session ownership verification prevents revoking other users\' sessions

    - Soft delete ensures session history is maintained for audit purposes

    - Immediate invalidation prevents further use of associated tokens

    

    **Response Codes:**

    - Returns 200 OK with success flag on successful revocation

    - Returns 400 Bad Request if session ID is invalid

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 403 Forbidden if user lacks required permissions

    - Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

    

    **Error Handling:**

    - NotFoundException (404): Session not found or doesn\'t belong to user

    - Attempting to revoke another user\'s session returns 404 (not 403) to prevent session enumeration attacks''',
      summary: 'Revoke a specific session (log out from a device)',
      operationId: 'PublicRevokeSession',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::me::sessions"],
      deprecated: false,
    ),
  });

  ///Get a playlist by ID
  ///@param id
  Future<chopper.Response<PlaylistDetailDto>> PublicGetPlaylistById({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PlaylistDetailDto,
      () => PlaylistDetailDto.fromJsonFactory,
    );

    return _PublicGetPlaylistById(id: id);
  }

  ///Get a playlist by ID
  ///@param id
  @GET(path: '/api/v1/public/playlists/{id}')
  Future<chopper.Response<PlaylistDetailDto>> _PublicGetPlaylistById({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns the detail view of a playlist including all its videos.
    Only the playlist owner can view the playlist.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the requesting user is not the playlist owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the playlist does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get a playlist by ID',
      operationId: 'PublicGetPlaylistById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Rename a playlist
  ///@param id
  Future<chopper.Response<PublicRenamePlaylistResponse>> PublicRenamePlaylist({
    required String? id,
    required PublicRenamePlaylistRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicRenamePlaylistResponse,
      () => PublicRenamePlaylistResponse.fromJsonFactory,
    );

    return _PublicRenamePlaylist(id: id, body: body);
  }

  ///Rename a playlist
  ///@param id
  @PUT(path: '/api/v1/public/playlists/{id}', optionalBody: true)
  Future<chopper.Response<PublicRenamePlaylistResponse>> _PublicRenamePlaylist({
    @Path('id') required String? id,
    @Body() required PublicRenamePlaylistRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the display name of a playlist owned by the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if validation fails or user is not the owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the playlist does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Rename a playlist',
      operationId: 'PublicRenamePlaylist',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Delete a playlist
  ///@param id
  Future<chopper.Response<PublicDeletePlaylistResponse>> PublicDeletePlaylist({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicDeletePlaylistResponse,
      () => PublicDeletePlaylistResponse.fromJsonFactory,
    );

    return _PublicDeletePlaylist(id: id);
  }

  ///Delete a playlist
  ///@param id
  @DELETE(path: '/api/v1/public/playlists/{id}')
  Future<chopper.Response<PublicDeletePlaylistResponse>> _PublicDeletePlaylist({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Permanently deletes a playlist owned by the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the requesting user is not the playlist owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the playlist does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Delete a playlist',
      operationId: 'PublicDeletePlaylist',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Get my playlists
  Future<chopper.Response<List<PlaylistDto>>> PublicGetMyPlaylists() {
    generatedMapping.putIfAbsent(
      PlaylistDto,
      () => PlaylistDto.fromJsonFactory,
    );

    return _PublicGetMyPlaylists();
  }

  ///Get my playlists
  @GET(path: '/api/v1/public/playlists')
  Future<chopper.Response<List<PlaylistDto>>> _PublicGetMyPlaylists({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''    Returns all playlists owned by the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get my playlists',
      operationId: 'PublicGetMyPlaylists',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Create a new playlist
  Future<chopper.Response<PublicCreatePlaylistResponse>> PublicCreatePlaylist({
    required PublicCreatePlaylistRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicCreatePlaylistResponse,
      () => PublicCreatePlaylistResponse.fromJsonFactory,
    );

    return _PublicCreatePlaylist(body: body);
  }

  ///Create a new playlist
  @POST(path: '/api/v1/public/playlists', optionalBody: true)
  Future<chopper.Response<PublicCreatePlaylistResponse>> _PublicCreatePlaylist({
    @Body() required PublicCreatePlaylistRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Creates a new playlist owned by the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 201 Created on success with the playlist DTO

    - Returns 400 Bad Request if validation fails

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Create a new playlist',
      operationId: 'PublicCreatePlaylist',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Remove a video from a playlist
  ///@param id
  ///@param videoId
  Future<chopper.Response<PublicRemoveVideoFromPlaylistResponse>>
  PublicRemoveVideoFromPlaylist({
    required String? id,
    required String? videoId,
  }) {
    generatedMapping.putIfAbsent(
      PublicRemoveVideoFromPlaylistResponse,
      () => PublicRemoveVideoFromPlaylistResponse.fromJsonFactory,
    );

    return _PublicRemoveVideoFromPlaylist(id: id, videoId: videoId);
  }

  ///Remove a video from a playlist
  ///@param id
  ///@param videoId
  @DELETE(path: '/api/v1/public/playlists/{id}/videos/{videoId}')
  Future<chopper.Response<PublicRemoveVideoFromPlaylistResponse>>
  _PublicRemoveVideoFromPlaylist({
    @Path('id') required String? id,
    @Path('videoId') required String? videoId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes a video from the authenticated user\'s playlist.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the requesting user is not the playlist owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the playlist does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Remove a video from a playlist',
      operationId: 'PublicRemoveVideoFromPlaylist',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Add a video to a playlist
  ///@param id
  Future<chopper.Response<PublicAddVideoToPlaylistResponse>>
  PublicAddVideoToPlaylist({
    required String? id,
    required PublicAddVideoToPlaylistRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicAddVideoToPlaylistResponse,
      () => PublicAddVideoToPlaylistResponse.fromJsonFactory,
    );

    return _PublicAddVideoToPlaylist(id: id, body: body);
  }

  ///Add a video to a playlist
  ///@param id
  @POST(path: '/api/v1/public/playlists/{id}/videos', optionalBody: true)
  Future<chopper.Response<PublicAddVideoToPlaylistResponse>>
  _PublicAddVideoToPlaylist({
    @Path('id') required String? id,
    @Body() required PublicAddVideoToPlaylistRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Adds a published video to the authenticated user\'s playlist.
    Returns 409 Conflict if the video is already in the playlist.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the requesting user is not the playlist owner

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the playlist or video does not exist

    - Returns 409 Conflict if the video is already in the playlist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Add a video to a playlist',
      operationId: 'PublicAddVideoToPlaylist',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::playlists"],
      deprecated: false,
    ),
  });

  ///Get active promotion levels
  Future<chopper.Response<PublicGetActivePromotionLevelsResponse>>
  PublicGetActivePromotionLevels() {
    generatedMapping.putIfAbsent(
      PublicGetActivePromotionLevelsResponse,
      () => PublicGetActivePromotionLevelsResponse.fromJsonFactory,
    );

    return _PublicGetActivePromotionLevels();
  }

  ///Get active promotion levels
  @GET(path: '/api/v1/public/promotion-levels')
  Future<chopper.Response<PublicGetActivePromotionLevelsResponse>>
  _PublicGetActivePromotionLevels({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns all currently active promotion levels for content discovery and purchasing decisions.
    

    This endpoint is publicly accessible and does not require authentication.
    

    **Response Codes:**

    - Returns 200 OK with the list of active promotion levels on success

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get active promotion levels',
      operationId: 'PublicGetActivePromotionLevels',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::promotion-levels"],
      deprecated: false,
    ),
  });

  ///Refresh access token using a valid refresh token
  Future<chopper.Response<PublicRefreshTokenWebResponse>> PublicRefreshToken({
    required PublicRefreshTokenRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicRefreshTokenWebResponse,
      () => PublicRefreshTokenWebResponse.fromJsonFactory,
    );

    return _PublicRefreshToken(body: body);
  }

  ///Refresh access token using a valid refresh token
  @POST(path: '/api/v1/public/sessions/refresh-token', optionalBody: true)
  Future<chopper.Response<PublicRefreshTokenWebResponse>> _PublicRefreshToken({
    @Body() required PublicRefreshTokenRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Validates and rotates a refresh token to obtain a new access token.
    Implements token rotation for enhanced security - the old refresh token is invalidated.
    

    This endpoint performs token refresh by:

    - Validating the provided refresh token

    - Verifying the session is still active and not expired

    - Generating a new access token

    - Rotating the refresh token (old token becomes invalid)

    - Returning new authentication credentials

    

    **Authentication Requirements:**

    - Valid, non-expired refresh token

    - Session must be active (not logged out or revoked)

    

    **Security Features:**

    - Automatic token rotation prevents token reuse

    - Refresh token hashing for secure storage

    - Session validation ensures only active sessions can refresh

    

    **Response Codes:**

    - Returns 200 OK with new tokens on successful refresh

    - Returns 403 Forbidden for invalid or expired refresh tokens

    

    **Error Handling:**

    - AuthorizationException (403): Invalid/expired refresh token or session revoked

    - Token rotation ensures old refresh tokens cannot be reused after successful refresh.''',
      summary: 'Refresh access token using a valid refresh token',
      operationId: 'PublicRefreshToken',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::sessions"],
      deprecated: false,
    ),
  });

  ///Remove a like from a short video
  ///@param id
  Future<chopper.Response<PublicUnlikeShortVideoResponse>>
  PublicUnlikeShortVideo({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicUnlikeShortVideoResponse,
      () => PublicUnlikeShortVideoResponse.fromJsonFactory,
    );

    return _PublicUnlikeShortVideo(id: id);
  }

  ///Remove a like from a short video
  ///@param id
  @DELETE(path: '/api/v1/public/shorts/{id}/likes')
  Future<chopper.Response<PublicUnlikeShortVideoResponse>>
  _PublicUnlikeShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes the authenticated user\'s like from a short video.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the user has not liked this short video

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Remove a like from a short video',
      operationId: 'PublicUnlikeShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Like a short video
  ///@param id
  Future<chopper.Response<PublicLikeShortVideoResponse>> PublicLikeShortVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicLikeShortVideoResponse,
      () => PublicLikeShortVideoResponse.fromJsonFactory,
    );

    return _PublicLikeShortVideo(id: id);
  }

  ///Like a short video
  ///@param id
  @POST(path: '/api/v1/public/shorts/{id}/likes', optionalBody: true)
  Future<chopper.Response<PublicLikeShortVideoResponse>> _PublicLikeShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records that the authenticated user has liked a short video.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the short video does not exist

    - Returns 409 Conflict if the user has already liked this short video

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Like a short video',
      operationId: 'PublicLikeShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Remove a bookmark from a short video
  ///@param id
  Future<chopper.Response<PublicUnbookmarkShortVideoResponse>>
  PublicUnbookmarkShortVideo({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicUnbookmarkShortVideoResponse,
      () => PublicUnbookmarkShortVideoResponse.fromJsonFactory,
    );

    return _PublicUnbookmarkShortVideo(id: id);
  }

  ///Remove a bookmark from a short video
  ///@param id
  @DELETE(path: '/api/v1/public/shorts/{id}/bookmarks')
  Future<chopper.Response<PublicUnbookmarkShortVideoResponse>>
  _PublicUnbookmarkShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Removes a bookmark from a short video for the authenticated user.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if the short video has not been bookmarked

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Remove a bookmark from a short video',
      operationId: 'PublicUnbookmarkShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Bookmark a short video
  ///@param id
  Future<chopper.Response<PublicBookmarkShortVideoResponse>>
  PublicBookmarkShortVideo({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicBookmarkShortVideoResponse,
      () => PublicBookmarkShortVideoResponse.fromJsonFactory,
    );

    return _PublicBookmarkShortVideo(id: id);
  }

  ///Bookmark a short video
  ///@param id
  @POST(path: '/api/v1/public/shorts/{id}/bookmarks', optionalBody: true)
  Future<chopper.Response<PublicBookmarkShortVideoResponse>>
  _PublicBookmarkShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records that the authenticated user has bookmarked a short video.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the short video does not exist

    - Returns 409 Conflict if the user has already bookmarked this short video

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Bookmark a short video',
      operationId: 'PublicBookmarkShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Share a short video
  ///@param id
  Future<chopper.Response<PublicShareShortVideoResponse>>
  PublicShareShortVideo({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicShareShortVideoResponse,
      () => PublicShareShortVideoResponse.fromJsonFactory,
    );

    return _PublicShareShortVideo(id: id);
  }

  ///Share a short video
  ///@param id
  @POST(path: '/api/v1/public/shorts/{id}/shares', optionalBody: true)
  Future<chopper.Response<PublicShareShortVideoResponse>>
  _PublicShareShortVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records a share event for a short video. This endpoint is publicly accessible
    and does not require authentication.
    

    **Authentication Requirements:**

    - No authentication required (anonymous access allowed)

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Share a short video',
      operationId: 'PublicShareShortVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Record a view for a short video
  ///@param id
  Future<chopper.Response<PublicRecordShortVideoViewResponse>>
  PublicRecordShortVideoView({required String? id}) {
    generatedMapping.putIfAbsent(
      PublicRecordShortVideoViewResponse,
      () => PublicRecordShortVideoViewResponse.fromJsonFactory,
    );

    return _PublicRecordShortVideoView(id: id);
  }

  ///Record a view for a short video
  ///@param id
  @POST(path: '/api/v1/public/shorts/{id}/views', optionalBody: true)
  Future<chopper.Response<PublicRecordShortVideoViewResponse>>
  _PublicRecordShortVideoView({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records a view event for a short video, incrementing its view count.
    This endpoint is publicly accessible and does not require authentication.
    

    **Authentication Requirements:**

    - No authentication required (anonymous access allowed)

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 404 Not Found if the short video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Record a view for a short video',
      operationId: 'PublicRecordShortVideoView',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///List active short videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  Future<chopper.Response<PublicGetPublicShortsResponse>> GetPublicShorts({
    int? pageIndex,
    int? pageSize,
    String? search,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetPublicShortsResponse,
      () => PublicGetPublicShortsResponse.fromJsonFactory,
    );

    return _GetPublicShorts(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
    );
  }

  ///List active short videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  @GET(path: '/api/v1/public/shorts')
  Future<chopper.Response<PublicGetPublicShortsResponse>> _GetPublicShorts({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of active short video clips for public consumption.
    Only short videos with active status are returned.
    

    **Authentication Requirements:**

    - No authentication required (public endpoint)

    

    **Response Codes:**

    - Returns 200 OK with paginated short video list on success

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List active short videos',
      operationId: 'GetPublicShorts',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Get active short video by slug
  ///@param slug
  Future<chopper.Response<PublicGetPublicShortBySlugResponse>>
  GetPublicShortBySlug({required String? slug}) {
    generatedMapping.putIfAbsent(
      PublicGetPublicShortBySlugResponse,
      () => PublicGetPublicShortBySlugResponse.fromJsonFactory,
    );

    return _GetPublicShortBySlug(slug: slug);
  }

  ///Get active short video by slug
  ///@param slug
  @GET(path: '/api/v1/public/shorts/{slug}')
  Future<chopper.Response<PublicGetPublicShortBySlugResponse>>
  _GetPublicShortBySlug({
    @Path('slug') required String? slug,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single active short video clip by its URL slug.
    

    Powers the individual short video page with the video player and engagement counters.
    Returns 404 if the short video does not exist or is not active.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with short video details on success

    - Returns 404 Not Found if the short video does not exist or is not active

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get active short video by slug',
      operationId: 'GetPublicShortBySlug',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::shorts"],
      deprecated: false,
    ),
  });

  ///Get all tags
  ///@param search
  Future<chopper.Response<PublicGetAllTagsResponse>> PublicGetAllTags({
    String? search,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetAllTagsResponse,
      () => PublicGetAllTagsResponse.fromJsonFactory,
    );

    return _PublicGetAllTags(search: search);
  }

  ///Get all tags
  ///@param search
  @GET(path: '/api/v1/public/tags')
  Future<chopper.Response<PublicGetAllTagsResponse>> _PublicGetAllTags({
    @Query('search') String? search,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Returns all available tags for browsing and filtering content.
    

    Supports optional search filtering via the `search` query parameter.
    The search performs a case-insensitive partial match on both tag name and slug.
    

    **Query Parameters:**

    - `search` (optional): filter tags by name or slug (e.g. `?search=fally`)

    

    This endpoint is publicly accessible and does not require authentication.
    

    **Response Codes:**

    - Returns 200 OK with the matching list of tags (empty array if none match)

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get all tags',
      operationId: 'PublicGetAllTags',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::tags"],
      deprecated: false,
    ),
  });

  ///Record a video share
  ///@param id
  Future<chopper.Response<PublicShareVideoResponse>> PublicShareVideo({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      PublicShareVideoResponse,
      () => PublicShareVideoResponse.fromJsonFactory,
    );

    return _PublicShareVideo(id: id);
  }

  ///Record a video share
  ///@param id
  @POST(path: '/api/v1/public/videos/{id}/shares', optionalBody: true)
  Future<chopper.Response<PublicShareVideoResponse>> _PublicShareVideo({
    @Path('id') required String? id,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Records a share event for a video. Works for both authenticated users and anonymous visitors.
    

    **Authentication Requirements:**

    - No authentication required — anonymous access is permitted

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 404 Not Found if the video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Record a video share',
      operationId: 'PublicShareVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::videos"],
      deprecated: false,
    ),
  });

  ///Rate a video
  ///@param id
  Future<chopper.Response<PublicRateVideoResponse>> PublicRateVideo({
    required String? id,
    required PublicRateVideoRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      PublicRateVideoResponse,
      () => PublicRateVideoResponse.fromJsonFactory,
    );

    return _PublicRateVideo(id: id, body: body);
  }

  ///Rate a video
  ///@param id
  @POST(path: '/api/v1/public/videos/{id}/ratings', optionalBody: true)
  Future<chopper.Response<PublicRateVideoResponse>> _PublicRateVideo({
    @Path('id') required String? id,
    @Body() required PublicRateVideoRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Submits or updates the authenticated user\'s star rating (1–5) for a video.
    If the user has already rated the video, the existing rating is updated.
    

    **Authentication Requirements:**

    - User must be authenticated with a valid access token

    - User must have an active account

    

    **Response Codes:**

    - Returns 200 OK on success

    - Returns 400 Bad Request if stars is not between 1 and 5

    - Returns 401 Unauthorized if access token is invalid or expired

    - Returns 404 Not Found if the video does not exist

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Rate a video',
      operationId: 'PublicRateVideo',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::videos"],
      deprecated: false,
    ),
  });

  ///Get published video by slug
  ///@param slug
  Future<chopper.Response<PublicGetVideoBySlugResponse>> GetVideoBySlug({
    required String? slug,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetVideoBySlugResponse,
      () => PublicGetVideoBySlugResponse.fromJsonFactory,
    );

    return _GetVideoBySlug(slug: slug);
  }

  ///Get published video by slug
  ///@param slug
  @GET(path: '/api/v1/public/videos/{slug}')
  Future<chopper.Response<PublicGetVideoBySlugResponse>> _GetVideoBySlug({
    @Path('slug') required String? slug,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the full details of a single published video by its URL slug.
    

    Powers the individual video page with the embedded YouTube player, star ratings,
    and related videos. Returns 404 if the video does not exist or is not published.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with video detail on success

    - Returns 404 Not Found if video does not exist or is not published

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'Get published video by slug',
      operationId: 'GetVideoBySlug',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::videos"],
      deprecated: false,
    ),
  });

  ///List published videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param categoryId
  Future<chopper.Response<PublicGetPublishedVideosResponse>>
  GetPublishedVideos({
    int? pageIndex,
    int? pageSize,
    String? search,
    String? categoryId,
  }) {
    generatedMapping.putIfAbsent(
      PublicGetPublishedVideosResponse,
      () => PublicGetPublishedVideosResponse.fromJsonFactory,
    );

    return _GetPublishedVideos(
      pageIndex: pageIndex,
      pageSize: pageSize,
      search: search,
      categoryId: categoryId,
    );
  }

  ///List published videos
  ///@param pageIndex
  ///@param pageSize
  ///@param search
  ///@param categoryId
  @GET(path: '/api/v1/public/videos')
  Future<chopper.Response<PublicGetPublishedVideosResponse>>
  _GetPublishedVideos({
    @Query('pageIndex') int? pageIndex,
    @Query('pageSize') int? pageSize,
    @Query('search') String? search,
    @Query('categoryId') String? categoryId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves a paginated list of all published videos for public consumption.
    

    Supports optional filtering by category. Results are returned as a paginated list
    with summary information suitable for video feed and browsing views.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with paginated video list on success

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List published videos',
      operationId: 'GetPublishedVideos',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::videos"],
      deprecated: false,
    ),
  });

  ///List featured videos
  Future<chopper.Response<PublicGetFeaturedVideosResponse>>
  GetFeaturedVideos() {
    generatedMapping.putIfAbsent(
      PublicGetFeaturedVideosResponse,
      () => PublicGetFeaturedVideosResponse.fromJsonFactory,
    );

    return _GetFeaturedVideos();
  }

  ///List featured videos
  @GET(path: '/api/v1/public/videos/featured')
  Future<chopper.Response<PublicGetFeaturedVideosResponse>> _GetFeaturedVideos({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the list of currently featured published videos.
    

    A video is featured when an admin stamps it with a future expiry date after a
    Commerce promotion purchase. Only videos where is_featured = true,
    featured_until > now(), and status = Published are returned.
    

    **Authentication Requirements:**

    - No authentication required

    

    **Response Codes:**

    - Returns 200 OK with featured video list on success

    - Returns 429 Too Many Requests if rate limit is exceeded
''',
      summary: 'List featured videos',
      operationId: 'GetFeaturedVideos',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::videos"],
      deprecated: false,
    ),
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
