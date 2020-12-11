import 'package:redux/redux.dart';

import '../redux/state.dart';
import 'service.dart';
// import 'package:redux_dev_tools/redux_dev_tools.dart';

class DI {
  final Service service;
  final Store<AppState> store;

  DI(this.service, this.store);
}
