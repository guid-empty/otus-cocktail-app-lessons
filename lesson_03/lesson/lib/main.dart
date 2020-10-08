import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/theme/material.dart';

import 'basic/clip.dart';
import 'basic/container.dart';
import 'basic/image.dart';
import 'coctail/custom_child_layout.dart';
import 'coctail/ingridient_page.dart';
import 'flex/flex.dart';
import 'layouts/stack.dart';
import 'layouts/wrap.dart';

void main() {
  runApp(FlowSample());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: materialSampleThemeData,
      home: MaterialSamplePage(),
    );
  }
}


