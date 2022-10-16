// ignore_for_file: constant_identifier_names

enum ContainerType {Checkbox, Dropdown}

extension Extensions on Enum {
  String toShortString() {
    return toString().split('.').last;
  }
}