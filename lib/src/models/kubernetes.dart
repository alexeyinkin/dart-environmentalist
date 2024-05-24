import 'package:json_annotation/json_annotation.dart';

part 'kubernetes.g.dart';

/// Data available when running inside a Kubernetes pod.
@JsonSerializable()
class KubernetesEnvironment {
  // ignore: public_member_api_docs
  const KubernetesEnvironment({
    required this.hostname,
  });

  /// The name of the pod, the content of the `HOSTNAME` environment variable.
  final String hostname;

  // ignore: public_member_api_docs
  factory KubernetesEnvironment.fromJson(Map<String, dynamic> map) =>
      _$KubernetesEnvironmentFromJson(map);

  /// Serializes the object.
  ///
  /// ```json
  /// {
  ///   "hostname": "my-deployment-name-d9c5d4dc-qf524"
  /// }
  /// ```
  Map<String, dynamic> toJson() => _$KubernetesEnvironmentToJson(this);
}
