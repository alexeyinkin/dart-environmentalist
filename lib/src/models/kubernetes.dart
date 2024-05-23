import 'package:json_annotation/json_annotation.dart';

part 'kubernetes.g.dart';

@JsonSerializable()
class KubernetesEnvironment {
  const KubernetesEnvironment({
    required this.hostname,
  });

  final String hostname;

  factory KubernetesEnvironment.fromJson(Map<String, dynamic> map) =>
      _$KubernetesEnvironmentFromJson(map);

  Map<String, dynamic> toJson() => _$KubernetesEnvironmentToJson(this);
}
