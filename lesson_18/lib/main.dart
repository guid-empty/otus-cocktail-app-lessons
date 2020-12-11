import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'app/simple/redux/reducer.dart';
import 'app/simple/redux/state.dart';
import 'app/simple/view.dart';
import 'home.dart';

void main() {
  runApp(CoreApp());
}

class CoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => HomeView(),
        'simple_app': (_) {
          final store = Store<SimpleAppState>(
            simpleAppStateReducer,
            initialState: SimpleAppState.init,
          );
          return SimpleApp(store);
        },
      },
    );
  }
}
