import 'package:flutter/material.dart';
import 'package:rd_catalogo/themes/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.appColors.primary,
      ),
      body: Container(
        color: context.theme.appColors.background,
        child: Center(
            child: Container(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(),
        )),
      ),
    );
  }
}
