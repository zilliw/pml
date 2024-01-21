import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'concerts_viewmodel.dart';

class ConcertsView extends StackedView<ConcertsViewModel> {
  const ConcertsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConcertsViewModel viewModel,
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
  ConcertsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConcertsViewModel();
}
