import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_model/post_listing_model.dart';

class PostListingProvider extends StateNotifier<PostListingModel> {
  PostListingProvider() : super(const PostListingModel());

  void reset() {
    state = const PostListingModel();
  }

  //region setters and getters
  set category(Category? category) =>
      state = state.copyWith(category: category);

  Category? get category => state.category;

  set subcategory(Category? subcategory) =>
      state = state.copyWith(subcategory: subcategory);

  Category? get subcategory => state.subcategory;
//endregion

}
