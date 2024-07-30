import 'dart:developer';

import 'package:notes/main.dart';

class Navigation {
  Widget page;
  Navigation(this.page) {
    navigationRM(page);
    log('Navigation { $page }');
  }
}
