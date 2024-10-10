import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_template/view/home/page.dart';
import 'package:get_template/view/unknown/page.dart';

abstract final class AppRouter {
  static String get initialRoute => '/';

  static GetPage get unknownPage => GetPage(
        name: '/unknown',
        page: () => UnknownPage(),
      );

  static List<GetPage<dynamic>> get pages => [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        unknownPage,
      ];
}
