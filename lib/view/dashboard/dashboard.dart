import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jar/common/responsive_padding.dart';
import 'package:lottie/lottie.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  /// to handle data refresh when there is no data
  RefreshController newRefreshController = RefreshController();

  Future<void> onRefresh() async {
    Future.delayed(const Duration(milliseconds: 100), () {
      newRefreshController.refreshCompleted();
    });
  }

  ///onLoading
  Future<void> onLoading() async {
    // monitor network fetch
    print("load completed");
    Future.delayed(const Duration(seconds: 1), () {
      newRefreshController.loadComplete();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
    
      onLoading: onLoading,
      onRefresh: onRefresh,
      controller: newRefreshController,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///StartToday
            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HI VAIBHAV",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const Gap(10),
                        Text(
                          "0.0000 gm",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Gap(10),
                        Text(
                          "Start filling your gold locker",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1),
                        ),
                        const Gap(30),
                        Container(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                "Start Today",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const Icon(Icons.arrow_forward)
                            ],
                          ),
                        )
                      ],
                    ),
                    Lottie.asset('assets/animations/locker.json',
                        height: 150, repeat: false),
                  ],
                ),
              ),
            ),
            const Gap(20),

            ///Earn Gold
            ResponsivePadding(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Earn Gold",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withOpacity(0.5)),
                          child: Text(
                            "Spins remaining :10",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Colors.purple.withOpacity(0.5),
                                Colors.purple.withOpacity(0.4),
                                Colors.purple.withOpacity(0.3),
                                Colors.purple.withOpacity(0.2),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.5),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.4),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.3),
                              ], // Gradient from https://learnui.design/tools/gradient-generator.html
                              tileMode: TileMode.mirror,
                              transform: const GradientRotation(pi / 4)),
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer
                              .withOpacity(0.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Lottie.asset('assets/animations/spinner.json',
                              height: 100, reverse: true),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Spin to Win",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const Gap(10),
                              Text(
                                "Upto \u{20B9}18 worth of\nExtra Gold",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),

            ///Recommended
            ResponsivePadding(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended for you",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    const Gap(15),
                    Container(
                      padding:
                          const EdgeInsets.only(right: 10, left: 10, top: 10),
                      decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer
                              .withOpacity(0.5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/cashback.png',
                                  height: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cashback just for you!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  const Gap(8),
                                  Text(
                                    "Get upto \u{20B9}10 assured winnings today",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.w200,
                                        ),
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios,
                                      color: Colors.grey)),
                            ],
                          ),
                          const Gap(12),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  right: 8, left: 8, top: 2),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.check_circle, size: 20),
                                    const Gap(10),
                                    Text(
                                      "OFFER EXPIRES SOON",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///DailySavings
            ResponsivePadding(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context)
                        .colorScheme
                        .secondaryContainer
                        .withOpacity(0.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DAILY SAVINGS",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios,
                                color: Colors.grey)),
                      ],
                    ),
                    const Gap(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Reach your saving goal 3X faster with daily saving",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        const Gap(70),
                        Image.asset(
                          'assets/images/3x.png',
                          height: 70,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 60,
                          child: Stack(
                            children: [
                              for (var i = 0; i < [1, 2, 3, 4].length; i++)
                                Positioned(
                                    left: i * 10,
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://avatars.githubusercontent.com/u/61495501?v=4"),
                                      radius: 10,
                                    )),
                            ],
                          ),
                        ),
                        Text(
                          "Trusted by 2L+ Jar users",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
