import 'package:dart_verse/layers/service_server/db_server/repo/db_server_handlers.dart';
import 'package:dart_verse/layers/services/db_manager/db_service.dart';
import 'package:dart_verse/layers/settings/app/app.dart';

abstract class DbServerSettings {
  late DbServerHandlers handlers;
  late App app;
  late DbService dbService;
}
