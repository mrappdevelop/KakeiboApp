import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakeibo/viewmodel/detail_view_model.dart';

class DetailScreen extends ConsumerWidget{
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(detailViewModelProvider);
    final viewModel = ref.read(detailViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('入出金明細'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: const Text('入出金明細'),
      ),
    );

  }
}