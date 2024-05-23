import 'package:json_annotation/json_annotation.dart';

import 'github.dart';
import 'google_application_credentials.dart';
import 'kubernetes.dart';
import 'platform_enum.dart';

part 'environment.g.dart';

@JsonSerializable()
class Environment {
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

  @JsonKey(includeIfNull: false)
  final GitHubEnvironment? github;

  @JsonKey(includeIfNull: false)
  final GoogleApplicationCredentialsEnvironment? googleApplicationCredentials;

  @JsonKey(includeIfNull: false)
  final List<String>? ips;

  @JsonKey(includeIfNull: false)
  final KubernetesEnvironment? kubernetes;

  @JsonKey(includeIfNull: false)
  final int? pid;

  @JsonKey(
    includeIfNull: false,
    toJson: platformEnumToJson,
    fromJson: platformEnumFromJson,
  )
  final PlatformEnum? platform;

  @JsonKey(includeIfNull: false)
  final Map<String, String>? variables;

  @JsonKey(includeIfNull: false)
  final String? version;

  factory Environment.fromJson(Map<String, dynamic> map) =>
      _$EnvironmentFromJson(map);

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);
}
