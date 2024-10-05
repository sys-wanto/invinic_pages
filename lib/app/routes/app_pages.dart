import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/agents/bindings/agents_binding.dart';
import '../modules/agents/views/agents_view.dart';
import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/portofolio/bindings/portofolio_binding.dart';
import '../modules/portofolio/views/portofolio_view.dart';
import '../modules/screen404/bindings/screen404_binding.dart';
import '../modules/screen404/views/screen404_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.CONTACT,
        page: () => const ContactView(),
        binding: ContactBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.AGENTS,
        page: () => const AgentsView(),
        binding: AgentsBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.PORTOFOLIO,
        page: () => const PortofolioView(),
        binding: PortofolioBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.ABOUT,
        page: () => const AboutView(),
        binding: AboutBinding(),
        transition: Transition.fadeIn),
    GetPage(
      name: _Paths.SCREEN404,
      page: () => const Screen404View(),
      binding: Screen404Binding(),
    ),
  ];
}
