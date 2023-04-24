import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:wed_plan_project/utilities/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSource;
  final VoidCallback? press;
  const SocialIcon({
    required this.iconSource,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kColorScheme.background,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSource,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
