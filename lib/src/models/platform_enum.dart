/// The platform the code is built for.
enum PlatformEnum {
  /// Android
  android,

  /// Fuchsia
  fuchsia,

  /// iOS
  ios,

  /// Linux
  linux,

  /// macOS
  macos,

  /// Web
  web,

  /// Windows
  windows,
}

// ignore: public_member_api_docs
PlatformEnum? platformEnumFromJson(String? value) =>
    value == null ? null : PlatformEnum.values.byName(value);

// ignore: public_member_api_docs
String? platformEnumToJson(PlatformEnum? value) => value?.name;
