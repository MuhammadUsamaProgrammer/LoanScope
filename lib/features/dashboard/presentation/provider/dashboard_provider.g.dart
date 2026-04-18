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

String _$dashboardPHash() => r'3d410c940c53b041f2c79d425dfe7e6fcb8fd5ce';

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
