import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/container_data.dart';
import '../utils/enums.dart';

part 'custom_form_state.dart';

class CustomFormCubit extends Cubit<CustomFormState> {
  CustomFormCubit() : super(const CustomFormState()) {
    addNewContainer();
  }

  final List<ContainerData> _containersList = [];

  void addNewOption(int index, String option) {
    _containersList[index] = _containersList[index].copyWith(
      options: [..._containersList[index].options] + [option],
    );
    emit(CustomFormState(containersList: _containersList));
  }

  void removeOption(int index, String option) {
    _containersList[index].options.remove(option);
    emit(CustomFormState(containersList: _containersList));
  }

  void changeContainerType(int index, ContainerType containerType) {
    _containersList[index] = _containersList[index].copyWith(
      containerType: containerType,
    );
    emit(CustomFormState(containersList: _containersList));
  }

  void addNewContainer() {
    _containersList.add(ContainerData(
      index: _containersList.length,
      containerType: ContainerType.Dropdown,
      options: const ['Option 1', 'Option 2'],
      question: 'Question 1',
    ));
    emit(CustomFormState(containersList: _containersList));
  }

  void deleteContainer(int index) {
    _containersList.removeAt(index);
    emit(CustomFormState(containersList: _containersList));
  }
}
