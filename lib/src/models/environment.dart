import 'package:json_annotation/json_annotation.dart';

import 'github.dart';
import 'google_application_credentials.dart';
import 'kubernetes.dart';
import 'platform_enum.dart';

part 'environment.g.dart';

/// Everything on the current environment where the code runs.
@JsonSerializable()
class Environment {
  // ignore: public_member_api_docs
  const Environment({
    required this.github,
    required this.googleApplicationCredentials,
    required this.ips,
    required this.kubernetes,
    required this.pid,
    required this.platform,
    required this.variables,
    required this.version,
  });

  /// Data available when running in a GitHub workflow.
  @JsonKey(includeIfNull: false)
  final GitHubEnvironment? github;

  /// Data on Google Cloud authentication when GOOGLE_APPLICATION_CREDENTIALS
  /// environment variable is set.
  @JsonKey(includeIfNull: false)
  final GoogleApplicationCredentials? googleApplicationCredentials;

  /// All IP addresses of the device.
  @JsonKey(includeIfNull: false)
  final List<String>? ips;

  /// Data available when running inside a Kubernetes pod.
  @JsonKey(includeIfNull: false)
  final KubernetesEnvironment? kubernetes;

  /// The operating system's process ID.
  @JsonKey(includeIfNull: false)
  final int? pid;

  /// The operating system of 'web'.
  @JsonKey(
    includeIfNull: false,
    toJson: platformEnumToJson,
    fromJson: platformEnumFromJson,
  )
  final PlatformEnum? platform;

  /// All environment variables.
  @JsonKey(includeIfNull: false)
  final Map<String, String>? variables;

  /// The Dart version.
  @JsonKey(includeIfNull: false)
  final String? version;

  // ignore: public_member_api_docs
  factory Environment.fromJson(Map<String, dynamic> map) =>
      _$EnvironmentFromJson(map);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);
}
