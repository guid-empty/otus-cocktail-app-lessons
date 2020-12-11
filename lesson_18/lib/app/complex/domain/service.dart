import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../core/src/repository/async_cocktail_repository.dart';
import '../core/src/repository/cocktail_repository.dart';
import '../redux/state.dart';

class Service {
  final CocktailRepository cocktailRepository;

  Service._(this.cocktailRepository);
  static Service _singleton;
  factory Service(CocktailRepository cocktailRepository) =>
      _singleton ??= Service._(cocktailRepository);

  static Service buildService() {
    final cocktailRepository = AsyncCocktailRepository();

    return Service(cocktailRepository);
  }

  static Store<AppState> buildStore(Service service) {
    final thunkMiddleware =
        ExtraArgumentThunkMiddleware<AppState, Service>(service);

    return Store<AppState>(
      appReducer,
      initialState: AppState.initState,
      middleware: [thunkMiddleware],
    );

    // return environment == LVKEnvironment.prod
    //     ? Store<LVKState>(
    //         appReducer,
    //         initialState: LVKState.initState,
    //         middleware: [thunkMiddleware],
    //       )
    //     : DevToolsStore<LVKState>(
    //         appReducer,
    //         initialState: LVKState.initState,
    //         middleware: [thunkMiddleware, navigationMiddleware],
    //       );
  }
}

AppState appReducer(AppState state, dynamic action) => AppState();
