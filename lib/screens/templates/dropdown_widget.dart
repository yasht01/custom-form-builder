import 'package:custom_form_builder/cubit/custom_form_cubit.dart';
import 'package:custom_form_builder/models/container_data.dart';
import 'package:custom_form_builder/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownTemplate extends StatefulWidget {
  final ContainerData containerData;
  const DropdownTemplate({
    super.key,
    required this.containerData,
  });

  @override
  State<DropdownTemplate> createState() => _DropdownTemplateState();
}

class _DropdownTemplateState extends State<DropdownTemplate> {
  late TextEditingController _questionController;

  @override
  void initState() {
    super.initState();
    _questionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey),
      ),
      constraints: const BoxConstraints(
        maxWidth: 700,
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
                  flex: 3,
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
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<ContainerType>(
                      value: ContainerType.Dropdown,
                      items: ContainerType.values
                          .map<DropdownMenuItem<ContainerType>>(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e.toShortString()),
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
                    Text("${i + 1} ."),
                    Text(widget.containerData.options[i]),
                    const Spacer(),
                    const MouseRegion(
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
