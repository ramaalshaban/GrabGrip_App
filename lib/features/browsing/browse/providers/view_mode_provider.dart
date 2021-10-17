import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/view_mode/view_mode.dart';

class ViewModeProvider extends StateNotifier<ViewMode> {
  ViewModeProvider() : super(const ViewMode.grid());

  void setViewModeByIndex(int index) {
    state = index == 0
        ? const ViewMode.grid()
        : index == 1
            ? const ViewMode.list()
            : const ViewMode.map();
  }
}
