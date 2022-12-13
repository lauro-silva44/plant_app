import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: builAppBar(), body: const Body());
  }

  AppBar builAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}));
  }
}
