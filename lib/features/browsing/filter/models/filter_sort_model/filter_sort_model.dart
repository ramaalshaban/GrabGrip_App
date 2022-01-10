import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_item.dart';

part 'filter_sort_model.freezed.dart';

@freezed
class FilterSortModel with _$FilterSortModel {
  const factory FilterSortModel([
    String? searchText,
    String? place,
    String? bounds,
    LatLng? latLng,
    DropDownItem? sortOption,
    DropDownItem? distance,
    Category? category,
    Category? subcategory,
    String? minPrice,
    String? maxPrice,
    DropDownItem? listingType,
    @Default([]) List<Category> filteringCategories,
  ]) = _FilterSortModel;
}
