import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project_ordo/app/themes/text_themes.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    final textTheme = Themes.light.textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        Text(
          title,
          style: textTheme.bodySmall!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
