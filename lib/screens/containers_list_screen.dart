import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/container_data.dart';
import 'templates/checkbox_widget.dart';
import 'templates/dropdown_widget.dart';
import '../cubit/custom_form_cubit.dart';
import '../utils/enums.dart';

class ContainersListScreen extends StatelessWidget {
  const ContainersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomFormCubit, CustomFormState>(
      builder: (context, state) => SingleChildScrollView(
        child: generateList(context, state.containersList),
      ),
    );
  }

  Widget generateList(BuildContext context, List<ContainerData> dataList) {
    List<Widget> widgetList = [];

    for (var i = 0; i < dataList.length - 1; i++) {
      widgetList.add(
        dataList[i].containerType == ContainerType.Checkbox
            ? Center(
                child: CheckboxTemplate(containerData: dataList[i]),
              )
            : Center(
                child: DropdownTemplate(
                  containerData: dataList[i],
                  index: i,
                ),
              ),
      );
    }

    widgetList.add(Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (dataList.isNotEmpty) ...[
          dataList.last.containerType == ContainerType.Checkbox
              ? Center(
                  child: CheckboxTemplate(containerData: dataList.last),
                )
              : Center(
                  child: DropdownTemplate(
                    containerData: dataList.last,
                    index: dataList.length - 1,
                  ),
                ),
        ],
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () => context.read<CustomFormCubit>().addNewContainer(),
            icon: const Icon(Icons.add),
          ),
        ),
      ],
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: widgetList,
    );
  }
}
