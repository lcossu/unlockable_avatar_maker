import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'avatarMakerController.dart';

/// This widget renders the AvatarMaker of the user on screen
///
/// Accepts a [radius] which defaults to 75.0
/// and a [backgroundColor] which defaults to blueAccent
///
/// Advice the users to set up their AvatarMaker first to avoid unexpected issues.
class AvatarMakerCircleAvatar extends StatelessWidget {
  final double radius;
  final Color? backgroundColor;
  AvatarMakerCircleAvatar({Key? key, this.radius = 75.0, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //if (backgroundColor == null)
    return buildGetX();
    //CircleAvatar(radius: radius, child: buildGetX());
    // return CircleAvatar(
    //     radius: radius, backgroundColor: backgroundColor, child: buildGetX());
  }

  GetX<AvatarMakerController> buildGetX() {
    return GetX<AvatarMakerController>(
        init: AvatarMakerController(),
        autoRemove: false,
        builder: (snapshot) {
          if (snapshot.avatarMaker.value.isEmpty) {
            return CupertinoActivityIndicator();
          }
          return SvgPicture.string(
            snapshot.avatarMaker.value,
            height: radius,
            semanticsLabel: "Your AvatarMaker",
            placeholderBuilder: (context) => Center(
              child: CupertinoActivityIndicator(),
            ),
          );
        });
  }
}
