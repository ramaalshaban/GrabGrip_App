import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_details_request.freezed.dart';
part 'place_order_details_request.g.dart';

@freezed
class PlaceOrderDetailsRequest with _$PlaceOrderDetailsRequest {
  const factory PlaceOrderDetailsRequest({
    String? hash,
    int? selectedQuantity,
    Map<String, int>? selectedAdditionalOptions,
    Map<String, Map<String, int>>? selectedAdditionalOptionsMeta,
    int? selectedShippingOptionId,
    Map<String, String>? selectedVariantOptions,
    String? startDate,
    String? endDate,
  }) = _PlaceOrderDetailsRequest;

  factory PlaceOrderDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderDetailsRequestFromJson(json);
}
