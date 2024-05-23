import 'models/environment.dart';

import 'environmentalist_non_web.dart'
    if (dart.library.html) 'environmentalist_web.dart';

abstract final class Environmentalist {
  static Future<Environment> get({
    bool variables = true,
  }) async {
    return Environment(
      github: getGitHub(),
      googleApplicationCredentials: getGoogleApplicationCredentials(),
      ips: await getIps(),
      kubernetes: getKubernetes(),
      pid: getPid(),
      platform: getPlatform(),
      variables: variables ? getVariables() : null,
      version: getVersion(),
    );
  }
}
