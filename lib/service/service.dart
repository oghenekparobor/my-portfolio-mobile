import 'package:flutter/material.dart';

class HomeService extends ChangeNotifier {
  final PageController _leftPage = PageController();
  final PageController _rightPage = PageController();

  var _current = 0;

  PageController get leftPage => _leftPage;

  PageController get rightPage => _rightPage;

  int get currentPage => _current;

  void nav(int page) {
    _current = page;

    _leftPage.animateToPage(
      _current,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );

    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      _rightPage.animateToPage(
        _current,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    });

    notifyListeners();
  }

  String title(int current) {
    switch (current) {
      case 0:
        return 'Home';
      case 1:
        return 'Works';
      case 2:
        return 'Contact';

      default:
        return '';
    }
  }

  double size(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
