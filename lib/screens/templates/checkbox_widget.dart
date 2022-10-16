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
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController();
  }

  @override
  void dispose() {
    _questionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.containerData.options
        .map((option) => _controllers.add(TextEditingController(text: option)))
        .toList();

    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey),
      ),
      constraints: const BoxConstraints(
        maxWidth: 750,
        maxHeight: 500,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _questionController,
                      decoration: InputDecoration(
                        hintText: 'Question',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<ContainerType>(
                      value: ContainerType.Checkbox,
                      items: ContainerType.values
                          .map<DropdownMenuItem<ContainerType>>(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    e == ContainerType.Checkbox
                                        ? Icons.check_box
                                        : Icons.looks_one,
                                  ),
                                  Text(e.toShortString()),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (newType) {
                        if (newType != null) {
                          context.read<CustomFormCubit>().changeContainerType(
                              0, newType); //TODO: Think how to manage index
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            for (var i = 0; i < widget.containerData.options.length; i++) ...[
              Container(
                width: 400,
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Checkbox(value: false, onChanged: null),
                    Expanded(
                      child: TextFormField(
                        controller: _controllers[i],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
