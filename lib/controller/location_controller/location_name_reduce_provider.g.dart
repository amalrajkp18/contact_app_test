// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_name_reduce_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationNameReduceHash() =>
    r'62a2a9612f2f675b70ddebb79a3756516f120454';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [locationNameReduce].
@ProviderFor(locationNameReduce)
const locationNameReduceProvider = LocationNameReduceFamily();

/// See also [locationNameReduce].
class LocationNameReduceFamily extends Family<String> {
  /// See also [locationNameReduce].
  const LocationNameReduceFamily();

  /// See also [locationNameReduce].
  LocationNameReduceProvider call(
    String? locationName,
  ) {
    return LocationNameReduceProvider(
      locationName,
    );
  }

  @override
  LocationNameReduceProvider getProviderOverride(
    covariant LocationNameReduceProvider provider,
  ) {
    return call(
      provider.locationName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'locationNameReduceProvider';
}

/// See also [locationNameReduce].
class LocationNameReduceProvider extends AutoDisposeProvider<String> {
  /// See also [locationNameReduce].
  LocationNameReduceProvider(
    String? locationName,
  ) : this._internal(
          (ref) => locationNameReduce(
            ref as LocationNameReduceRef,
            locationName,
          ),
          from: locationNameReduceProvider,
          name: r'locationNameReduceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationNameReduceHash,
          dependencies: LocationNameReduceFamily._dependencies,
          allTransitiveDependencies:
              LocationNameReduceFamily._allTransitiveDependencies,
          locationName: locationName,
        );

  LocationNameReduceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locationName,
  }) : super.internal();

  final String? locationName;

  @override
  Override overrideWith(
    String Function(LocationNameReduceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocationNameReduceProvider._internal(
        (ref) => create(ref as LocationNameReduceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locationName: locationName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _LocationNameReduceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationNameReduceProvider &&
        other.locationName == locationName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locationName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocationNameReduceRef on AutoDisposeProviderRef<String> {
  /// The parameter `locationName` of this provider.
  String? get locationName;
}

class _LocationNameReduceProviderElement
    extends AutoDisposeProviderElement<String> with LocationNameReduceRef {
  _LocationNameReduceProviderElement(super.provider);

  @override
  String? get locationName =>
      (origin as LocationNameReduceProvider).locationName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
