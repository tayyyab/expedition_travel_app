import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/leopard_image.dart';

part 'leopard_page.dart';
part 'vulture_page.dart';

class PageOffsetNotifier with ChangeNotifier {
  double _offset = 0;
  double _page = 0;

  PageOffsetNotifier(PageController pageController) {
    pageController.addListener(() {
      _offset = pageController.offset;
      _page = pageController.page;
      notifyListeners();
    });
  }

  double get offset => _offset;
  double get page => _page;
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PageOffsetNotifier(_pageController),
      child: Scaffold(
          body: Stack(alignment: Alignment.centerLeft, children: <Widget>[
        LeopardImage(),
        PageView(
            controller: _pageController,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              LeopardPage(),
              VulturePage(),
            ]),
      ])),
    );
  }
}
