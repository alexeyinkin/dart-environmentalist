// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Environment _$EnvironmentFromJson(Map<String, dynamic> json) => Environment(
      github: json['github'] == null
          ? null
          : GitHubEnvironment.fromJson(json['github'] as Map<String, dynamic>),
      googleApplicationCredentials: json['googleApplicationCredentials'] == null
          ? null
          : GoogleApplicationCredentialsEnvironment.fromJson(
              json['googleApplicationCredentials'] as Map<String, dynamic>),
      ips: (json['ips'] as List<dynamic>?)?.map((e) => e as String).toList(),
      kubernetes: json['kubernetes'] == null
          ? null
          : KubernetesEnvironment.fromJson(
              json['kubernetes'] as Map<String, dynamic>),
      pid: (json['pid'] as num?)?.toInt(),
      platform: platformEnumFromJson(json['platform'] as String?),
      variables: (json['variables'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$EnvironmentToJson(Environment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('github', instance.github);
  writeNotNull(
      'googleApplicationCredentials', instance.googleApplicationCredentials);
  writeNotNull('ips', instance.ips);
  writeNotNull('kubernetes', instance.kubernetes);
  writeNotNull('pid', instance.pid);
  writeNotNull('platform', platformEnumToJson(instance.platform));
  writeNotNull('variables', instance.variables);
  writeNotNull('version', instance.version);
  return val;
}
