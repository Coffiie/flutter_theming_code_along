import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    this.withBackground = false,
    this.icon = Icons.qr_code,
    required this.onTap,
  });
  final IconData icon;
  final bool withBackground;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
