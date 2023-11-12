import 'package:cognizflutter/constants/ui_constants.dart';
import 'package:cognizflutter/model/contact/contact.dart';
import 'package:cognizflutter/model/network/network_response.dart';
import 'package:cognizflutter/services/apiCalls/contact_api.dart';
import 'package:cognizflutter/services/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.dart';
part 'contact_event.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactApi contactApi = ContactApi();
  ContactBloc() : super(const ContactState.initial()) {
    on<ContactEvent>((event, emit) => event.when(
        loadingContacts: (searchString, initList, searchedList) async =>
            await loadContacts(searchString, initList, searchedList, emit)));
  }

  Future<void> loadContacts(String? searchString, List<Data>? initList,
      List<Data>? searchedList, Emitter<ContactState> emit) async {
    // logger.d('loading');
    if (initList!.isEmpty) {
      emit(const ContactState.loadInProgress());
      NetworkResponse networkResponse = await contactApi.getContacts();
      //  logger.f('networkResponse: $networkResponse');
      networkResponse.maybeWhen(
          ok: (data) {
            logger.d(data);
            ContactModel contactModel = ContactModel.fromJson(data);
            List<Data>? contacts = [...?contactModel.data];
            contacts.sort(
              (a, b) => a.name!.compareTo(b.name!),
            );
            emit(ContactState.loadedContactList(
                initList: contacts, searchedList: contacts));
          },
          orElse: () {});
    } else {
      // logger.d('init not empty: $initList');
      searchedList = initList
          .where((element) =>
              element.email!
                  .toLowerCase()
                  .contains(searchString!.toLowerCase()) ||
              element.name!.toLowerCase().contains(searchString.toLowerCase()))
          .toList();
      if (searchString!.isNotEmpty) {
        List<Data>? highlightedList = [];

        for (Data contact in searchedList) {
          String? name = contact.name;
          String? email = contact.email;

          String newName = replaceAfterCheck(name, searchString);
          String newEmail = replaceAfterCheck(email, searchString);

          contact = contact.copyWith(
              name: newName.isNotEmpty ? newName : name,
              email: newEmail.isNotEmpty ? newEmail : email);

          highlightedList.add(contact);
        }
        // logger.d('searchedList after change: $highlightedList');
        emit(ContactState.loadedContactList(
            initList: initList, searchedList: highlightedList));
      } else {
        //  logger.d('searchString empty: $searchString');
        emit(ContactState.loadedContactList(
            initList: initList, searchedList: searchedList));
      }
    }
  }

  String replaceAfterCheck(String? mainVal, String? searchVal) {
    bool checkCompatibility =
        mainVal!.toLowerCase().contains(searchVal!.toLowerCase());
    //logger.d('checkCmainVal: $mainVal');
    if (checkCompatibility) {
      List<String> splittedMain = mainVal.split('');
      List<String> splittedSearch = searchVal.toLowerCase().split('');
      // logger.d('checkCsplittedMain: $splittedMain');
      try {
        if (searchVal.length == 1) {
          for (int i = 0; i < splittedMain.length; i++) {
            if (splittedMain[i].toLowerCase() == splittedSearch.first) {
              splittedMain[i] =
                  '${UiConstants.textHighlightText}${splittedMain[i]}${UiConstants.textHighlightText}';
            }
          }
          return splittedMain.join();
        } else {
          for (int i = 0; i < splittedMain.length; i++) {
            if (splittedMain[i].toLowerCase() == splittedSearch.first) {
              //  logger.d('checkCsplittedMainFrom Search: ${splittedMain[i]}');
              List<String> newsublist = [
                ...splittedMain.sublist(i, i + splittedSearch.length)
              ];

              if (newsublist.join().toLowerCase() ==
                  splittedSearch.join().toLowerCase()) {
                for (int k = i; k < i + splittedSearch.length; k++) {
                  splittedMain[k] =
                      '${UiConstants.textHighlightText}${splittedMain[k]}${UiConstants.textHighlightText}';
                }
              }
            }
          }

          return splittedMain.join();
        }
      } catch (e) {
        logger.e('exception: $e');
      }

      // String newMainVal = splitMainVal.join(
      //     '${UiConstants.textHighlightText}$searchVal${UiConstants.textHighlightText}');
      //  logger.d('checkCjoinedMainVal: $splitMainVal');
    }

    // logger.d('checkCsearchVal: $searchVal');
    // logger.d('checkCompatibility: $checkCompatibility');
    return '';
  }
}
