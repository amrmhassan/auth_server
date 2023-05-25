import 'package:dart_verse/services/auth/auth_service.dart';
import 'package:dart_verse/settings/server_settings/repo/auth_body_keys.dart';
import 'package:dart_verse/settings/server_settings/repo/auth_endpoints.dart';
import 'package:dart_verse/settings/server_settings/repo/auth_server_handlers.dart';

abstract class AuthServerSettings {
  late AuthEndpoints authEndpoints;
  late AuthServerHandlers authServerHandlers;
  late AuthBodyKeys authBodyKeys;

  late AuthService authService;
}
