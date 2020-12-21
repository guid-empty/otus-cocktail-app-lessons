import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:cocktail_app/ui/style/svg_icons.dart';
import 'package:flutter/material.dart';

const appNavigationHeight = 73.0;

class ApplicationNavigationBar extends StatefulWidget {
  @override
  _ApplicationNavigationBarState createState() => _ApplicationNavigationBarState();
}

class _ApplicationNavigationBarState extends State<ApplicationNavigationBar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) => Material(
        color: CustomColors.background,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: SvgIcons.cocktails(CustomColors.active_tab), text: 'Коктейли'),
            Tab(icon: SvgIcons.myBar(CustomColors.inactive_tab), text: 'Мой бар'),
            Tab(icon: SvgIcons.favorite(CustomColors.inactive_tab), text: 'Избранное'),
            Tab(icon: SvgIcons.profile(CustomColors.inactive_tab), text: 'Профиль'),
          ],
        ),
      );

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
}
