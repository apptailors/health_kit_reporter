import 'package:health_kit_reporter/model/type/electrocardiogram_type.dart';

/// Equivalent of [Electrocardiogram.VoltageMeasurement]
/// from [HealthKitReporter] https://cocoapods.org/pods/HealthKitReporter
///
/// Supports [map] representation.
///
/// Has a [Electrocardiogram.fromJson] constructor
/// to create instances from JSON payload coming from iOS native code.
///
/// Requires [ElectrocardiogramType] permissions provided.
///
class ElectrocardiogramVoltageMeasurement {
  const ElectrocardiogramVoltageMeasurement(
    this.timeSinceSampleStart,
    this.harmonized,
  );

  final num timeSinceSampleStart;
  final ElectrocardiogramVoltageMeasurementHarmonized harmonized;

  /// General map representation
  ///
  @override
  Map<String, dynamic> get map => {
        'timeSinceSampleStart': timeSinceSampleStart,
        'harmonized': harmonized.map,
      };

  /// General constructor from JSON payload
  ///
  ElectrocardiogramVoltageMeasurement.fromJson(Map<String, dynamic> json)
      : timeSinceSampleStart = json['timeSinceSampleStart'],
        harmonized = ElectrocardiogramVoltageMeasurementHarmonized.fromJson(
          json['harmonized'],
        );
}

/// Equivalent of [Electrocardiogram.Harmonized]
/// from [HealthKitReporter] https://cocoapods.org/pods/HealthKitReporter
///
/// Supports [map] representation.
///
/// Has a [ElectrocardiogramVoltageMeasurementHarmonized.fromJson] constructor
/// to create instances from JSON payload coming from iOS native code.
///
class ElectrocardiogramVoltageMeasurementHarmonized {
  const ElectrocardiogramVoltageMeasurementHarmonized(
    this.value,
    this.unit,
  );

  final num value;
  final String unit;

  /// General map representation
  ///
  Map<String, dynamic> get map => {
        'value': value,
        'unit': unit,
      };

  /// General constructor from JSON payload
  ///
  ElectrocardiogramVoltageMeasurementHarmonized.fromJson(
      Map<String, dynamic> json)
      : value = json['value'],
        unit = json['unit'];
}
