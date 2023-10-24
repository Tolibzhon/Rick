import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rick/feature/characters/data/repo_impls/get_person_repo_impl.dart';
import 'package:rick/feature/characters/domain/repositories/get_person_repo.dart';
import 'package:rick/feature/characters/domain/use_cases/get_person_use_case.dart';
import 'package:rick/feature/characters/presentation/characters_screen/cubits/get_person_cubit/get_person_cubit.dart';
import 'package:rick/feature/episodes/data/repo_impls/get_episodes_repo_impl.dart';
import 'package:rick/feature/episodes/domain/repositories/get_episodes_repo.dart';
import 'package:rick/feature/episodes/domain/use_cases/get_episodes_use_case.dart';
import 'package:rick/feature/episodes/presentation/cubit/get_episodes_cubit.dart';
import 'package:rick/feature/location/data/repo_impls/get_location_repo_impl.dart';
import 'package:rick/feature/location/domain/repositories/get_location_repo.dart';
import 'package:rick/feature/location/domain/use_cases/get_location_use_case.dart';
import 'package:rick/feature/location/presentation/cubit/get_location_cubit.dart';
import 'package:rick/feature/splash/splash_cubit/splash_cubit.dart';
import 'package:rick/routes/mobile_auto_router.dart';
import 'package:rick/server/dio_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

// ignore: long-method
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  /// Other Services
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton<Dio>(() => DioSettings(prefs: sl()).dio);

  sl.registerSingleton<AppRouter>(AppRouter());

  /// Repository
  sl.registerFactory<GetPersonRepo>(() => GetPersonRepoImpl(dio: sl()));
  sl.registerFactory<GetLocationRepo>(() => GetLocationRepoImpl(dio: sl()));
  sl.registerFactory<GetEpisodesRepo>(() => GetEpisodesRepoImpl(dio: sl()));

  /// UseCases
  sl.registerFactory<GetPersonUseCase>(() => GetPersonUseCase(repo: sl()));
  sl.registerFactory<GetLocationUseCase>(() => GetLocationUseCase(repo: sl()));
  sl.registerFactory<GetEpisodesUseCase>(() => GetEpisodesUseCase(repo: sl()));

  /// BLoCs / Cubits

  sl.registerFactory<SplashCubit>(() => SplashCubit(prefs: sl()));
  sl.registerFactory<GetPersonCubit>(() => GetPersonCubit(useCase: sl()));
  sl.registerFactory<GetLocationCubit>(() => GetLocationCubit(useCase: sl()));
  sl.registerFactory<GetEpisodesCubit>(() => GetEpisodesCubit(useCase: sl()));
}
