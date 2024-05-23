import 'package:json_annotation/json_annotation.dart';

part 'google_application_credentials.g.dart';

@JsonSerializable()
class GoogleApplicationCredentialsEnvironment {
  const GoogleApplicationCredentialsEnvironment({
    required this.path,
    //
    required this.audience,
    required this.clientEmail,
    required this.clientId,
    required this.privateKeyId,
    required this.projectId,
    required this.serviceAccountImpersonationUrl,
    required this.subjectTokenType,
    required this.type,
  });

  final String path;

  @JsonKey(includeIfNull: false)
  final String? audience;

  @JsonKey(includeIfNull: false)
  final String? clientEmail;

  @JsonKey(includeIfNull: false)
  final String? clientId;

  @JsonKey(includeIfNull: false)
  final String? privateKeyId;

  @JsonKey(includeIfNull: false)
  final String? projectId;

  @JsonKey(includeIfNull: false)
  final String? serviceAccountImpersonationUrl;

  @JsonKey(includeIfNull: false)
  final String? subjectTokenType;

  @JsonKey(includeIfNull: false)
  final String? type;

  factory GoogleApplicationCredentialsEnvironment.fromJson(
          Map<String, dynamic> map) =>
      _$GoogleApplicationCredentialsEnvironmentFromJson(map);

  Map<String, dynamic> toJson() =>
      _$GoogleApplicationCredentialsEnvironmentToJson(this);
}
