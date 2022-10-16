import 'package:custom_form_builder/cubit/custom_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Form Builder',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CustomFormCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
