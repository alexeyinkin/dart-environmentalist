Dumps all sufficient information about the platform for debugging purposes.
Currently, it dumps a lot of information for server environment
just because I needed it the most.

You are welcome to add well-known client properties and common cloud platforms.

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
