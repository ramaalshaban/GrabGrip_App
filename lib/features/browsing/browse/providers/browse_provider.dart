import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

class BrowseProvider extends StateNotifier<BrowseModel?> {
  final HttpRequestStateProvider _httpRequestStateProvider;
  final FilterSortProvider _filterSortProvider;

  BrowseProvider(this._httpRequestStateProvider, this._filterSortProvider)
      : super(null);

  Future<void> browse() async {
    final filterAndSortParams = _filterSortProvider.state;
    _httpRequestStateProvider.setLoading();
    await NetworkService().browse(filterAndSortParams).then((result) {
      result.when((errorMessage) {
        state = null;
        _httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        state = response;
        _httpRequestStateProvider.setSuccess();
      });
    });
  }
}
