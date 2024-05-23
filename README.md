Dumps all sufficient information about the platform for debugging purposes.
Currently, it dumps a lot for server environment
just because I needed it the most.

You are welcome to add well-known client properties and common cloud platforms.

The package evolved from fixing "ghost subscriber" problem in Cloud Pub/Sub.
By requiring each subscriber to dump its environment to a certain central log,
you can find zombie subscribers and debug your infrastructure.

The specific properties in this package data may change.
Please only rely on the ability to dump what can later be sorted out by humans.

## Usage

```dart
import 'dart:convert';
import 'package:environmentalist/environmentalist.dart';

Future<void> main() async {
  final env = await Environmentalist.get();
  final str = jsonEncode(env.toJson());
  print(str);
}
```

The returned object is serializable to JSON and back.

Following are pretty-printed outputs for environments:

### Local

```json5
{
  "googleApplicationCredentials": {
    "path": "/path/to/service/account/key",
    "clientEmail": "name@project-id.iam.gserviceaccount.com",
    "clientId": "123",
    "privateKeyId": "456",
    "projectId": "project-id",
    "type": "service_account"
  },
  "ips": [
    "192.168.1.2"
  ],
  "pid": 33784,
  "platform": "macos",
  "variables": { /* Environment variables, key-value pairs. */ },
  "version": "3.4.0 (stable) (Mon May 6 07:59:58 2024 -0700) on \"macos_arm64\""
}
```

### Google Kubernetes Engine

```json5
{
  "ips": [
    "10.28.1.2"
  ],
  "kubernetes": {
    "hostname": "gh-repository-scanner-d9c5d4dc-qf524"
  },
  "pid": 1,
  "platform": "linux",
  "variables": { /* Environment variables, key-value pairs. */ },
  "version": "3.4.0 (stable) (Mon May 6 07:59:58 2024 -0700) on \"linux_x64\""
}
```

### GitHub Workflow

```json5
{
  "github": {
    "actor": "alexeyinkin",
    "eventName": "workflow_dispatch",
    "job": "_",
    "ref": "refs/heads/main",
    "repository": "alexeyinkin/repository-name",
    "runAttempt": 1,
    "runId": 9206310416,
    "runNumber": 127,
    "sha": "8bb284fa40a240192fb95f92540dffeb68ce22f6",
    "triggeringActor": "alexeyinkin",
    "workflow": ".github/workflows/deploy_prod.yaml",
    "workflowRef": "alexeyinkin/repository-name/.github/workflows/deploy_prod.yaml@refs/heads/main",
    "workflowSha": "8bb284fa40a240192fb95f92540dffeb68ce22f6"
  },
  "googleApplicationCredentials": {
    "path": "/home/runner/work/repository-name/repository-name/gha-creds-db27f0e3297f59e0.json",
    "type": "external_account"
  },
  "ips": [
    "10.1.2.3",
    "172.17.4.5"
  ],
  "pid": 2076,
  "platform": "linux",
  "variables": { /* Environment variables, key-value pairs. */ },
  "version": "3.4.0 (stable) (Mon May 6 07:59:58 2024 -0700) on \"linux_x64\""
}
```
