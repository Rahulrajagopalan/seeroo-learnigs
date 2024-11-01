// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../counter_and_navigate/bloc/navigate_bloc.dart' as _i895;
import '../data/repository/post_repository_impl.dart' as _i962;
import '../domain/repository/post_repository.dart' as _i90;
import '../presentation/features/translation/translation_bloc/translation_bloc.dart'
    as _i550;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i550.TranslationBloc>(() => _i550.TranslationBloc());
    gh.factory<_i90.PostRepository>(
        () => _i962.PostRepositoryImpl(gh<_i361.Dio>()));
    gh.factory<_i895.NavigateBloc>(
        () => _i895.NavigateBloc(gh<_i90.PostRepository>()));
    return this;
  }
}
