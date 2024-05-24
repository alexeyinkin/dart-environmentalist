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
  // ignore: public_member_api_docs
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

  /// The contents of `GITHUB_ACTOR` environment variable.
  @JsonKey(includeIfNull: false)
  final String? actor;

  /// The contents of `GITHUB_EVENT_NAME` environment variable.
  @JsonKey(includeIfNull: false)
  final String? eventName;

  /// The contents of `GITHUB_JOB` environment variable.
  @JsonKey(includeIfNull: false)
  final String? job;

  /// The contents of `GITHUB_REF` environment variable.
  @JsonKey(includeIfNull: false)
  final String? ref;

  /// The contents of `GITHUB_REPOSITORY` environment variable.
  @JsonKey(includeIfNull: false)
  final String? repository;

  /// The contents of `GITHUB_RUN_ATTEMPT` environment variable.
  @JsonKey(includeIfNull: false)
  final int? runAttempt;

  /// The contents of `GITHUB_RUN_ID` environment variable.
  @JsonKey(includeIfNull: false)
  final int? runId;

  /// The contents of `GITHUB_RUN_NUMBER` environment variable.
  @JsonKey(includeIfNull: false)
  final int? runNumber;

  /// The contents of `GITHUB_SHA` environment variable.
  @JsonKey(includeIfNull: false)
  final String? sha;

  /// The contents of `GITHUB_TRIGGERING_ACTOR` environment variable.
  @JsonKey(includeIfNull: false)
  final String? triggeringActor;

  /// The contents of `GITHUB_WORKFLOW` environment variable.
  @JsonKey(includeIfNull: false)
  final String? workflow;

  /// The contents of `GITHUB_WORKFLOW_REF` environment variable.
  @JsonKey(includeIfNull: false)
  final String? workflowRef;

  /// The contents of `GITHUB_WORKFLOW_SHA` environment variable.
  @JsonKey(includeIfNull: false)
  final String? workflowSha;

  // ignore: public_member_api_docs
  factory GitHubEnvironment.fromJson(Map<String, dynamic> map) =>
      _$GitHubEnvironmentFromJson(map);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$GitHubEnvironmentToJson(this);
}
