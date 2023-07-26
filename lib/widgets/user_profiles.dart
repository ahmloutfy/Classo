import 'package:flutter/material.dart';

class UsersProfiles extends StatelessWidget {
  const UsersProfiles({
    super.key, this.leftAlignment, this.userImage,
  });

  final double? leftAlignment;
  final String? userImage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftAlignment,
      child: CircleAvatar(
        child: Image.asset(userImage!),
      ),);
  }
}