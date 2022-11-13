import 'package:bmicalc/constants/colors.dart';
import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color backgroundColor;
  final bool hasShadow;
  final Widget? child;
  final Function()? onTap;

  const LayoutCard({
    this.child,
    this.onTap,
    this.backgroundColor = contentBackground,
    this.hasShadow = true,
  });

  const LayoutCard.fromActive({
    required bool isActive,
    this.child,
    this.onTap,
  })  : backgroundColor =
            isActive ? contentBackground : inactiveContentBackground,
        hasShadow = isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: child,
      ),
    );
  }
}
