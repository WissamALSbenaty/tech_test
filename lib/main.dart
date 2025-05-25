import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintech/core/di/injection.dart';
import 'package:fintech/core/presentation/routes/app_router.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ErrorWidget.builder = (final FlutterErrorDetails flutterErrorDetails) => Text(
        SomethingWentWrongError().errorMessage,
      );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return ToastificationWrapper(
        config: const ToastificationConfig(alignment: Alignment.bottomCenter),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          splitScreenMode: true,
          minTextAdapt: true,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(create: (final _) => getIt<AuthBloc>()),
            ],
            child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: getAppRouter.config(),
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                  useMaterial3: true,
                ),
                builder: (final context, final child) => MediaQuery(
                    data:
                        MediaQuery.of(context).copyWith(viewPadding: EdgeInsets.zero, textScaler: TextScaler.noScaling),
                    child: child!)),
          ),
          // home: const SplashPage(),
        ));
  }
}
