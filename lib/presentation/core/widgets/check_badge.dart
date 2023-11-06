import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CheckBadge extends StatelessWidget {
  const CheckBadge({super.key, this.size = 10});
  final double size;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: Theme.of(context).colorScheme.primary,
        shape: badges.BadgeShape.twitter,
      ),
      badgeContent: Icon(
        Icons.check,
        color: Theme.of(context).scaffoldBackgroundColor,
        size: size,
      ),
    );
  }
}
