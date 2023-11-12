part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.loadingContacts({
    required String? searchString,
    required List<Data>? initList,
    required List<Data>? searchedList,
  }) = LoadingContacts;
}
