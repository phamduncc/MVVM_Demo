// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'model/Cake.dart' as _i3;
import 'view_model/cake_list_view_model.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Cake>(() => _i3.Cake(
      id: get<int>(),
      title: get<String>(),
      price: get<int>(),
      size: get<int>()));
  gh.lazySingleton<_i4.CakeListViewModel>(() => _i4.CakeListViewModel());
  return get;
}
