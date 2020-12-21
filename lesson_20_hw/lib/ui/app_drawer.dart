import 'package:cocktail_app/ui/cocktails/favorites_page.dart';
import 'package:cocktail_app/ui/style/colors.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      color: CustomColors.divider.withOpacity(.2),
      height: 5,
      thickness: 1,
      indent: 4,
      endIndent: 4,
    );

    return Container(
      constraints: BoxConstraints(minWidth: double.infinity),
      child: Drawer(
        elevation: 0,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Flutter Developer'),
              accountEmail: Text('flutter@otus.ru'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.blue : Colors.white,
                child: FlutterLogo(size: 20.0),
              ),
            ),
            ListTile(
              title: Text('About'),
            ),
            divider,
            ListTile(
              title: Text('Review'),
              leading: Icon(Icons.rate_review_outlined, color: CustomColors.headline1),
            ),
            divider,
            ListTile(
              title: Text('Language'),
              leading: Icon(Icons.language, color: CustomColors.headline1),
            ),
            divider,
            ListTile(
              title: Text('Favorites'),
              leading: Icon(Icons.favorite_border, color: CustomColors.headline1),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => FavoritesPageWidget(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
