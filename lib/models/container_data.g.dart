// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainerData _$ContainerDataFromJson(Map<String, dynamic> json) =>
    ContainerData(
      index: json['index'] as int,
      containerType: $enumDecode(_$ContainerTypeEnumMap, json['containerType']),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      question: json['question'] as String,
    );

Map<String, dynamic> _$ContainerDataToJson(ContainerData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('index', ContainerData.toNull(instance.index));
  val['containerType'] = _$ContainerTypeEnumMap[instance.containerType]!;
  val['options'] = instance.options;
  val['question'] = instance.question;
  return val;
}

const _$ContainerTypeEnumMap = {
  ContainerType.Checkbox: 'Checkbox',
  ContainerType.Dropdown: 'Dropdown',
};
