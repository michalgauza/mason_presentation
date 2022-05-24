import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';
import 'cubit/home_cubit.dart';
import 'cubit/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: BlocProvider<HomeCubit>(
      create: (_) => getIt<HomeCubit>(),
      child: const _Body(),
    ),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeCubit, HomeState>(
    builder: (_, state) => state.when(
      initial: () => const Text('initial'),
      success: () => const Text('success'),
      error: () => const Text('error'),
      loading: () => const Text('loading'),
    ),
  );
}
