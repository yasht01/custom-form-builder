part of 'custom_form_cubit.dart';

@freezed
class CustomFormState with _$CustomFormState {
  const factory CustomFormState.initial() = _Initial;

  const factory CustomFormState.listChanged({
    required List<ContainerData> containersList,
  }) = _ListChanged;
}
