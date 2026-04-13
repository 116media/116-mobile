// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AdminAddOrderItemRequestContentKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Article')
  article('Article'),
  @JsonValue('Video')
  video('Video'),
  @JsonValue('Short')
  short('Short');

  final String? value;

  const AdminAddOrderItemRequestContentKind(this.value);
}

enum ArticleDetailDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('PendingReview')
  pendingreview('PendingReview'),
  @JsonValue('Approved')
  approved('Approved'),
  @JsonValue('Published')
  published('Published'),
  @JsonValue('Rejected')
  rejected('Rejected'),
  @JsonValue('Archived')
  archived('Archived');

  final String? value;

  const ArticleDetailDtoStatus(this.value);
}

enum ArticleImageDtoImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Cover')
  cover('Cover'),
  @JsonValue('Body')
  body('Body');

  final String? value;

  const ArticleImageDtoImageType(this.value);
}

enum ArticleSummaryDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('PendingReview')
  pendingreview('PendingReview'),
  @JsonValue('Approved')
  approved('Approved'),
  @JsonValue('Published')
  published('Published'),
  @JsonValue('Rejected')
  rejected('Rejected'),
  @JsonValue('Archived')
  archived('Archived');

  final String? value;

  const ArticleSummaryDtoStatus(this.value);
}

enum ContentOrderDetailDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('Paid')
  paid('Paid'),
  @JsonValue('Cancelled')
  cancelled('Cancelled');

  final String? value;

  const ContentOrderDetailDtoStatus(this.value);
}

enum ContentOrderSummaryDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('Paid')
  paid('Paid'),
  @JsonValue('Cancelled')
  cancelled('Cancelled');

  final String? value;

  const ContentOrderSummaryDtoStatus(this.value);
}

enum EnumArticleImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Cover')
  cover('Cover'),
  @JsonValue('Body')
  body('Body');

  final String? value;

  const EnumArticleImageType(this.value);
}

enum EnumAuthProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Local')
  local('Local'),
  @JsonValue('Google')
  google('Google'),
  @JsonValue('Facebook')
  facebook('Facebook');

  final String? value;

  const EnumAuthProvider(this.value);
}

enum EnumBrowser {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Chrome')
  chrome('Chrome'),
  @JsonValue('InternetExplorer')
  internetexplorer('InternetExplorer'),
  @JsonValue('Safari')
  safari('Safari'),
  @JsonValue('Firefox')
  firefox('Firefox'),
  @JsonValue('Edge')
  edge('Edge'),
  @JsonValue('Opera')
  opera('Opera'),
  @JsonValue('GoogleSearchApp')
  googlesearchapp('GoogleSearchApp'),
  @JsonValue('Samsung')
  samsung('Samsung'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const EnumBrowser(this.value);
}

enum EnumClient {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MobileApp')
  mobileapp('MobileApp'),
  @JsonValue('WebApp')
  webapp('WebApp'),
  @JsonValue('Dashboard')
  dashboard('Dashboard'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const EnumClient(this.value);
}

enum EnumContentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('PendingReview')
  pendingreview('PendingReview'),
  @JsonValue('Approved')
  approved('Approved'),
  @JsonValue('Published')
  published('Published'),
  @JsonValue('Rejected')
  rejected('Rejected'),
  @JsonValue('Archived')
  archived('Archived');

  final String? value;

  const EnumContentStatus(this.value);
}

enum EnumCoreContentType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Article')
  article('Article'),
  @JsonValue('Video')
  video('Video'),
  @JsonValue('Short')
  short('Short');

  final String? value;

  const EnumCoreContentType(this.value);
}

enum EnumDevice {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Desktop')
  desktop('Desktop'),
  @JsonValue('Tablet')
  tablet('Tablet'),
  @JsonValue('Mobile')
  mobile('Mobile'),
  @JsonValue('Watch')
  watch('Watch'),
  @JsonValue('Tv')
  tv('Tv'),
  @JsonValue('Console')
  console('Console'),
  @JsonValue('Car')
  car('Car'),
  @JsonValue('IoT')
  iot('IoT'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const EnumDevice(this.value);
}

enum EnumOrderStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('Paid')
  paid('Paid'),
  @JsonValue('Cancelled')
  cancelled('Cancelled');

  final String? value;

  const EnumOrderStatus(this.value);
}

enum EnumPaymentMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BankTransfer')
  banktransfer('BankTransfer'),
  @JsonValue('MobileMoney')
  mobilemoney('MobileMoney'),
  @JsonValue('Cash')
  cash('Cash');

  final String? value;

  const EnumPaymentMethod(this.value);
}

