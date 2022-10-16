import 'package:custom_form_builder/cubit/custom_form_cubit.dart';
import 'package:custom_form_builder/models/container_data.dart';
import 'package:custom_form_builder/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxTemplate extends StatefulWidget {
  final ContainerData containerData;
  const CheckboxTemplate({
    super.key,
    required this.containerData,
  });

  @override
  State<CheckboxTemplate> createState() => _CheckboxTemplateState();
}

class _CheckboxTemplateState extends State<CheckboxTemplate> {
  late TextEditingController _questionController;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 300,
        minWidth: 300,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              TextFormField(
                controller: _questionController,
                initialValue: 'Question',
              ),
              DropdownButtonFormField<ContainerType>(
                items: ContainerType.values
                    .map<DropdownMenuItem<ContainerType>>(
                      (e) => DropdownMenuItem(
                        child: Text(e.toShortString()),
                      ),
                    )
                    .toList(),
                onChanged: (newType) {
                  if (newType != null) {
                    context
                        .read<CustomFormCubit>()
                        .changeContainerType(0, newType);
                  }
                },
              )
            ],
          ),
          ...widget.containerData.options.map<Widget>(
            (option) => Row(
              children: [
                const Checkbox(value: false, onChanged: null),
                Text(option),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
