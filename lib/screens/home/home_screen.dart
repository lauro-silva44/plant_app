import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/body.dart';

import '../../components/my_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(context),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavigationBar(),
      drawer: Drawer(
          child: ListTile(
        title: Text('Random Test'),
      )),
    );
  }

  AppBar builAppBar(BuildContext context) {
    return AppBar(
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                icon: SvgPicture.asset("assets/icons/menu.svg"),
                onPressed: () => Scaffold.of(context).openDrawer())));
  }
}
