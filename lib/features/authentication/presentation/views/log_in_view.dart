import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: LogInViewBody(),
    );
  }
}
