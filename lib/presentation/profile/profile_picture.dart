import 'package:flutter/material.dart';
import 'package:flutter_theming_code_along/presentation/core/theme/app_colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.profilePicturePath,
    this.isBorder = true,
    this.innerPadding = 2,
    this.borderWidth = 1,
    this.innerColor = AppColors.drawerBackdropColor,
  });
  final String profilePicturePath;
  final bool isBorder;
  final double innerPadding;
  final double borderWidth;
  final Color innerColor;

  @override
  Widget build(BuildContext context) {
    if (isBorder) {
      return _ProfilePictureWithBorder(
        profilePicturePath: profilePicturePath,
        borderWidth: borderWidth,
        innerPadding: innerPadding,
        innerColor: innerColor,
      );
    }
    return _ProfilePicture(profilePicturePath: profilePicturePath);
  }
}

class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture({required this.profilePicturePath});
  final String profilePicturePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.drawerBackdropColor,
        ),
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            profilePicturePath,
          ),
        ),
      ),
    );
  }
}

class _ProfilePictureWithBorder extends StatelessWidget {
  final String profilePicturePath;
  final double innerPadding;
  final double borderWidth;
  final Color innerColor;

  const _ProfilePictureWithBorder({
    required this.borderWidth,
    required this.innerPadding,
    required this.innerColor,
    required this.profilePicturePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.purple,
          ],
        ),
      ),
      padding: EdgeInsets.all(borderWidth),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: innerColor,
        ),
        padding: EdgeInsets.all(innerPadding),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            profilePicturePath,
          ),
        ),
      ),
    );
  }
}
