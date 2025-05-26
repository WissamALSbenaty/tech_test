// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/datasources/abstract/i_auth_data_source.dart'
    as _i259;
import '../../features/auth/data/datasources/concrete/auth_data_source.dart'
    as _i736;
import '../../features/auth/domain/repositories/abstract/i_auth_repository.dart'
    as _i883;
import '../../features/auth/domain/repositories/concrete/auth_repository.dart'
    as _i314;
import '../../features/auth/domain/usecases/get_user_profile_usecase.dart'
    as _i82;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/presentation/bloc/auth_bloc/auth_cubit.dart'
    as _i980;
import '../../features/auth/presentation/bloc/login_bloc/login_cubit.dart'
    as _i594;
import '../../features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart'
    as _i663;
import '../../features/beneficiaries/data/datasources/concrete/beneficiaries_data_source.dart'
    as _i97;
import '../../features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart'
    as _i981;
import '../../features/beneficiaries/domain/repositories/concrete/beneficiaries_repository.dart'
    as _i398;
import '../../features/beneficiaries/domain/usecases/add_beneficiary_usecase.dart'
    as _i739;
import '../../features/beneficiaries/domain/usecases/get_beneficiaries_usecase.dart'
    as _i710;
import '../../features/beneficiaries/domain/usecases/remove_beneficiary_usecase.dart'
    as _i106;
import '../../features/beneficiaries/presentation/bloc/beneficiaries_cubit.dart'
    as _i76;
import '../../features/top_up/data/datasources/abstract/i_top_up_data_source.dart'
    as _i310;
import '../../features/top_up/data/datasources/concrete/top_up_data_source.dart'
    as _i942;
import '../../features/top_up/domain/repositories/abstract/i_top_up_repository.dart'
    as _i618;
import '../../features/top_up/domain/repositories/concrete/top_up_repository_impl.dart'
    as _i474;
import '../../features/top_up/domain/usecases/execute_top_up.dart' as _i136;
import '../../features/top_up/domain/usecases/execute_top_up_usecase.dart'
    as _i296;
import '../../features/top_up/domain/usecases/get_top_up_history_usercase.dart'
    as _i648;
import '../../features/top_up/domain/usecases/get_top_up_options.dart' as _i344;
import '../../features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_cubit.dart'
    as _i67;
import '../../features/top_up/presentation/bloc/top_up_history_bloc/top_up_history_cubit.dart'
    as _i913;
import '../../third_parties_modules/abstract/i_http_requestor_module.dart'
    as _i360;
import '../../third_parties_modules/abstract/i_internet_connection_module.dart'
    as _i1045;
import '../../third_parties_modules/concrete/http_requestor_module.dart'
    as _i845;
import '../../third_parties_modules/concrete/internet_connection_module.dart'
    as _i1002;
import '../data/clients/abstract/i_http_client.dart' as _i837;
import '../data/clients/concrete/http_client.dart' as _i403;
import '../data/local_database/databases/abstract/i_app_local_database.dart'
    as _i646;
import '../data/local_database/databases/concrete/app_local_database.dart'
    as _i703;
