// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_application_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleApplicationCredentialsEnvironment
    _$GoogleApplicationCredentialsEnvironmentFromJson(
            Map<String, dynamic> json) =>
        GoogleApplicationCredentialsEnvironment(
          path: json['path'] as String,
          audience: json['audience'] as String?,
          clientEmail: json['clientEmail'] as String?,
          clientId: json['clientId'] as String?,
          privateKeyId: json['privateKeyId'] as String?,
          projectId: json['projectId'] as String?,
          serviceAccountImpersonationUrl:
              json['serviceAccountImpersonationUrl'] as String?,
          subjectTokenType: json['subjectTokenType'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$GoogleApplicationCredentialsEnvironmentToJson(
    GoogleApplicationCredentialsEnvironment instance) {
  final val = <String, dynamic>{
    'path': instance.path,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audience', instance.audience);
  writeNotNull('clientEmail', instance.clientEmail);
  writeNotNull('clientId', instance.clientId);
  writeNotNull('privateKeyId', instance.privateKeyId);
  writeNotNull('projectId', instance.projectId);
  writeNotNull('serviceAccountImpersonationUrl',
      instance.serviceAccountImpersonationUrl);
  writeNotNull('subjectTokenType', instance.subjectTokenType);
  writeNotNull('type', instance.type);
  return val;
}
