import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:pml/ui/common/app_colors.dart';
import 'package:pml/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Les nouveautés musicales',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Text(
                    'Les nouveaux concerts',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color: kcDarkGreyColor,
                        onPressed: () {},
                        child: const Text(
                          'Show Dialog',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: kcDarkGreyColor,
                        onPressed: () {},
                        child: const Text(
                          'Show Bottom Sheet',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          height: 80,
          selectedIndex: viewModel.currentIndex,
          destinations: viewModel.getMenu(context),
          animationDuration: const Duration(seconds: 2),
          onDestinationSelected: viewModel.setIndex,
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
