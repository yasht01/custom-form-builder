import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/container_data.dart';
import '../utils/enums.dart';

part 'form_state.dart';
part 'form_cubit.freezed.dart';

class FormCubit extends Cubit<FormState> {
  FormCubit() : super(const FormState.initial()) {
    addNewContainer();
  }

  List<ContainerData> _containersList = [];

  void addNewOption(ContainerData container, String option) {}

  void changeContainerType(ContainerData container, ContainerType containerType) {}
  
  void addNewContainer() {}
}
