import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const String homeRoute = "HOME";
  static const String listView1Route = "LIST_VIEW_1";
  static const String listView2Route = "LIST_VIEW_2";
  static const String alertRoute = "ALERT";
  static const String cardRoute = "CARD";
  static const String avatarRoute = "AVATAR";
  static const String animatedRoute = "ANIMATED_SCREEN";
  static const String inputsScreen = "INPUTS_SCREEN";
  static const String slider = "SLIDER";
  static const String listViewBuilder = "LIST_VIEW_BUILDER";

  static final List<MenuOption> menuOption = [
    MenuOption(
      route: listView1Route,
      icon: Icons.list,
      name: "List View 1",
      screen: const ListViewScreen(),
    ),
    MenuOption(
      route: listView2Route,
      icon: Icons.list_outlined,
      name: "List View 2",
      screen: const ListViewScreen2(),
    ),
    MenuOption(
      route: alertRoute,
      icon: Icons.alarm_on,
      name: "Alert",
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: cardRoute,
      icon: Icons.card_giftcard,
      name: "Card",
      screen: const CardScreen(),
    ),
    MenuOption(
      route: avatarRoute,
      icon: Icons.account_circle,
      name: "Avatar Screen",
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: animatedRoute,
      icon: Icons.play_circle_fill_outlined,
      name: "Animated Screen",
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: inputsScreen,
      icon: Icons.input_rounded,
      name: "Text Inputs",
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: slider,
      icon: Icons.slow_motion_video_rounded,
      name: "Slider and Checks",
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: listViewBuilder,
      icon: Icons.build_circle_outlined,
      name: "Infinite Scrol & Pull to refresh",
      screen: const ListViewBuilderScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({homeRoute: (BuildContext context) => HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
