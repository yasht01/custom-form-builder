import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'containers_list_screen.dart';
import '../cubit/custom_form_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Custom Form Builder',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => print(context.read<CustomFormCubit>().getContainersModel()),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
      body: const ContainersListScreen(),
    );
  }
}
