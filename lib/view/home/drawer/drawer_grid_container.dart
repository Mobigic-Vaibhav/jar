
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class GridItem {
  final Icon icon;
  final String title;
  final bool newdata;
  GridItem({required this.icon, required this.title, required this.newdata});
}

// Replace this list with your actual data
List<GridItem> gridItems = [
  GridItem(
      icon: const Icon(Icons.workspace_premium, size: 30),
      title: 'Quest',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.diamond, size: 30),
      title: 'Save in Gold',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.savings, size: 30),
      title: 'Daily Savings',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.calculate, size: 30),
      title: 'Savings Calculator',
      newdata: false),
  GridItem(
      icon: const Icon(
        Icons.settings_accessibility,
        size: 30,
      ),
      title: 'Refer and Earn',
      newdata: true),
  GridItem(
      icon: const Icon(Icons.payments, size: 30),
      title: 'Withdraw Savings',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.emoji_events, size: 30),
      title: 'Gold X',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.medication_liquid, size: 30),
      title: 'Helth Insurance',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.settings, size: 30),
      title: 'Settings',
      newdata: false),
  GridItem(
      icon: const Icon(Icons.help, size: 30),
      title: 'Get Help',
      newdata: false),

  // Add more items as needed
];

class GridItemWidget extends StatelessWidget {
  final GridItem gridItem;

  GridItemWidget({required this.gridItem});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Shimmer(
        enabled: gridItem.newdata,
        child: Container(
          padding: EdgeInsets.only(
              bottom: 5,
              left: 5,
              right: gridItem.newdata ? 0 : 5,
              top: gridItem.newdata ? 0 : 5),
          decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .primaryContainer
                  .withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.grey.withOpacity(0.3))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (gridItem.newdata)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        right: 8,
                        left: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                          color: Theme.of(context).colorScheme.secondary),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "New",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              if (!gridItem.newdata) const Gap(20),
              gridItem.icon,
              const Gap(10),
              Text(
                gridItem.title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
