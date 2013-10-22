library doubleclickbidmanager_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_doubleclickbidmanager_v1_api/src/browser_client.dart';
import "package:google_doubleclickbidmanager_v1_api/doubleclickbidmanager_v1_api_client.dart";

/** API for viewing and managing your reports in DoubleClick Bid Manager. */
class Doubleclickbidmanager extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Doubleclickbidmanager([oauth.OAuth2 this.auth]);
}
