import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inglab/lib.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  final ContactService _contactService = ContactService();

  late ContactModel data;

  TextEditingController searchTextEditingController = TextEditingController();

  bool onSearch = false;
  List<DataContact> listContact = [];

  void getData() async {
    emit(OnLoadingContact());

    var res = await _contactService.getContact();

    if (res.statusCode == 200) {
      data = ContactModel.fromJson(res.data);
      debugPrint('Get Auth Status : Success');
      emit(OnSuccessContact(data: data));
    }

    listContact = List.generate(
      data.data?.length ?? 0,
      (index) => DataContact.fromJson(
        data.data?[index].toJson() ?? {},
      ),
    );
    emit(ContactInitial());
  }

  String splitUserName(String name) {
    var splitedName = name.trim().split(' ').map((l) => l[0]).take(2).join();
    return splitedName;
  }

  void onSearching() {
    List<DataContact> results = [];

    if (searchTextEditingController.text.isEmpty) {
      onSearch = false;
      results = List.generate(
        data.data?.length ?? 0,
        (index) => DataContact.fromJson(
          data.data?[index].toJson() ?? {},
        ),
      );
      emit(ContactInitial());
    } else {
      onSearch = true;
      results = data.data
              ?.where((user) => user.name!.toLowerCase().contains(
                    searchTextEditingController.text.toLowerCase(),
                  ))
              .toList() ??
          [];
      emit(OnSearchContact());
    }

    listContact = results;
    emit(ContactInitial());
  }

  void onClearSearch() {
    onSearch = false;
    searchTextEditingController.clear();
    listContact = List.generate(
      data.data?.length ?? 0,
      (index) => DataContact.fromJson(
        data.data?[index].toJson() ?? {},
      ),
    );
    emit(ContactInitial());
  }
}
