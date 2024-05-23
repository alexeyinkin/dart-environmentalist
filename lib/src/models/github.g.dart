// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubEnvironment _$GitHubEnvironmentFromJson(Map<String, dynamic> json) =>
    GitHubEnvironment(
      actor: json['actor'] as String?,
      eventName: json['eventName'] as String?,
      job: json['job'] as String?,
      ref: json['ref'] as String?,
      repository: json['repository'] as String?,
      runAttempt: (json['runAttempt'] as num?)?.toInt(),
      runId: (json['runId'] as num?)?.toInt(),
      runNumber: (json['runNumber'] as num?)?.toInt(),
      sha: json['sha'] as String?,
      triggeringActor: json['triggeringActor'] as String?,
      workflow: json['workflow'] as String?,
      workflowRef: json['workflowRef'] as String?,
      workflowSha: json['workflowSha'] as String?,
    );

Map<String, dynamic> _$GitHubEnvironmentToJson(GitHubEnvironment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actor', instance.actor);
  writeNotNull('eventName', instance.eventName);
  writeNotNull('job', instance.job);
  writeNotNull('ref', instance.ref);
  writeNotNull('repository', instance.repository);
  writeNotNull('runAttempt', instance.runAttempt);
  writeNotNull('runId', instance.runId);
  writeNotNull('runNumber', instance.runNumber);
  writeNotNull('sha', instance.sha);
  writeNotNull('triggeringActor', instance.triggeringActor);
  writeNotNull('workflow', instance.workflow);
  writeNotNull('workflowRef', instance.workflowRef);
  writeNotNull('workflowSha', instance.workflowSha);
  return val;
}
