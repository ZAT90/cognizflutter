import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginFormBloc extends FormBloc<String, String> {
  final username = TextFieldBloc(validators: [
    FieldBlocValidators.required,
  ]);
  // ignore: close_sinks
  final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
  ]);

  LoginFormBloc() {
    addFieldBlocs(fieldBlocs: [
      username,
      password
    ]);
  }
  @override
  FutureOr<void> onSubmitting() {
    emitLoading();
    // TODO: implement onSubmitting
   emitSuccess(canSubmitAgain: true, successResponse: username.value);
  }
}
