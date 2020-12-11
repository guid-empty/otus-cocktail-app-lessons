import 'package:flutter/material.dart';
import 'package:flutter_redux_dev_tools/flutter_redux_dev_tools.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'app/complex/core/models.dart';
import 'app/complex/core/src/repository/cocktail_repository.dart';
import 'app/complex/redux/reducer.dart';
import 'app/complex/redux/state.dart';
import 'app/complex/ui/root_page.dart';
import 'app/complex/ui/style/theme.dart';
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
      theme: mainThemeData,
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
        'simple_app_dev': (_) {
          final store = DevToolsStore<SimpleAppState>(
            simpleAppStateReducer,
            initialState: SimpleAppState.init,
          );
          return ReduxDevToolsContainer(
            store: store,
            child: SimpleApp(
              store,
              devDrawerBuilder: (context) => Theme(
                data: ThemeData.light(),
                child: Drawer(
                  child: Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: ReduxDevTools(store),
                  ),
                ),
              ),
            ),
          );
        },
        'complex_app': (_) {
          final repository = AsyncCocktailRepository();
          final thunkMiddleware =
              ExtraArgumentThunkMiddleware<AppState, CocktailRepository>(
                  repository);

          final store = Store<AppState>(
            appReducer,
            initialState: AppState.initState,
            middleware: [thunkMiddleware],
          );

          return RootPage(store);
        }
      },
    );
  }
}
