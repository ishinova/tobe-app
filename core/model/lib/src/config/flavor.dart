/// Product flavor
enum Flavor { dev, stg, prod }

extension FlavorX on Flavor {
  String get name => switch (this) {
    Flavor.dev => 'dev',
    Flavor.stg => 'stg',
    Flavor.prod => 'prod',
  };
}
