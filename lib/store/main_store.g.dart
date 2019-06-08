// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$MainStore on _MainStore, Store {
  final _$emailAtom = Atom(name: '_MainStore.email');

  @override
  String get email {
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.checkIfStateModificationsAreAllowed(_$emailAtom);
    super.email = value;
    _$emailAtom.reportChanged();
  }

  final _$passwordAtom = Atom(name: '_MainStore.password');

  @override
  String get password {
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.checkIfStateModificationsAreAllowed(_$passwordAtom);
    super.password = value;
    _$passwordAtom.reportChanged();
  }

  final _$phoneNumberAtom = Atom(name: '_MainStore.phoneNumber');

  @override
  String get phoneNumber {
    _$phoneNumberAtom.reportObserved();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String value) {
    _$phoneNumberAtom.context
        .checkIfStateModificationsAreAllowed(_$phoneNumberAtom);
    super.phoneNumber = value;
    _$phoneNumberAtom.reportChanged();
  }

  final _$_MainStoreActionController = ActionController(name: '_MainStore');

  @override
  void setPhoneNumber(dynamic value) {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.setPhoneNumber(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(dynamic value) {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(dynamic value) {
    final _$actionInfo = _$_MainStoreActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }
}
