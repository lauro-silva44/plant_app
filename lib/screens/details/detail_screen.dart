import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'components/image_and_icons.dart';
import 'components/title_and_price.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcon(size: size),
            const TitleAndPrice(
              title: 'Angelica',
              country: 'Russia',
              price: 440,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    onPressed: () {},
                    style: flatButtonStyle,
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                    child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(color: Colors.black),
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: kPrimaryColor,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
);
