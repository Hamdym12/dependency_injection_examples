// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dependency_injection/di_with_injectable/di_with_injectable.dart'
    as _i509;
import 'package:dependency_injection/with_di/di_with_service_locater.dart'
    as _i501;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i509.GetData>(() => _i509.GetData());
    gh.lazySingleton<_i501.CounterClass>(() => _i501.CounterClass());
    gh.lazySingleton<_i509.CombineData>(
      () => _i509.CombineData(gh<_i509.GetData>()),
    );
    return this;
  }
}
