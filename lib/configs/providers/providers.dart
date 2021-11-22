import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/locale/locale_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/view_mode/view_mode.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/providers/view_mode_provider.dart';
import 'package:grab_grip/features/browsing/filter/models/filter_sort_model/filter_sort_model.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/feedback/contact_us/providers/feedback_provider.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_availability_model/post_listing_availability_state.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_state/post_listing_state.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_availability_state_provider.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_provider.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_step_number_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/providers/photos_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/models/listing_pricing_model/listing_pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/providers/listing_pricing_provider.dart';
import 'package:grab_grip/features/user_profile/favorites/providers/favorites_provider.dart';
import 'package:grab_grip/features/user_profile/incoming_orders/providers/incoming_orders_provider.dart';
import 'package:grab_grip/features/user_profile/listings/providers/listings_provider.dart';
import 'package:grab_grip/features/user_profile/my_orders/providers/my_orders_provider.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/features/user_profile/payments/providers/payment_methods_provider.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/features/user_profile/shared/providers/user_profile_provider.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/shared/models/listings_page/listings_page.dart';
import 'package:grab_grip/shared/models/orders_page/orders_page.dart';
import 'package:grab_grip/shared/widgets/location_picker/location_picker_state/location_picker_state.dart';
import 'package:grab_grip/shared/widgets/location_picker/providers/location_picker_state_provider.dart';

final localeProvider = StateNotifierProvider<LocaleProvider, Locale>((_) {
  return LocaleProvider();
});

final httpRequestStateProvider =
    StateNotifierProvider<HttpRequestStateProvider, HttpRequestState>((_) {
  return HttpRequestStateProvider();
});

final authProvider =
    StateNotifierProvider<AuthProvider, AuthState>((reference) {
  final httpProvider = reference.watch(httpRequestStateProvider.notifier);
  final userProvider = reference.watch(userProfileProvider.notifier);
  return AuthProvider(httpProvider, userProvider);
});

final filterAndSortProvider =
    StateNotifierProvider<FilterSortProvider, FilterSortModel>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return FilterSortProvider(provider);
});

final gearsViewMode = StateNotifierProvider<ViewModeProvider, ViewMode>(
  (_) => ViewModeProvider(),
);

final browseDataProvider =
    StateNotifierProvider<BrowseProvider, BrowseModel>((reference) {
  final filterSortProvider = reference.watch(filterAndSortProvider.notifier);
  return BrowseProvider(filterSortProvider);
});

final feedbackProvider = Provider((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return FeedbackProvider(provider);
});

final postListingProvider =
    StateNotifierProvider<PostListingProvider, PostListingState>((ref) {
  final httpProvider = ref.watch(httpRequestStateProvider.notifier);
  final listingAvailabilityProvider =
      ref.watch(listingAvailabilityStateProvider.notifier);
  final photoProvider = ref.watch(photosProvider.notifier);
  return PostListingProvider(
    httpProvider,
    listingAvailabilityProvider,
    photoProvider,
  );
});

final photosProvider =
    StateNotifierProvider<PhotosProvider, List<Photo>>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return PhotosProvider(provider);
});

final postListingStepProvider =
    StateNotifierProvider<PostListingStepNumberProvider, PostListingStepNumber>(
        (_) {
  return PostListingStepNumberProvider();
});

final locationPickerStateProvider =
    StateNotifierProvider<LocationPickerStateProvider, LocationPickerState>(
        (reference) {
  final provider = reference.watch(filterAndSortProvider.notifier);
  final postAListingProvider = reference.watch(postListingProvider.notifier);
  return LocationPickerStateProvider(provider, postAListingProvider);
});

final userProfileProvider =
    StateNotifierProvider<UserProfileProvider, User>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return UserProfileProvider(provider);
});

final listingPricingProvider =
    StateNotifierProvider<ListingPricingProvider, ListingPricingModel>(
        (reference) {
  final provider = reference.watch(postListingProvider.notifier);
  return ListingPricingProvider(provider);
});

final listingAvailabilityStateProvider = StateNotifierProvider<
    PostListingAvailabilityStateProvider,
    PostListingAvailabilityState>((reference) {
  return PostListingAvailabilityStateProvider();
});

final paymentMethodsProvider =
    StateNotifierProvider<PaymentMethodsProvider, List<PaymentMethod>>(
        (reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return PaymentMethodsProvider(provider);
});

final listingsProvider =
    StateNotifierProvider<ListingsProvider, ListingsPage>((reference) {
  return ListingsProvider();
});

final incomingOrdersProvider =
    StateNotifierProvider<IncomingOrdersProvider, OrdersPage>((reference) {
  return IncomingOrdersProvider();
});

final myOrdersProvider =
    StateNotifierProvider<MyOrdersProvider, OrdersPage>((reference) {
  return MyOrdersProvider();
});

final favoritesProvider =
    StateNotifierProvider<FavoritesProvider, List<Gear>>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return FavoritesProvider(provider);
});
