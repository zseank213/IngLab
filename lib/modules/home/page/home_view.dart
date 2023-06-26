import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inglab/lib.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ContactCubit _contactCubit = ContactCubit();

  @override
  void initState() {
    _contactCubit.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _contactCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              TextField(
                decoration: textInputDecoration(
                  hintText: 'Search...',
                  isFilled: true,
                  fillColor: searchBackgroundColor,
                  colorBorder: Colors.transparent,
                  enableColorBorder: Colors.transparent,
                  suffixIcon: _contactCubit.onSearch
                      ? InkWell(
                          onTap: () {
                            _contactCubit.onClearSearch();
                            setState(() {});
                          },
                          child: const Icon(Icons.clear),
                        )
                      : null,
                  prefixIcon: const Icon(Icons.search),
                ),
                controller: _contactCubit.searchTextEditingController,
                onChanged: (value) {
                  _contactCubit.onSearching();
                  setState(() {});
                },
              ),
              AppDimens.verticalSpace12,
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: BlocBuilder<ContactCubit, ContactState>(
            builder: (cContact, sContact) {
              if (sContact is OnLoadingContact) {
                return SkeletonContactCardWidget();
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppDimens.verticalSpace16,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Contacts',
                      style: textLarge(color: neutral90, isBold: true),
                    ),
                  ),
                  _contactCubit.listContact.isNotEmpty
                      ? ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ContactCardWidget(
                              searchText: _contactCubit.searchTextEditingController.text,
                              image: _contactCubit.splitUserName('${_contactCubit.listContact[index].name}'),
                              name: '${_contactCubit.listContact[index].name}',
                              email: '${_contactCubit.listContact[index].email}',
                            );
                          },
                          separatorBuilder: (context, index) => AppDimens.verticalSpace6,
                          itemCount: _contactCubit.listContact.length,
                        )
                      : const Expanded(
                          child: Center(
                            child: Text('Data Not Found !'),
                          ),
                        ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
