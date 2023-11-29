import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jar/view/home/body_switcher.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      
          backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 200,
            width: 200,
            child: SvgPicture.asset("assets/images/jar.svg"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const BodySwitcher(),
        );

  }
}
