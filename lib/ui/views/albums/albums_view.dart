import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'albums_viewmodel.dart';

class AlbumsView extends StackedView<AlbumsViewModel> {
  const AlbumsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AlbumsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  AlbumsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AlbumsViewModel();
}
