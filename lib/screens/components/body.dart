import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //provides the total height of and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
        ],
      ),
    );
  }
}
