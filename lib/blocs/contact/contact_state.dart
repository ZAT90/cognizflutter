part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _Initial;
  const factory ContactState.loadInProgress() = _LoadInProgress;
  const factory ContactState.loadedContactList({required List<Data>? initList,
    required List<Data>? searchedList}) =
      LoadedContactList;
   const factory ContactState.loadError(String? message) = LoadError; 
}
