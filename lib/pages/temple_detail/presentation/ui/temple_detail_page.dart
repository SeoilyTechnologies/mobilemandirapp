import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../bloc/templ_detail_new/temple_detail_new_event.dart';
import 'temple_detail_screen.dart';

class TempleDetailPage extends StatelessWidget {
  const TempleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TempleDetailNewBloc(),
      child: const _TempleDetailLoader(),
    );
  }
}

class _TempleDetailLoader extends StatefulWidget {
  const _TempleDetailLoader();

  @override
  State<_TempleDetailLoader> createState() => _TempleDetailLoaderState();
}

class _TempleDetailLoaderState extends State<_TempleDetailLoader> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadTempleDetail());
  }

  void _loadTempleDetail() {
    if (!mounted) return;

    final args = ModalRoute.of(context)?.settings.arguments;
    final templeId = args is Map ? args['templeId']?.toString() : null;

    if (templeId == null || templeId.isEmpty) return;

    context.read<TempleDetailNewBloc>().add(GetTempleDetailById(id: templeId));
  }

  @override
  Widget build(BuildContext context) {
    return const TempleDetailScreen();
  }
}
