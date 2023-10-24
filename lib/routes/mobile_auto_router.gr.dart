// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:rick/feature/characters/data/models/person_model.dart' as _i11;
import 'package:rick/feature/characters/presentation/characters_filter/characters_filter.dart'
    as _i2;
import 'package:rick/feature/characters/presentation/person_detaile_screen/person_detaile_screen.dart'
    as _i6;
import 'package:rick/feature/episodes/data/models/episodes_model.dart' as _i10;
import 'package:rick/feature/episodes/presentation/episodes_detaile_screen.dart'
    as _i3;
import 'package:rick/feature/location/presentation/location_detaile_screen.dart'
    as _i4;
import 'package:rick/feature/location/presentation/location_filter.dart' as _i5;
import 'package:rick/feature/splash/splash_screen.dart' as _i7;
import 'package:rick/widgets/buttom_navigator.dart' as _i1;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BottomNavigatorRoute.name: (routeData) {
      final args = routeData.argsAs<BottomNavigatorRouteArgs>(
          orElse: () => const BottomNavigatorRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BottomNavigatorScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    CharacterFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterFiltersRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CharacterFiltersScreen(
          key: args.key,
          gender: args.gender,
          status: args.status,
        ),
      );
    },
    EpisodesDetaileRoute.name: (routeData) {
      final args = routeData.argsAs<EpisodesDetaileRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EpisodesDetaileScreen(
          key: args.key,
          modal: args.modal,
        ),
      );
    },
    LocationDetaileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LocationDetaileScreen(),
      );
    },
    LocationFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<LocationFiltersRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LocationFiltersScreen(
          key: args.key,
          type: args.type,
          dimension: args.dimension,
        ),
      );
    },
    PersonDetaileRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetaileRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PersonDetaileScreen(
          key: args.key,
          modal: args.modal,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i8.PageRouteInfo<BottomNavigatorRouteArgs> {
  BottomNavigatorRoute({
    _i9.Key? key,
    int index = 0,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          BottomNavigatorRoute.name,
          args: BottomNavigatorRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i8.PageInfo<BottomNavigatorRouteArgs> page =
      _i8.PageInfo<BottomNavigatorRouteArgs>(name);
}

class BottomNavigatorRouteArgs {
  const BottomNavigatorRouteArgs({
    this.key,
    this.index = 0,
  });

  final _i9.Key? key;

  final int index;

  @override
  String toString() {
    return 'BottomNavigatorRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i2.CharacterFiltersScreen]
class CharacterFiltersRoute
    extends _i8.PageRouteInfo<CharacterFiltersRouteArgs> {
  CharacterFiltersRoute({
    _i9.Key? key,
    required String gender,
    required String status,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CharacterFiltersRoute.name,
          args: CharacterFiltersRouteArgs(
            key: key,
            gender: gender,
            status: status,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterFiltersRoute';

  static const _i8.PageInfo<CharacterFiltersRouteArgs> page =
      _i8.PageInfo<CharacterFiltersRouteArgs>(name);
}

class CharacterFiltersRouteArgs {
  const CharacterFiltersRouteArgs({
    this.key,
    required this.gender,
    required this.status,
  });

  final _i9.Key? key;

  final String gender;

  final String status;

  @override
  String toString() {
    return 'CharacterFiltersRouteArgs{key: $key, gender: $gender, status: $status}';
  }
}

/// generated route for
/// [_i3.EpisodesDetaileScreen]
class EpisodesDetaileRoute extends _i8.PageRouteInfo<EpisodesDetaileRouteArgs> {
  EpisodesDetaileRoute({
    _i9.Key? key,
    required _i10.EpisodesResult modal,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          EpisodesDetaileRoute.name,
          args: EpisodesDetaileRouteArgs(
            key: key,
            modal: modal,
          ),
          initialChildren: children,
        );

  static const String name = 'EpisodesDetaileRoute';

  static const _i8.PageInfo<EpisodesDetaileRouteArgs> page =
      _i8.PageInfo<EpisodesDetaileRouteArgs>(name);
}

class EpisodesDetaileRouteArgs {
  const EpisodesDetaileRouteArgs({
    this.key,
    required this.modal,
  });

  final _i9.Key? key;

  final _i10.EpisodesResult modal;

  @override
  String toString() {
    return 'EpisodesDetaileRouteArgs{key: $key, modal: $modal}';
  }
}

/// generated route for
/// [_i4.LocationDetaileScreen]
class LocationDetaileRoute extends _i8.PageRouteInfo<void> {
  const LocationDetaileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LocationDetaileRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationDetaileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LocationFiltersScreen]
class LocationFiltersRoute extends _i8.PageRouteInfo<LocationFiltersRouteArgs> {
  LocationFiltersRoute({
    _i9.Key? key,
    required String type,
    required String dimension,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LocationFiltersRoute.name,
          args: LocationFiltersRouteArgs(
            key: key,
            type: type,
            dimension: dimension,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationFiltersRoute';

  static const _i8.PageInfo<LocationFiltersRouteArgs> page =
      _i8.PageInfo<LocationFiltersRouteArgs>(name);
}

class LocationFiltersRouteArgs {
  const LocationFiltersRouteArgs({
    this.key,
    required this.type,
    required this.dimension,
  });

  final _i9.Key? key;

  final String type;

  final String dimension;

  @override
  String toString() {
    return 'LocationFiltersRouteArgs{key: $key, type: $type, dimension: $dimension}';
  }
}

/// generated route for
/// [_i6.PersonDetaileScreen]
class PersonDetaileRoute extends _i8.PageRouteInfo<PersonDetaileRouteArgs> {
  PersonDetaileRoute({
    _i9.Key? key,
    required _i11.PersonResult modal,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PersonDetaileRoute.name,
          args: PersonDetaileRouteArgs(
            key: key,
            modal: modal,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonDetaileRoute';

  static const _i8.PageInfo<PersonDetaileRouteArgs> page =
      _i8.PageInfo<PersonDetaileRouteArgs>(name);
}

class PersonDetaileRouteArgs {
  const PersonDetaileRouteArgs({
    this.key,
    required this.modal,
  });

  final _i9.Key? key;

  final _i11.PersonResult modal;

  @override
  String toString() {
    return 'PersonDetaileRouteArgs{key: $key, modal: $modal}';
  }
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
