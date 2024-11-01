import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_bloc.dart';
import 'package:rahul_test_file/domain/repository/post_repository.dart';
import 'package:rahul_test_file/recycle_bin/bin_folder.dart';
import 'package:rahul_test_file/recycle_bin/cubit/counter_page.dart';
import 'package:rahul_test_file/counter_and_navigate/view/navigation_page.dart';
import 'package:rahul_test_file/counter_observer.dart';
import 'package:rahul_test_file/presentation/features/translation/translation_bloc/translation_bloc.dart';
import 'package:rahul_test_file/learnigs/learn_list_fun.dart';
import 'package:rahul_test_file/learnigs/home.dart';
import 'package:rahul_test_file/data/repository/post_repository_impl.dart';
import 'package:rahul_test_file/presentation/core/router/route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'di/injectable.dart';

void main() {
  // To Impliment counter observer if neeeded
  // Bloc.observer = const CounterObserver();
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
        providers: [
          BlocProvider<NavigateBloc>(
              create: (context) => NavigateBloc(PostRepositoryImpl(Dio()))),
          BlocProvider<TranslationBloc>(create: (context) => TranslationBloc())
        ],
        child: BlocBuilder<TranslationBloc, TranslationState>(
            builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Rahul Demo',
            locale: state.locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: [
              Locale('en'),
              Locale('es'),
            ],
            home: NavigationPage(),
            // routerConfig: _appRouter.config(),
          );
        }));
  }
}
