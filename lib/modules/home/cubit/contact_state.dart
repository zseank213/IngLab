part of 'contact_cubit.dart';

abstract class ContactState {}

class ContactInitial extends ContactState {}

class OnLoadingContact extends ContactState {}

class OnErrorContact extends ContactState {
  final String? errorMessage;

  OnErrorContact({this.errorMessage});
}

class OnSuccessContact extends ContactState {
  final ContactModel? data;

  OnSuccessContact({this.data});
}

class OnSearchContact extends ContactState {}
