import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_item.dart';
import 'package:grab_grip/features/browsing/filter/models/filter_sort_model/filter_sort_model.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

class FilterSortProvider extends StateNotifier<FilterSortModel> {
  HttpRequestStateProvider httpRequestStateProvider;

  FilterSortProvider(this.httpRequestStateProvider)
      : super(const FilterSortModel()) {
    _initializeDropDownLists();
    getCategories();
  }

  void _initializeDropDownLists() {
    final currentLanguageCode = Platform.localeName.substring(0, 2);
    if (currentLanguageCode == 'ar') {
      sortOption = DropDownItem(key: 'date', title: 'الأحدث أولاً');
      distance = DropDownItem(key: '-1', title: 'في أي مكان');
      listingType = DropDownItem(key: 'all', title: 'الكل');
    } else {
      sortOption = DropDownItem(key: 'date', title: 'Most recent first');
      distance = DropDownItem(key: '-1', title: 'Anywhere');
      listingType = DropDownItem(key: 'all', title: 'All');
    }
  }

  void resetPlace() {
    // when the place cleared, set it to null and give the distance its default value again (which is 'Anywhere' that has the key '-1')
    state = state.copyWith(
      place: null,
      distance: DropDownItem(
        key: '-1',
      ),
    );
    // reset the bounds that are related to this place
    bounds = null;
    // also, reset the latLng that are related to this place
    latLng = null;
  }

  void reset() {
    _initializeDropDownLists();
    minPrice = "";
    maxPrice = "";
    category = null;
    subcategory = null;
  }

  Future<void> getCategories() async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      httpRequestStateProvider.setLoading();
    });
    await NetworkService().getCategories().then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        filteringCategories = [];
      }, (response) {
        httpRequestStateProvider.setSuccess();
        filteringCategories = response.categories;
      });
    });
  }

  //region setters and getters
  set sortOption(DropDownItem? sortOptionItem) =>
      state = state.copyWith(sortOption: sortOptionItem);

  DropDownItem? get sortOption => state.sortOption;

  set distance(DropDownItem? distance) =>
      state = state.copyWith(distance: distance);

  DropDownItem? get distance => state.distance;

  set category(Category? category) =>
      state = state.copyWith(category: category);

  Category? get category => state.category;

  set subcategory(Category? subcategory) =>
      state = state.copyWith(subcategory: subcategory);

  Category? get subcategory => state.subcategory;

  set minPrice(String? minPrice) => state = state.copyWith(minPrice: minPrice);

  String? get minPrice => state.minPrice;

  set maxPrice(String? maxPrice) => state = state.copyWith(maxPrice: maxPrice);

  String? get maxPrice => state.maxPrice;

  set searchText(String? text) => state = state.copyWith(searchText: text);

  String? get searchText => state.searchText;

  set place(String? place) {
    // when user filter the gears by place, set the distance key to 1 (i.e. 1 km) in order for the server to be able to filter
    state = state.copyWith(
      place: place,
      distance: DropDownItem(
        key: '1',
      ),
    );
  }

  String? get place => state.place;

  set bounds(String? bounds) => state = state.copyWith(bounds: bounds);

  String? get bounds => state.bounds;

  set latLng(LatLng? latLng) {
    state = state.copyWith(latLng: latLng);
  }

  LatLng? get latLng => state.latLng;

  set listingType(DropDownItem? listingType) =>
      state = state.copyWith(listingType: listingType);

  DropDownItem? get listingType => state.listingType;

  List<Category> get filteringCategories => state.filteringCategories;

  set filteringCategories(List<Category> categories) =>
      state = state.copyWith(filteringCategories: categories);

  //endregion

  static List<DropDownItem> getSortOptions(BuildContext context) {
    return [
      DropDownItem(
        key: 'date',
        title: AppLocalizations.of(context)!.most_recent_first,
      ),
      DropDownItem(
        key: 'ending_soon',
        title: AppLocalizations.of(context)!.ending_soonest,
      ),
      DropDownItem(
        key: 'price_lowest_first',
        title: AppLocalizations.of(context)!.price_low_to_high,
      ),
      DropDownItem(
        key: 'price_highest_first',
        title: AppLocalizations.of(context)!.price_high_to_low,
      ),
      DropDownItem(
        key: 'distance',
        title: AppLocalizations.of(context)!.nearest_first,
      ),
    ];
  }

  static List<DropDownItem> getDistanceOptions(BuildContext context) {
    return [
      DropDownItem(
        key: '-1',
        title: AppLocalizations.of(context)!.anywhere,
      ),
      DropDownItem(
        key: '0',
        title: AppLocalizations.of(context)!.this_area_only,
      ),
      DropDownItem(
        key: '1',
        title: AppLocalizations.of(context)!.one_km,
      ),
      DropDownItem(
        key: '3',
        title: AppLocalizations.of(context)!.three_km,
      ),
      DropDownItem(
        key: '5',
        title: AppLocalizations.of(context)!.five_km,
      ),
      DropDownItem(
        key: '10',
        title: AppLocalizations.of(context)!.ten_km,
      ),
      DropDownItem(
        key: '15',
        title: AppLocalizations.of(context)!.fifteen_km,
      ),
      DropDownItem(
        key: '30',
        title: AppLocalizations.of(context)!.thirteen_km,
      ),
      DropDownItem(
        key: '50',
        title: AppLocalizations.of(context)!.fifty_km,
      ),
      DropDownItem(
        key: '75',
        title: AppLocalizations.of(context)!.seventy_five_km,
      ),
      DropDownItem(
        key: '100',
        title: AppLocalizations.of(context)!.one_hundred_km,
      ),
    ];
  }

  static List<DropDownItem> getListingTypeOptions(BuildContext context) {
    return [
      DropDownItem(
        key: 'all',
        title: AppLocalizations.of(context)!.all,
      ),
      DropDownItem(
        key: 'buy',
        title: AppLocalizations.of(context)!.buy,
      ),
      DropDownItem(
        key: 'rent',
        title: AppLocalizations.of(context)!.rent,
      ),
    ];
  }
}
