import 'package:cognizflutter/blocs/forms/login_form_bloc.dart';
import 'package:cognizflutter/constants/nav_constants.dart';
import 'package:cognizflutter/constants/ui_constants.dart';
import 'package:cognizflutter/services/logger.dart';
import 'package:cognizflutter/utils/color_to_hex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => LoginFormBloc(),
      child: Builder(builder: (context) {
        final loginFormBloc = BlocProvider.of<LoginFormBloc>(context);
        return FormBlocListener<LoginFormBloc, String, String>(
          onSuccess: (context, state) {
            //logger.d('state of form on succes: ${state}');
            if (state.hasSuccessResponse) {
              Navigator.pushNamed(context, NavConstants.contacts);
            }
          },
          child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.white,
                    HexColor(UiConstants.loginback1),
                    Colors.white,
                  ])),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    logoContainer(context),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Welcome To Flutter',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Please enter your details to continue',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: UiConstants(context).width / 1.1,
                      child: TextFieldBlocBuilder(
                        textFieldBloc: loginFormBloc.username,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: UiConstants.textFieldWithoutIcons(
                            hintTextStr: 'User Name'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: UiConstants(context).width / 1.1,
                      child: TextFieldBlocBuilder(
                        textFieldBloc: loginFormBloc.password,
                        autocorrect: false,
                        suffixButton: SuffixButton.obscureText,
                        obscureTextTrueIcon: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        obscureTextFalseIcon: const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        decoration: UiConstants.textFieldWithoutIcons(
                            hintTextStr: 'Password'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: UiConstants(context).width / 1.1,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () => logger.d('forgot password'),
                          child: const Text('Forgot password?')),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: UiConstants(context).width / 1.1,
                        height: 50,
                        child: ElevatedButton(
                            //  style: ButtonStyle(Theme.of(context).buttonTheme),
                            onPressed: () => loginFormBloc.submit(),
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.labelLarge,
                            )))
                  ],
                ),
                // Container(
                //   width: UiConstants(context).width / 1.1,
                //   color: Colors.red,
                //   child: TextFieldBlocBuilder(
                //     textFieldBloc: loginFormBloc.username,
                //     keyboardType: TextInputType.emailAddress,
                //     autocorrect: false,
                //     decoration: UiConstants.textFieldWithoutIcons(
                //         hintTextStr: 'User Name'),
                //   ),
                // ),
                // Container(
                //   width: UiConstants(context).width / 1.1,
                //   color: Colors.red,
                //   child: TextFieldBlocBuilder(
                //     textFieldBloc: loginFormBloc.password,
                //     autocorrect: false,
                //     decoration: UiConstants.textFieldWithoutIcons(
                //         hintTextStr: 'Password'),
                //   ),
                // ),

                // BlocProvider(
                //   create: (context) => LoginFormBloc(),
                //   child: Builder(builder: (context) {
                //     final loginFormBloc =
                //         BlocProvider.of<LoginFormBloc>(context);
                //     return FormBlocListener<LoginFormBloc, String, String>(
                //       child: Column(
                //         children: [
                //           TextFieldBlocBuilder(
                //             textFieldBloc: loginFormBloc.email,
                //             keyboardType: TextInputType.emailAddress,
                //             autocorrect: false,
                //             decoration: UiConstants.textFieldWithoutIcons(),
                //           )
                //         ],
                //       ),
                //     );
                //   }),
                // )
              )),
        );
      }),
    ));
  }

  Container logoContainer(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: UiConstants(context).height / 4,
      width: UiConstants(context).width / 1.1,
      decoration: BoxDecoration(
          color: HexColor(UiConstants.loginback3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 3)),
      child: const FlutterLogo(
        size: 80,
      ),
    );
  }
}
