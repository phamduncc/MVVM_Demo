import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mvvm_v2/view_model/user_list_view_model.dart';
import 'locator.config.dart';
import 'view_model/cake_list_view_model.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
// void configureDependencies() {
//   getIt.registerLazySingleton<CakeListViewModel>(()=>CakeListViewModel());
//   getIt.registerLazySingleton<UserListViewModel>(() => UserListViewModel());
// }
void configureDependencies() => $initGetIt(getIt);