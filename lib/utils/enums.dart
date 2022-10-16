enum ContainerType {checkbox, dropdown}

extension Extensions on Enum {
  String toShortString() {
    return toString().split('.').last;
  }
}