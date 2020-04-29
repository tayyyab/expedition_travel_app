import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main_screen.dart';

class VultureImage extends StatelessWidget {
  const VultureImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1.6;

    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          width: width,
          left:
              0.55 * MediaQuery.of(context).size.width - 0.85 * notifier.offset,
          child: child,
        );
      },
      child: IgnorePointer(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: Image.asset(
          'assets/vulture.png',
          height: MediaQuery.of(context).size.height / 3,
        ),
      )),
    );
  }
}
