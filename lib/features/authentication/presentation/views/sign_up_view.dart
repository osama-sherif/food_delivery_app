import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: const Scaffold(
            backgroundColor: kPrimaryColor,
            body: SignUpViewBody(),
          ),
        );
      },
      listener: (BuildContext context, AuthState state) {
        if (state is AuthSignUpSuccess) {
          isLoading = true;
        } else {
          isLoading = false;
        }
      },
    );
  }
}
