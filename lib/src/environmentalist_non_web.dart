// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'dart:io';

import 'models/github.dart';
import 'models/google_application_credentials.dart';
import 'models/kubernetes.dart';
import 'models/platform_enum.dart';

GitHubEnvironment? getGitHub() {
  final actions = Platform.environment['GITHUB_ACTIONS'];
  if (actions != 'true') {
    return null;
  }

  final actor = Platform.environment['GITHUB_ACTOR'];
  final eventName = Platform.environment['GITHUB_EVENT_NAME'];
  final job = Platform.environment['GITHUB_JOB'];
  final ref = Platform.environment['GITHUB_REF'];
  final repository = Platform.environment['GITHUB_REPOSITORY'];
  final runAttempt = Platform.environment['GITHUB_RUN_ATTEMPT'];
  final runId = Platform.environment['GITHUB_RUN_ID'];
  final runNumber = Platform.environment['GITHUB_RUN_NUMBER'];
  final sha = Platform.environment['GITHUB_SHA'];
  final triggeringActor = Platform.environment['GITHUB_TRIGGERING_ACTOR'];
  final workflow = Platform.environment['GITHUB_WORKFLOW'];
  final workflowRef = Platform.environment['GITHUB_WORKFLOW_REF'];
  final workflowSha = Platform.environment['GITHUB_WORKFLOW_SHA'];

  return GitHubEnvironment(
    actor: actor,
    eventName: eventName,
    job: job,
    ref: ref,
    repository: repository,
    runAttempt: tryParseInt(runAttempt),
    runId: tryParseInt(runId),
    runNumber: tryParseInt(runNumber),
    sha: sha,
    triggeringActor: triggeringActor,
    workflow: workflow,
    workflowRef: workflowRef,
    workflowSha: workflowSha,
  );
}

GoogleApplicationCredentials? getGoogleApplicationCredentials() {
  final path = Platform.environment['GOOGLE_APPLICATION_CREDENTIALS'];
  if (path == null) {
    return null;
  }

  try {
    final content = File(path).readAsStringSync();
    final map = jsonDecode(content);
    if (map is! Map) {
      // TODO(alexeyinkin): Return the error information.
      return null;
    }

    return GoogleApplicationCredentials(
      path: path,
      audience: map['audience'],
      clientEmail: map['client_email'],
      clientId: map['client_id'],
      privateKeyId: map['private_key_id'],
      projectId: map['project_id'],
      serviceAccountImpersonationUrl: map['service_account_impersonation_url'],
      subjectTokenType: map['subject_token_type'],
      type: map['type'],
    );
    // ignore: avoid_catches_without_on_clauses
  } catch (ex) {
    return null;
  }
}

Future<List<String>> getIps() async {
  final result = <String>[];
  final interfaces = await NetworkInterface.list();

  for (final interface in interfaces) {
    for (final address in interface.addresses) {
      result.add(address.address);
    }
  }

  return result;
}

KubernetesEnvironment? getKubernetes() {
  final hostname = Platform.environment['HOSTNAME'];

  if (hostname == null) {
    return null;
  }

  return KubernetesEnvironment(
    hostname: hostname,
  );
}

int? getPid() {
  return pid;
}

PlatformEnum? getPlatform() {
  if (Platform.isAndroid) {
    return PlatformEnum.android;
  }

  if (Platform.isFuchsia) {
    return PlatformEnum.fuchsia;
  }

  if (Platform.isIOS) {
    return PlatformEnum.ios;
  }

  if (Platform.isLinux) {
    return PlatformEnum.linux;
  }

  if (Platform.isMacOS) {
    return PlatformEnum.macos;
  }

  if (Platform.isWindows) {
    return PlatformEnum.windows;
  }

  return null;
}

Map<String, String> getVariables() {
  return Platform.environment;
}

String getVersion() {
  return Platform.version;
}

int? tryParseInt(String? str) {
  return str == null ? null : int.tryParse(str);
}
