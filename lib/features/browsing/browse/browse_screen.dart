import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/utils/functions.dart';

class BrowseScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Material(
        child: ProviderListener(
      provider: httpRequestStateProvider,
      onChange: (BuildContext context, value) {
        watch(httpRequestStateProvider).whenOrNull(
          error: (errorMessage) => showSnackBarForError(context, errorMessage),
        );
      },
      child: Consumer(builder: (_, watch, __) {
        final httpRequestState = watch(httpRequestStateProvider);
        return httpRequestState.whenOrNull(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: () => BrowseScreenBody(watch),
            ) ??
            BrowseScreenBody(watch);
      }),
    ));
  }
}

class BrowseScreenBody extends StatelessWidget {
  const BrowseScreenBody(this.watch, {Key? key}) : super(key: key);
  final Function watch;

  @override
  Widget build(BuildContext context) {
    final browseData = watch(browseDataProvider) as BrowseModel?;
    final dataAvailable = browseData != null;
    return dataAvailable
        ? SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: browseData!.data.gearsCount,
                  itemBuilder: (BuildContext context, int position) {
                    return Text(browseData.data.gears[position].title);
                  },
                )))
        : const Text("no data !");
  }
}
