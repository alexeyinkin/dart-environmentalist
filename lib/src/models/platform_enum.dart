enum PlatformEnum {
  android,
  fuchsia,
  ios,
  linux,
  macos,
  web,
  windows,
}

PlatformEnum? platformEnumFromJson(String? value) =>
    value == null ? null : PlatformEnum.values.byName(value);

String? platformEnumToJson(PlatformEnum? value) => value?.name;
