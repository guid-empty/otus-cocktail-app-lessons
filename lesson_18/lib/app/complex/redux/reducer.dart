import 'categories/reducer.dart';
import 'cocktails/reducer.dart';
import 'favorites/state.dart';
import 'state.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
      categoriesState: categoriesReducer(state.categoriesState, action),
      favoritesState: FavoritesState.initState,
      cocktailsState: cocktailsReducer(state.cocktailsState, action),
    );
