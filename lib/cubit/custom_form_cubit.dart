import 'dart:convert';

import 'package:bloc/bloc.dart';

import '../models/container_data.dart';
import '../utils/enums.dart';

part 'custom_form_state.dart';

class CustomFormCubit extends Cubit<CustomFormState> {
  CustomFormCubit() : super(const CustomFormState()) {
    addNewContainer();
  }

  List<ContainerData> _containersList = [];

  String getContainersModel() {
    return jsonEncode(_containersList);
  }

  void addNewOption(int index, String option) {
    var tempList = [..._containersList[index].options];
    tempList.add(option);
    _containersList[index] = _containersList[index].copyWith(options: tempList);

    emit(CustomFormState(containersList: _containersList));
  }

  void updateQuestion(int index, String question) {
    _containersList[index] = _containersList[index].copyWith(
      question: question,
    );
  }

  void updateOption(int index, int optionIndex, String newValue) {
    var tempList = [..._containersList[index].options];
    tempList[optionIndex] = newValue;
    _containersList[index] = _containersList[index].copyWith(options: tempList);
  }

  void removeOption(int index, String option) {
    var tempList = [..._containersList[index].options];
    tempList.remove(option);
    _containersList[index] = _containersList[index].copyWith(options: tempList);

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
    var tempList = [..._containersList];
    tempList.removeAt(index);
    _containersList = tempList;

    emit(CustomFormState(containersList: _containersList));
  }
}
