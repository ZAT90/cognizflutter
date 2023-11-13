import 'package:cognizflutter/blocs/contact/contact_bloc.dart';
import 'package:cognizflutter/constants/ui_constants.dart';
import 'package:cognizflutter/model/contact/contact.dart';
import 'package:cognizflutter/utils/color_to_hex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:super_rich_text/super_rich_text.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBloc = BlocProvider.of<ContactBloc>(context);
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<ContactBloc, ContactState>(
          listenWhen: (previousState, state) => state is LoadError,
          listener: (context, state) => state.whenOrNull(
            loadError: (message) =>
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                message!,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            )),
          ),
          builder: (context, state) {
            return SizedBox(
              //  alignment: Alignment.center,
              height: UiConstants(context).height,
              width: UiConstants(context).width,
              // color: Colors.red,
              child: state.whenOrNull(
                  loadInProgress: () => Center(
                        child: CircularProgressIndicator(
                          color: HexColor(UiConstants.loginback1),
                        ),
                      ),
                  loadedContactList: (initList, searchedList) => Container(
                        color: HexColor(UiConstants.listBackground),
                        child: Column(
                          children: <Widget>[
                            Container(
                                //˝   margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(30, 20, 30, 20),
                                color: Colors.white,
                                child: searchWidget(searchController,
                                    contactBloc, initList, searchedList)),
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contacts',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  searchedList!.isEmpty
                                      ? const Center(
                                          child: Text('No contacts found'),
                                        )
                                      : ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: searchedList.length,
                                          itemBuilder: (context, index) {
                                            return Card(
                                              color: HexColor(
                                                  UiConstants.listItemColor),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  15))),
                                              child: ListTile(
                                                title: SuperRichText(
                                                  text:
                                                      searchedList[index].name!,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .merge(const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  othersMarkers: [
                                                    MarkerText(
                                                        marker: UiConstants
                                                            .textHighlightText,
                                                        style: const TextStyle(
                                                            color: Colors.blue))
                                                  ],
                                                ),
                                                // title: Text(
                                                //   searchedList[index].name!,
                                                //   style: Theme.of(context)
                                                //       .textTheme
                                                //       .bodyMedium!
                                                //       .merge(const TextStyle(
                                                //           color: Colors.black,
                                                //           fontWeight:
                                                //               FontWeight.bold)),
                                                // ),
                                                subtitle: SuperRichText(
                                                  text: searchedList[index]
                                                      .email!,
                                                  othersMarkers: [
                                                    MarkerText(
                                                        marker: UiConstants
                                                            .textHighlightText,
                                                        style: const TextStyle(
                                                            color: Colors.blue))
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder:
                                              (BuildContext context,
                                                  int index) {
                                            return const SizedBox(
                                              height: 15,
                                            );
                                          },
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
            );
          },
        ),
      ),
    );
  }

  Row searchWidget(TextEditingController searchController,
      ContactBloc contactBloc, List<Data>? initList, List<Data>? searchedList) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          // Use a Material design search bar
          child: Container(
            height: 40,
            // color: HexColor(UiConstants.loginback1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: HexColor(UiConstants.loginback1),
              //border: Border(bottom: BorderSide.none)
            ),
            child: TextField(
              controller: searchController,
              onChanged: (value) => {
                contactBloc.add(ContactEvent.loadingContacts(
                    searchString: searchController.text,
                    initList: initList,
                    searchedList: searchedList))
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 5),
                prefixIcon: const Icon(
                  color: Colors.black,
                  Icons.search_outlined,
                  size: 30,
                ),
                hintText: 'Search...',
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                  color: Colors.black,
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                    contactBloc.add(ContactEvent.loadingContacts(
                        searchString: '',
                        initList: initList,
                        searchedList: searchedList));
                  },
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
