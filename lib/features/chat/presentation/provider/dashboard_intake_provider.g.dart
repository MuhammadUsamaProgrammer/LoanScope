// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_intake_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardIntakeP)
const dashboardIntakePProvider = DashboardIntakePProvider._();

final class DashboardIntakePProvider
    extends $NotifierProvider<DashboardIntakeP, DashboardIntakeStateModel> {
  const DashboardIntakePProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardIntakePProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardIntakePHash();

  @$internal
  @override
  DashboardIntakeP create() => DashboardIntakeP();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardIntakeStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardIntakeStateModel>(value),
    );
  }
}

String _$dashboardIntakePHash() => r'c5f678696cc0d07d7f7c3a95d7e8a1a877ab8b8b';

abstract class _$DashboardIntakeP extends $Notifier<DashboardIntakeStateModel> {
  DashboardIntakeStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<DashboardIntakeStateModel, DashboardIntakeStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DashboardIntakeStateModel, DashboardIntakeStateModel>,
              DashboardIntakeStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
