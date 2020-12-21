import 'package:cocktail_app/ui/style/colors.dart';
import 'package:flutter/material.dart';

const appBarDesktopHeight = 40.0;

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(appBarDesktopHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
}
