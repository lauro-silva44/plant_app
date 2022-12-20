import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/body.dart';

import '../../components/my_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  AppBar builAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}));
  }
}
