import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_template/presentation/pages/home/binding.dart';
import 'package:get_template/presentation/pages/home/page.dart';
import 'package:get_template/presentation/pages/unknown/page.dart';

enum _PageName {
  initial(value: '/'),
  unknown(value: '/unknown');

  const _PageName({required this.value});

  final String value;
}

/// This class is used to define the app routes.
abstract final class AppRouter {
  static String get initialRoute => _PageName.initial.value;

  static GetPage<dynamic> get unknownPage => GetPage<dynamic>(
        name: _PageName.unknown.value,
        page: () => const UnknownPage(),
      );

  static List<GetPage<dynamic>> get pages => <GetPage<dynamic>>[
        GetPage<dynamic>(
          name: _PageName.initial.value,
          page: () => const HomePage(),
          binding: HomePageBinding(),
        ),
        unknownPage,
      ];
}
