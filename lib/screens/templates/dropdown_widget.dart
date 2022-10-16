import 'package:custom_form_builder/cubit/custom_form_cubit.dart';
import 'package:custom_form_builder/models/container_data.dart';
import 'package:custom_form_builder/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownTemplate extends StatefulWidget {
  final int index;
  final ContainerData containerData;

  const DropdownTemplate({
    super.key,
    required this.index,
    required this.containerData,
  });

  @override
  State<DropdownTemplate> createState() => _DropdownTemplateState();
}

class _DropdownTemplateState extends State<DropdownTemplate> {
  late TextEditingController _questionController;
  final List<TextEditingController> _controllers = [];

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
    _questionController = TextEditingController(text: widget.containerData.question);

    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey),
      ),
      constraints: const BoxConstraints(
        maxWidth: 700,
        minHeight: 300,
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
                      onChanged: (value) => context
                          .read<CustomFormCubit>()
                          .updateQuestion(widget.index, value),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<ContainerType>(
                      value: ContainerType.Dropdown,
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
                          context
                              .read<CustomFormCubit>()
                              .changeContainerType(widget.index, newType);
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
                    Text("${i + 1} ."),
                    Expanded(
                      child: TextFormField(
                        controller: _controllers[i],
                        onChanged: (newValue) => context
                            .read<CustomFormCubit>()
                            .updateOption(widget.index, i, newValue),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => context
                          .read<CustomFormCubit>()
                          .removeOption(
                              widget.index, widget.containerData.options[i]),
                    ),
                  ],
                ),
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () =>
                      context.read<CustomFormCubit>().addNewOption(widget.index, 'Option'),
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  onPressed: () => context
                      .read<CustomFormCubit>()
                      .deleteContainer(widget.index),
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
