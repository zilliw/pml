import 'package:flutter/material.dart';
import 'package:pml/ui/views/albums/albums_view.dart';
import 'package:pml/ui/views/concerts/concerts_view.dart';
import 'package:pml/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends IndexTrackingViewModel {
  List<NavigationDestination> getMenu(BuildContext context) {
    return [
      const NavigationDestination(
        icon: Icon(Icons.newspaper),
        label: 'Actualités',
      ),
      const NavigationDestination(
        icon: Icon(Icons.my_library_music_outlined),
        label: 'Albums',
      ),
      const NavigationDestination(
        icon: Icon(Icons.music_video_outlined),
        label: 'Concerts',
      ),
    ];
  }

  Widget getView() {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const AlbumsView();
      case 2:
        return const ConcertsView();
      case 3:
      default:
        return const HomeView();
    }
  }
}
