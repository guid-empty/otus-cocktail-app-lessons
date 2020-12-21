import 'package:cocktail_app/ui/app_drawer.dart';
import 'package:cocktail_app/ui/cocktails/adaptive_app_bar.dart';
import 'package:flutter/material.dart';

class ApplicationScaffoldWidget extends StatelessWidget {
  final Widget child;

  ApplicationScaffoldWidget({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(),
      drawer: AppDrawer(),
      body: child,
    );
  }
}
