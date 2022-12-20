import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Column(children: [
              IconButton(
                icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ])),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        )
      ],
    );
  }
}
