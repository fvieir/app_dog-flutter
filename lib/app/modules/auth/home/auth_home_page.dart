// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_util.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

class AuthHomePage extends StatefulWidget {
  final AuthStore _authStore;

  const AuthHomePage({
    Key? key,
    required AuthStore authStore,
  })  : _authStore = authStore,
        super(key: key);

  @override
  State<AuthHomePage> createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    super.initState();

    reaction((reaction) => widget._authStore.userLogged, (user) {
      if (user != null && user.email.isNotEmpty) {
        // home page
      } else {
        // login
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 162.w,
          height: 130.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
