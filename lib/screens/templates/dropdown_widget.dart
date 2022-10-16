import 'package:custom_form_builder/models/container_data.dart';
import 'package:flutter/material.dart';

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
      constraints: const BoxConstraints(
        minHeight: 300,
        minWidth: 300,
      ),
      child: Column(
        children: [
          TextFormField(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
