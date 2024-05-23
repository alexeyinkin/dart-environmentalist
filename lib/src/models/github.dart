import 'package:json_annotation/json_annotation.dart';

part 'github.g.dart';

/// Information about the GitHub workflow run.
///
/// Grabs all environment information except:
///   GITHUB_ACTION_PATH
///   GITHUB_ACTION_REF
///   GITHUB_ACTION_REPOSITORY
///   GITHUB_ACTOR_ID
///   GITHUB_API_URL
///   GITHUB_BASE_REF
///   GITHUB_ENV
///   GITHUB_EVENT_PATH
///   GITHUB_GRAPHQL_URL
///   GITHUB_HEAD_REF
///   GITHUB_OUTPUT
///   GITHUB_REF_NAME
///   GITHUB_REF_PROTECTED
///   GITHUB_REF_TYPE
///   GITHUB_REPOSITORY_ID
///   GITHUB_REPOSITORY_OWNER
///   GITHUB_REPOSITORY_OWNER_ID
///   GITHUB_RETENTION_DAYS
///   GITHUB_SERVER_URL
///   GITHUB_STATE
///   GITHUB_STEP_SUMMARY
@JsonSerializable()
class GitHubEnvironment {
  const GitHubEnvironment({
    required this.actor,
    required this.eventName,
    required this.job,
    required this.ref,
    required this.repository,
    required this.runAttempt,
    required this.runId,
    required this.runNumber,
    required this.sha,
    required this.triggeringActor,
    required this.workflow,
    required this.workflowRef,
    required this.workflowSha,
  });

  @JsonKey(includeIfNull: false)
  final String? actor;

  @JsonKey(includeIfNull: false)
  final String? eventName;

  @JsonKey(includeIfNull: false)
  final String? job;

  @JsonKey(includeIfNull: false)
  final String? ref;

  @JsonKey(includeIfNull: false)
  final String? repository;

  @JsonKey(includeIfNull: false)
  final int? runAttempt;

  @JsonKey(includeIfNull: false)
  final int? runId;

  @JsonKey(includeIfNull: false)
  final int? runNumber;

  @JsonKey(includeIfNull: false)
  final String? sha;

  @JsonKey(includeIfNull: false)
  final String? triggeringActor;

  @JsonKey(includeIfNull: false)
  final String? workflow;

  @JsonKey(includeIfNull: false)
  final String? workflowRef;

  @JsonKey(includeIfNull: false)
  final String? workflowSha;

  factory GitHubEnvironment.fromJson(Map<String, dynamic> map) =>
      _$GitHubEnvironmentFromJson(map);

  Map<String, dynamic> toJson() => _$GitHubEnvironmentToJson(this);
}
