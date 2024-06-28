import 'package:cuidapet_mobile/app/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet_mobile/app/modules/auth/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => const AuthHomePage(),
        ),
        ChildRoute(
          '/login',
          child: (_, __) => const LoginPage(),
        )
      ];
}
