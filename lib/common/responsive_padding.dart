import 'package:flutter/material.dart';

class ResponsivePadding extends StatelessWidget {
  final Widget child;
  const ResponsivePadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 1024
          ? const EdgeInsets.symmetric(
              horizontal: 100)
          : MediaQuery.of(context).size.width >= 767 &&  MediaQuery.of(context).size.width < 1024 ?const EdgeInsets.symmetric(
              horizontal: 50) : const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      child: child,
    );
  }
}
