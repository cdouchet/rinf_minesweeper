import 'package:flutter/material.dart';
import 'package:rinf_minesweeper/home.dart';

class RinfMinesweeperRouter {
  static final RinfMinesweeperRouter instance =
      RinfMinesweeperRouter._internal();

  RinfMinesweeperRouter._internal();

  Map<String, Widget Function(BuildContext)> buildRoutes() => {
        HomeView.routeName: (context) => HomeView(),
      };
}
