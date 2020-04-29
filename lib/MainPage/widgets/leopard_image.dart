import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main_screen.dart';

class LeopardImage extends StatelessWidget {
  const LeopardImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1.6;

    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Positioned(
          width: width,
          left: -0.85 * notifier.offset,
          child: child,
        );
      },
      child: IgnorePointer(child: Image.asset('assets/leopard.png')),
    );
  }
}
