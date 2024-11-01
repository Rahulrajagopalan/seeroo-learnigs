// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route.dart';

/// generated route for
/// [AutoNavPage]
class AutoNavRoute extends PageRouteInfo<AutoNavRouteArgs> {
  AutoNavRoute({
    Key? key,
    String? name,
    List<PageRouteInfo>? children,
  }) : super(
          AutoNavRoute.name,
          args: AutoNavRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'AutoNavRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AutoNavRouteArgs>(orElse: () => const AutoNavRouteArgs());
      return AutoNavPage(
        key: args.key,
        name: args.name,
      );
    },
  );
}

class AutoNavRouteArgs {
  const AutoNavRouteArgs({
    this.key,
    this.name,
  });

  final Key? key;

  final String? name;

  @override
  String toString() {
    return 'AutoNavRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}
