// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardP)
const dashboardPProvider = DashboardPProvider._();

final class DashboardPProvider
    extends $NotifierProvider<DashboardP, DashboardStateModel> {
  const DashboardPProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardPProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardPHash();

  @$internal
  @override
  DashboardP create() => DashboardP();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardStateModel>(value),
    );
  }
}

String _$dashboardPHash() => r'82d8beaa663cb2cedb5689c4c631d31633c02fe8';

abstract class _$DashboardP extends $Notifier<DashboardStateModel> {
  DashboardStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DashboardStateModel, DashboardStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DashboardStateModel, DashboardStateModel>,
              DashboardStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
