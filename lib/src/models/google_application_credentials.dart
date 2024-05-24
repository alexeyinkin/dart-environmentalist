import 'package:json_annotation/json_annotation.dart';

part 'google_application_credentials.g.dart';

/// The fields of the JSON in the credentials file
/// at GOOGLE_APPLICATION_CREDENTIALS, except for the private key, if any.
@JsonSerializable()
class GoogleApplicationCredentials {
  // ignore: public_member_api_docs
  const GoogleApplicationCredentials({
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

  /// Path of the credentials file,
  /// the contents of GOOGLE_APPLICATION_CREDENTIALS environment variable.
  final String path;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? audience;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? clientEmail;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? clientId;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? privateKeyId;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? projectId;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? serviceAccountImpersonationUrl;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? subjectTokenType;

  @JsonKey(includeIfNull: false)
  // ignore: public_member_api_docs
  final String? type;

  // ignore: public_member_api_docs
  factory GoogleApplicationCredentials.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$GoogleApplicationCredentialsFromJson(map);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$GoogleApplicationCredentialsToJson(this);
}
