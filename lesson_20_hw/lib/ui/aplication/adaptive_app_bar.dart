import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/material.dart';

const applicationBarHeight = 40.0;

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(applicationBarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: CustomColors.background,
        automaticallyImplyLeading: true,
        title: Text('Cocktail of the day'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      );
}
