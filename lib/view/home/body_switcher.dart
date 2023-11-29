import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:jar/common/responsive_padding.dart';
import 'package:jar/view/dashboard/dashboard.dart';
import 'package:jar/view/home/dashboard_float_btn.dart';
import 'package:jar/view/home/drawer/drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BodySwitcher extends StatefulWidget {
  const BodySwitcher({super.key});

  @override
  State<BodySwitcher> createState() => _BodySwitcherState();
}

class _BodySwitcherState extends State<BodySwitcher> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
        statusBarColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5)));
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, height * 0.8),
            child: ResponsivePadding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer
                              .withOpacity(0.5)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (currentPage == 0)
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withOpacity(0.5)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Shimmer(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.online_prediction,
                                            color: Colors.redAccent
                                                .withOpacity(0.5),
                                            size: 12,
                                          ),
                                          Text(
                                            "Live",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    color: Colors.redAccent
                                                        .withOpacity(0.7),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10),
                                          )
                                        ],
                                      ),
                                      const Gap(10),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Live Gold Price",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    color: Colors.blueGrey,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                          ),
                                          const Gap(5),
                                          Text(
                                            "\u{20B9} 6412.26/gm",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.2)),
                              shape: BoxShape.circle,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withOpacity(0.5)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        floatingActionButton: const DashBoardFloatBtn(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          backgroundColor:
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
          currentIndex: currentPage,
          onTap: (index) {
            setState(() {
              currentPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_filled, color: Colors.white),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.document_scanner_outlined, color: Colors.white),
              icon: Icon(Icons.document_scanner, color: Colors.grey),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.supervised_user_circle, color: Colors.white),
              icon: Icon(Icons.verified_user, color: Colors.grey),
              label: 'Profile',
            ),
          ],
        ),
        body: currentPage == 0
            ? const Dashboard()
            : currentPage == 1
                ? Container(
                    child: Center(
                      child: Text(
                        "TranSactions",
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  )
                : Container(
                   child: Center(
                      child: Text(
                        "Profile",
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                ),
        drawer: JarDrawer(),
      ),
    );
  }
}
