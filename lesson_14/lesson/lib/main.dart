import 'package:flutter/material.dart';
import 'package:lesson/app/style/theme.dart';

import 'app/cocktails/filter_page.dart';
import 'app/core/src/repository/async_cocktail_repository.dart';
import 'cupertino/cupertino_context_menu.dart';
import 'cupertino/cupertino_popups.dart';
import 'custom/sample_1.dart';
import 'material/2_bottom_sheet.dart';
import 'material/1_dialogs.dart';
import 'material/3_pickers.dart';
import 'material/4_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainThemeData,
      home: MaterialDialogsSample(),
    );
  }
}

