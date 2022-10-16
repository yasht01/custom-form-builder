// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainerData _$ContainerDataFromJson(Map<String, dynamic> json) =>
    ContainerData(
      containerType: $enumDecode(_$ContainerTypeEnumMap, json['containerType']),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      question: json['question'] as String,
    );

Map<String, dynamic> _$ContainerDataToJson(ContainerData instance) =>
    <String, dynamic>{
      'containerType': _$ContainerTypeEnumMap[instance.containerType]!,
      'options': instance.options,
      'question': instance.question,
    };

const _$ContainerTypeEnumMap = {
  ContainerType.checkbox: 'checkbox',
  ContainerType.dropdown: 'dropdown',
};
