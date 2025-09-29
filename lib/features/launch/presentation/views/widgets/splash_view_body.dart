import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/icons.dart';
import 'package:food_delivery_app/features/authentication/presentation/manager/cubit/auth_cubit.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  // void initState() {
  //   super.initState();
  //   navigationToLaunchView(context);
  // }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.pushReplacementNamed(context, kOnBoardingViewRoute);
          });
        } else if (state is Authenticated) {
          navigationToHomeView(context);
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SvgPicture.asset(Assets.iconsGroup270Icon)],
        );
      },
    );
  }
}

void navigationToHomeView(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushReplacementNamed(context, kHomeViewRoute);
  });
}
