import 'package:auth_server/features/app/handlers/app_handlers.dart';
import 'package:auth_server/features/app/router/end_points.dart';
import 'package:auth_server/helpers/router_system/router.dart';

class Router {
  final CustomRouter _customRouter = CustomRouter()
      .get(EP.main, [], AppHandlers.hello)
      .get(EP.login, [], AppHandlers.login)
      .get(EP.register, [], AppHandlers.register);
  CustomRouter get router => _customRouter;
}
