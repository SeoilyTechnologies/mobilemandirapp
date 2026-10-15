import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/auth/signin/presentation/bloc/login_bloc.dart';
import 'package:mandirapp/pages/auth/signin/presentation/bloc/login_event.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/login_large.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/login_large_landsacpe.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/login_medium.dart';
import 'package:mandirapp/pages/auth/signin/presentation/ui/component/login_small.dart';
import 'component/login_medium_landscaper.dart';
import 'component/login_small_landscape.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<LoginBloc>().add(MakeInitial());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    /// SMALL SCREEN (Mobile)
    if (context.isSmallScreen) {
      return context.isPortrait
          ? LoginSmall()
          : LoginSmallLandscape();
    }

    /// MEDIUM SCREEN (Tablet)
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? LoginMedium()
          : LoginMediumLandscaper();
    }

    /// LARGE SCREEN (Desktop / Web)
    else {
      return context.isPortrait
          ? LoginLarge()
          : LoginLargeLandsacpe();
    }
  }
}

