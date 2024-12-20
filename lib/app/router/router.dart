import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_template/view/home/page.dart';
import 'package:get_template/view/unknown/page.dart';

abstract final class AppRouter {
  static String get initialRoute => '/';

  static GetPage<dynamic> get unknownPage => GetPage<dynamic>(
        name: '/unknown',
        page: UnknownPage.new,
      );

  static List<GetPage<dynamic>> get pages => <GetPage<dynamic>>[
        GetPage<dynamic>(
          name: '/',
          page: HomePage.new,
        ),
        unknownPage,
      ];
}
