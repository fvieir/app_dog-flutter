import 'package:cuidapet_mobile/app/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet_mobile/app/modules/auth/login/login_page.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => AuthHomePage(authStore: Modular.get<AuthStore>()),
        ),
        ChildRoute(
          '/login',
          child: (_, __) => const LoginPage(),
        )
      ];
}
