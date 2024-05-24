import 'environmentalist_non_web.dart'
    if (dart.library.html) 'environmentalist_web.dart';
import 'models/environment.dart';

/// Provides the information about the environment that the code runs in.
abstract final class Environmentalist {
  /// Returns all available information except for flags that are `false`.
  static Future<Environment> get({
    bool github = true,
    bool googleApplicationCredentials = true,
    bool ips = true,
    bool kubernetes = true,
    bool pid = true,
    bool platform = true,
    bool variables = true,
    bool version = true,
  }) async {
    return Environment(
      github: github ? getGitHub() : null,
      googleApplicationCredentials: googleApplicationCredentials
          ? getGoogleApplicationCredentials()
          : null,
      ips: ips ? await getIps() : null,
      kubernetes: kubernetes ? getKubernetes() : null,
      pid: pid ? getPid() : null,
      platform: platform ? getPlatform() : null,
      variables: variables ? getVariables() : null,
      version: version ? getVersion() : null,
    );
  }
}
