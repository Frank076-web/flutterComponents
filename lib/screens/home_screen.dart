import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/router/router.dart';
import 'package:flutter_components/theme/AppTheme.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<MenuOption> listRouter = AppRoutes.menuOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: ListView.separated(
        itemCount: listRouter.length,
        separatorBuilder: (_, __) => const Divider(
          height: 15,
        ),
        itemBuilder: (context, i) => ListTile(
          title: Text(listRouter[i].name),
          leading: Icon(
            listRouter[i].icon,
            color: AppTheme.primaryColor,
          ),
          onTap: () {
            Navigator.pushNamed(context, listRouter[i].route);
          },
        ),
      ),
    );
  }
}