enum EnumPaymentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Pending')
  pending('Pending'),
  @JsonValue('Verified')
  verified('Verified'),
  @JsonValue('Rejected')
  rejected('Rejected');

  final String? value;

  const EnumPaymentStatus(this.value);
}

enum EnumPlatform {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Windows')
  windows('Windows'),
  @JsonValue('Mac')
  mac('Mac'),
  @JsonValue('Ios')
  ios('Ios'),
  @JsonValue('IpadOs')
  ipados('IpadOs'),
  @JsonValue('Linux')
  linux('Linux'),
  @JsonValue('Android')
  android('Android'),
  @JsonValue('ChromeOs')
  chromeos('ChromeOs'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const EnumPlatform(this.value);
}

enum OrderItemDtoContentKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Article')
  article('Article'),
  @JsonValue('Video')
  video('Video'),
  @JsonValue('Short')
  short('Short');

  final String? value;

  const OrderItemDtoContentKind(this.value);
}

enum PaymentDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Pending')
  pending('Pending'),
  @JsonValue('Verified')
  verified('Verified'),
  @JsonValue('Rejected')
  rejected('Rejected');

  final String? value;

  const PaymentDtoStatus(this.value);
}

enum SessionDtoBrowser {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Chrome')
  chrome('Chrome'),
  @JsonValue('InternetExplorer')
  internetexplorer('InternetExplorer'),
  @JsonValue('Safari')
  safari('Safari'),
  @JsonValue('Firefox')
  firefox('Firefox'),
  @JsonValue('Edge')
  edge('Edge'),
  @JsonValue('Opera')
  opera('Opera'),
  @JsonValue('GoogleSearchApp')
  googlesearchapp('GoogleSearchApp'),
  @JsonValue('Samsung')
  samsung('Samsung'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const SessionDtoBrowser(this.value);
}

enum SessionDtoDevice {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Desktop')
  desktop('Desktop'),
  @JsonValue('Tablet')
  tablet('Tablet'),
  @JsonValue('Mobile')
  mobile('Mobile'),
  @JsonValue('Watch')
  watch('Watch'),
  @JsonValue('Tv')
  tv('Tv'),
  @JsonValue('Console')
  console('Console'),
  @JsonValue('Car')
  car('Car'),
  @JsonValue('IoT')
  iot('IoT'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const SessionDtoDevice(this.value);
}

enum SessionDtoPlatform {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Windows')
  windows('Windows'),
  @JsonValue('Mac')
  mac('Mac'),
  @JsonValue('Ios')
  ios('Ios'),
  @JsonValue('IpadOs')
  ipados('IpadOs'),
  @JsonValue('Linux')
  linux('Linux'),
  @JsonValue('Android')
  android('Android'),
  @JsonValue('ChromeOs')
  chromeos('ChromeOs'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const SessionDtoPlatform(this.value);
}

enum SessionDtoClient {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MobileApp')
  mobileapp('MobileApp'),
  @JsonValue('WebApp')
  webapp('WebApp'),
  @JsonValue('Dashboard')
  dashboard('Dashboard'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const SessionDtoClient(this.value);
}

enum UserResponseDtoAuthProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Local')
  local('Local'),
  @JsonValue('Google')
  google('Google'),
  @JsonValue('Facebook')
  facebook('Facebook');

  final String? value;

  const UserResponseDtoAuthProvider(this.value);
}

enum VideoDetailDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('PendingReview')
  pendingreview('PendingReview'),
  @JsonValue('Approved')
  approved('Approved'),
  @JsonValue('Published')
  published('Published'),
  @JsonValue('Rejected')
  rejected('Rejected'),
  @JsonValue('Archived')
  archived('Archived');

  final String? value;

  const VideoDetailDtoStatus(this.value);
}

enum VideoSummaryDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('PendingPayment')
  pendingpayment('PendingPayment'),
  @JsonValue('PendingReview')
  pendingreview('PendingReview'),
  @JsonValue('Approved')
  approved('Approved'),
  @JsonValue('Published')
  published('Published'),
  @JsonValue('Rejected')
  rejected('Rejected'),
  @JsonValue('Archived')
  archived('Archived');

  final String? value;

  const VideoSummaryDtoStatus(this.value);
}

enum ApiV1AdminArticlesIdImagesPostImageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Cover')
  cover('Cover'),
  @JsonValue('Body')
  body('Body');

  final String? value;

  const ApiV1AdminArticlesIdImagesPostImageType(this.value);
}

enum ApiV1AdminOrdersIdPaymentProofPostPaymentMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BankTransfer')
  banktransfer('BankTransfer'),
  @JsonValue('MobileMoney')
  mobilemoney('MobileMoney'),
  @JsonValue('Cash')
  cash('Cash');

  final String? value;

  const ApiV1AdminOrdersIdPaymentProofPostPaymentMethod(this.value);
}
