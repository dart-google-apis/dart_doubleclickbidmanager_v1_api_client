library doubleclickbidmanager_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_doubleclickbidmanager_v1_api/src/console_client.dart';

import "package:google_doubleclickbidmanager_v1_api/doubleclickbidmanager_v1_api_client.dart";

/** API for viewing and managing your reports in DoubleClick Bid Manager. */
@deprecated
class Doubleclickbidmanager extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Doubleclickbidmanager([oauth2.OAuth2Console this.auth]);
}
