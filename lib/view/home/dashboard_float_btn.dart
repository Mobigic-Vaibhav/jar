import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashBoardFloatBtn extends StatelessWidget {
  const DashBoardFloatBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Theme.of(context).scaffoldBackgroundColor,
              Theme.of(context).scaffoldBackgroundColor,
              Theme.of(context).scaffoldBackgroundColor,
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
              Colors.purple,
              Colors.purple,
              Colors.purple,
              Colors.purple.withOpacity(0.2),
              Colors.purple,
            ], // Gradient from https://learnui.design/tools/gradient-generator.html

            transform: const GradientRotation(pi / 4)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.paid,
              color: Colors.amber,
            ),
            const Gap(10),
            Text(
              "Start Today",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
