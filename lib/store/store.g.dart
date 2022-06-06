// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  Computed<String>? _$countrsComputed;

  @override
  String get countrs => (_$countrsComputed ??=
          Computed<String>(() => super.countrs, name: '_MainStore.countrs'))
      .value;

  final _$_countryAtom = Atom(name: '_MainStore._country');

  @override
  String get _country {
    _$_countryAtom.reportRead();
    return super._country;
  }

  @override
  set _country(String value) {
    _$_countryAtom.reportWrite(value, super._country, () {
      super._country = value;
    });
  }

  final _$_MainStoreActionController = ActionController(name: '_MainStore');

  @override
  void addCountry(String country) {
    final _$actionInfo =
        _$_MainStoreActionController.startAction(name: '_MainStore.addCountry');
    try {
      return super.addCountry(country);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
countrs: ${countrs}
    ''';
  }
}
