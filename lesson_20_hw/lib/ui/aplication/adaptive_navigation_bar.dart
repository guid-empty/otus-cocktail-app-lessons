import 'package:cocktail_app/ui/style/custom_colors.dart';
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
            Tab(icon: Icon(Icons.favorite_border, color: CustomColors.active_tab, size: 26), text: 'Коктейли'),
            Tab(icon: Icon(Icons.favorite_border, color: CustomColors.inactive_tab, size: 26), text: 'Мой бар'),
            Tab(icon: Icon(Icons.favorite_border, color: CustomColors.inactive_tab, size: 26), text: 'Избранное'),
            Tab(icon: Icon(Icons.favorite_border, color: CustomColors.inactive_tab, size: 26), text: 'Профиль'),
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
