import 'package:flutter/material.dart';
import 'package:rpg/screens/master.dart';
import 'package:rpg/screens/master_select.dart';
import 'package:rpg/screens/title.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> defaultRotes = {
    '/': (context) => const TitleScreen(),
    '/master/select': (context) => const MasterSelectScreen(),
    '/master': (context) => const MasterScreen(),
  };
}