import 'package:pml/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:pml/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:pml/ui/views/home/home_view.dart';
import 'package:pml/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:pml/ui/views/albums/albums_view.dart';
import 'package:pml/ui/views/concerts/concerts_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: AlbumsView),
    MaterialRoute(page: ConcertsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
