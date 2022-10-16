import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'templates/checkbox_widget.dart';
import 'templates/dropdown_widget.dart';
import '../cubit/custom_form_cubit.dart';
import '../utils/enums.dart';

class ContainersListScreen extends StatelessWidget {
  const ContainersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomFormCubit, CustomFormState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const CircularProgressIndicator(),
          listChanged: (state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...state.containersList.map<Widget>(
                  (containerData) => containerData.containerType ==
                          ContainerType.Checkbox
                      ? Center(
                          child: CheckboxTemplate(containerData: containerData),
                        )
                      : Center(
                          child: DropdownTemplate(containerData: containerData),
                        ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
