import 'package:injectable/injectable.dart';

abstract class Flavor {
  String get baseUrl;
  String get name;
  bool get showErrors;
  bool get isMultiDevicePreview;

}

@Environment('DevelopingFlavor')
@Singleton(as: Flavor, order: -1)
class DevelopingFlavor extends Flavor {
  @override
  String get baseUrl => 'https://api.dev.fintech.com';
  @override
  String get name => 'DevelopingFlavor';
  @override
  bool get showErrors => true;
  @override
  bool get isMultiDevicePreview => true;
}

@Environment('StagingFlavor')
@Singleton(as: Flavor, order: -1)
class StagingFlavor extends Flavor {
  @override
  String get baseUrl => 'https://api.staging.fintech.com';
  @override
  String get name => 'StagingFlavor';
  @override
  bool get showErrors => true;
  @override
  bool get isMultiDevicePreview => false;
}

@Environment('ProductionFlavor')
@Singleton(as: Flavor, order: -1)
class ProductionFlavor extends Flavor {
  @override
  String get baseUrl => 'https://api.production.fintech.com';
  @override

  @override
  String get name => 'ProductionFlavor';
  @override
  bool get showErrors => true;
  @override
  bool get isMultiDevicePreview => false;
}