import '../presentation/routes/app_router.dart' as _i591;
import '../presentation/snake_bars/snake_bar_shower.dart' as _i197;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appRouterModule = _$AppRouterModule();
  final connectivityPackage = _$ConnectivityPackage();
  gh.singleton<_i197.SnakeBarShower>(() => _i197.SnakeBarShower());
  gh.singleton<_i591.AppRouter>(() => appRouterModule.getAppRouter);
  gh.singleton<_i895.Connectivity>(() => connectivityPackage.connectivity);
  gh.singleton<_i360.IHttpRequestorModule>(() => _i845.HttpRequestorModule());
  gh.singleton<_i646.IAppLocalDatabase>(() => _i703.AppLocalDatabase());
  gh.singleton<_i1045.IInternetConnectionModule>(
    () => _i1002.InternetConnectionModule(gh<_i895.Connectivity>()),
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i259.IAuthDataSource>(
      () => _i736.AuthDataSource(gh<_i646.IAppLocalDatabase>()));
  gh.singleton<_i837.IHttpClient>(() => _i403.HttpClient(
        gh<_i360.IHttpRequestorModule>(),
        gh<_i1045.IInternetConnectionModule>(),
      ));
  gh.lazySingleton<_i883.IAuthRepository>(
      () => _i314.AuthRepository(gh<_i259.IAuthDataSource>()));
  gh.lazySingleton<_i663.IBeneficiariesDataSource>(
      () => _i97.BeneficiariesDataSource(gh<_i646.IAppLocalDatabase>()));
  gh.lazySingleton<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i883.IAuthRepository>()));
  gh.lazySingleton<_i48.LogoutUseCase>(
      () => _i48.LogoutUseCase(gh<_i883.IAuthRepository>()));
  gh.singleton<_i82.GetUserProfileUseCase>(
      () => _i82.GetUserProfileUseCase(gh<_i883.IAuthRepository>()));
  gh.factory<_i310.ITopUpDataSource>(
      () => _i942.TopUpDataSource(gh<_i646.IAppLocalDatabase>()));
  gh.lazySingleton<_i618.ITopUpRepository>(
      () => _i474.TopUpRepository(gh<_i310.ITopUpDataSource>()));
  gh.singleton<_i980.AuthBloc>(() => _i980.AuthBloc(
        gh<_i82.GetUserProfileUseCase>(),
        gh<_i48.LogoutUseCase>(),
      ));
  gh.lazySingleton<_i981.IBeneficiariesRepository>(() =>
      _i398.BeneficiariesRepository(gh<_i663.IBeneficiariesDataSource>()));
  gh.lazySingleton<_i296.ExecuteTopUpUseCase>(
      () => _i296.ExecuteTopUpUseCase(gh<_i618.ITopUpRepository>()));
  gh.lazySingleton<_i648.GetTopUpHistoryUseCase>(
      () => _i648.GetTopUpHistoryUseCase(gh<_i618.ITopUpRepository>()));
  gh.factory<_i136.ExecuteTopUpUseCase>(
      () => _i136.ExecuteTopUpUseCase(gh<_i618.ITopUpRepository>()));
  gh.factory<_i344.GetTopUpOptionsUseCase>(
      () => _i344.GetTopUpOptionsUseCase(gh<_i618.ITopUpRepository>()));
  gh.lazySingleton<_i594.LoginCubit>(() => _i594.LoginCubit(
        gh<_i188.LoginUseCase>(),
        gh<_i980.AuthBloc>(),
        gh<_i197.SnakeBarShower>(),
      ));
  gh.lazySingleton<_i739.AddBeneficiaryUseCase>(
      () => _i739.AddBeneficiaryUseCase(gh<_i981.IBeneficiariesRepository>()));
  gh.lazySingleton<_i710.GetBeneficiariesUseCase>(() =>
      _i710.GetBeneficiariesUseCase(gh<_i981.IBeneficiariesRepository>()));
  gh.lazySingleton<_i106.RemoveBeneficiaryUseCase>(() =>
      _i106.RemoveBeneficiaryUseCase(gh<_i981.IBeneficiariesRepository>()));
  gh.factory<_i76.BeneficiariesCubit>(() => _i76.BeneficiariesCubit(
        gh<_i710.GetBeneficiariesUseCase>(),
        gh<_i739.AddBeneficiaryUseCase>(),
        gh<_i106.RemoveBeneficiaryUseCase>(),
        gh<_i197.SnakeBarShower>(),
      ));
  gh.factory<_i913.TopUpHistoryCubit>(
      () => _i913.TopUpHistoryCubit(gh<_i648.GetTopUpHistoryUseCase>()));
  gh.factory<_i67.CreateTopUpCubit>(() => _i67.CreateTopUpCubit(
        gh<_i296.ExecuteTopUpUseCase>(),
        gh<_i710.GetBeneficiariesUseCase>(),
        gh<_i739.AddBeneficiaryUseCase>(),
        gh<_i980.AuthBloc>(),
        gh<_i197.SnakeBarShower>(),
        gh<_i591.AppRouter>(),
      ));
  return getIt;
}

class _$AppRouterModule extends _i591.AppRouterModule {}

class _$ConnectivityPackage extends _i1002.ConnectivityPackage {
  @override
  _i895.Connectivity get connectivity => _i895.Connectivity();
}
