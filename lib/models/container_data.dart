import 'package:json_annotation/json_annotation.dart';

import '../utils/enums.dart';

part 'container_data.g.dart';

@JsonSerializable()
class ContainerData {
  final ContainerType containerType;
  final List<String> options;
  final String question;

  const ContainerData({
    required this.containerType,
    required this.options,
    required this.question,
  });

  factory ContainerData.fromJson(Map<String, dynamic> json) =>
      _$ContainerDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContainerDataToJson(this);
}
