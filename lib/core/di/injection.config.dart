// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:fintech/core/data/clients/abstract/i_http_client.dart' as _i569;
import 'package:fintech/core/data/clients/concrete/http_client.dart' as _i377;
import 'package:fintech/core/utils/flavors.dart' as _i387;
import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart'
    as _i705;
import 'package:fintech/features/beneficiaries/data/datasources/concrete/beneficiaries_data_source_impl.dart'
    as _i486;
import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart'
    as _i172;
import 'package:fintech/features/beneficiaries/domain/repositories/concrete/beneficiaries_repository_impl.dart'
    as _i555;
import 'package:fintech/features/top_up/data/datasources/abstract/i_top_up_data_source.dart'
    as _i831;
import 'package:fintech/features/top_up/data/datasources/concrete/top_up_data_source_impl.dart'
    as _i941;
import 'package:fintech/features/top_up/data/datasources/top_up_data_source.dart'
    as _i318;
import 'package:fintech/features/top_up/data/datasources/top_up_data_source_impl.dart'
    as _i905;
import 'package:fintech/features/top_up/domain/repositories/concrete/top_up_repository_impl.dart'
    as _i1072;
import 'package:fintech/features/top_up/domain/repositories/itop_up_repository.dart'
    as _i270;
import 'package:fintech/features/top_up/domain/usecases/execute_top_up.dart'
    as _i708;
import 'package:fintech/features/top_up/domain/usecases/get_top_up_options.dart'
    as _i213;
import 'package:fintech/features/top_up/presentation/bloc/top_up_bloc.dart'
    as _i943;
import 'package:fintech/third_parties_modules/abstract/i_http_requestor_module.dart'
    as _i30;
import 'package:fintech/third_parties_modules/abstract/i_internet_connection_module.dart'
    as _i665;
import 'package:fintech/third_parties_modules/concrete/http_requestor_module.dart'
    as _i130;
import 'package:fintech/third_parties_modules/concrete/internet_connection_module.dart'
    as _i972;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _DevelopingFlavor = 'DevelopingFlavor';
const String _StagingFlavor = 'StagingFlavor';
const String _ProductionFlavor = 'ProductionFlavor';

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
    final connectivityPackage = _$ConnectivityPackage();
    gh.singleton<_i387.Flavor>(
      () => _i387.DevelopingFlavor(),
      registerFor: {_DevelopingFlavor},
    );
    gh.singleton<_i387.Flavor>(
      () => _i387.StagingFlavor(),
      registerFor: {_StagingFlavor},
    );
    gh.singleton<_i387.Flavor>(
      () => _i387.ProductionFlavor(),
      registerFor: {_ProductionFlavor},
    );
    gh.singleton<_i895.Connectivity>(() => connectivityPackage.connectivity);
    gh.factory<_i831.ITopUpDataSource>(() => _i941.TopUpDataSourceImpl());
    gh.factory<_i318.TopUpDataSource>(() => _i905.TopUpDataSourceImpl());
    gh.factory<_i705.IBeneficiariesDataSource>(
        () => _i486.BeneficiariesDataSourceImpl());
    gh.singleton<_i665.IInternetConnectionModule>(
      () => _i972.InternetConnectionModule(gh<_i895.Connectivity>()),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i30.IHttpRequestorModule>(
        () => _i130.CustomHttpRequestorModule(gh<_i387.Flavor>()));
    gh.singleton<_i569.IHttpClient>(() => _i377.HttpClient(
          gh<_i30.IHttpRequestorModule>(),
          gh<_i665.IInternetConnectionModule>(),
        ));
    gh.factory<_i270.ITopUpRepository>(
        () => _i1072.TopUpRepositoryImpl(gh<_i831.ITopUpDataSource>()));
    gh.factory<_i172.IBeneficiariesRepository>(() =>
        _i555.BeneficiariesRepositoryImpl(
            gh<_i705.IBeneficiariesDataSource>()));
    gh.factory<_i708.ExecuteTopUpUseCase>(
        () => _i708.ExecuteTopUpUseCase(gh<_i270.ITopUpRepository>()));
    gh.factory<_i213.GetTopUpOptionsUseCase>(
        () => _i213.GetTopUpOptionsUseCase(gh<_i270.ITopUpRepository>()));
    gh.factory<_i943.TopUpBloc>(() => _i943.TopUpBloc(
          gh<_i213.GetTopUpOptionsUseCase>(),
          gh<_i708.ExecuteTopUpUseCase>(),
        ));
    return this;
  }
}

class _$ConnectivityPackage extends _i972.ConnectivityPackage {
  @override
  _i895.Connectivity get connectivity => _i895.Connectivity();
}
