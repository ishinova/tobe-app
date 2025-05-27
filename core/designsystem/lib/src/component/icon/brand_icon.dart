import 'package:core_designsystem/src/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final class BrandIcon extends StatelessWidget {
  const BrandIcon({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) =>
      SvgPicture.asset(Assets.images.brandIcon, width: width, height: height);
}
