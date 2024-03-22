import 'package:flutter/material.dart';
import 'package:rinf_minesweeper/home.dart';
import 'package:rinf_minesweeper/themes/light_theme.dart';
import 'package:rinf_minesweeper/utils/router.dart';
import './messages/generated.dart';

void main() async {
  await initializeRust();
  runApp(const RinfMinesweeper());
}

class RinfMinesweeper extends StatelessWidget {
  const RinfMinesweeper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RinfMinesweeperRouter.instance.buildRoutes(),
      initialRoute: HomeView.routeName,
      theme: lightTheme,
    );
  }
}
