import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/container_data.dart';
import '../utils/enums.dart';

part 'custom_form_state.dart';
part 'custom_form_cubit.freezed.dart';

class CustomFormCubit extends Cubit<CustomFormState> {
  CustomFormCubit() : super(const CustomFormState.initial()) {
    addNewContainer();
  }

  final List<ContainerData> _containersList = [];

  void addNewOption(int index, String option) {
    _containersList[index] = _containersList[index].copyWith(
      options: [..._containersList[index].options] + [option],
    );
    emit(CustomFormState.listChanged(containersList: _containersList));
  }

  void changeContainerType(int index, ContainerType containerType) {
    _containersList[index].copyWith(
      containerType: containerType,
    );
    emit(CustomFormState.listChanged(containersList: _containersList));
  }

  void addNewContainer() {
    _containersList.add(ContainerData(
      index: _containersList.length,
      containerType: ContainerType.checkbox,
      options: [],
      question: '',
    ));
    emit(CustomFormState.listChanged(containersList: _containersList));
  }

  void deleteContainer(int index) {
    _containersList.removeAt(index);
    emit(CustomFormState.listChanged(containersList: _containersList));
  }
}
