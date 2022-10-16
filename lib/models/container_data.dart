import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/enums.dart';

part 'container_data.g.dart';

@JsonSerializable()
class ContainerData extends Equatable {
  @JsonKey(toJson: toNull, includeIfNull: false)
  final int index;
  final ContainerType containerType;
  final List<String> options;
  final String question;

  static toNull(_) => null;

  const ContainerData({
    required this.index,
    required this.containerType,
    required this.options,
    required this.question,
  });

  ContainerData copyWith({
    int? index,
    ContainerType? containerType,
    List<String>? options,
    String? question,
  }) {
    return ContainerData(
      index: index ?? this.index,
      containerType: containerType ?? this.containerType,
      options: options ?? this.options,
      question: question ?? this.question,
    );
  }

  factory ContainerData.fromJson(Map<String, dynamic> json) =>
      _$ContainerDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContainerDataToJson(this);

  @override
  List<Object> get props => [index, containerType, options, question];
}
