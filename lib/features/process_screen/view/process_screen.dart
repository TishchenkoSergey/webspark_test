import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:webspark_test/app/route/route.dart';
import 'package:webspark_test/features/process_screen/process_screen.dart';
import 'package:webspark_test/widgets/widgets.dart';

class ProcessScreen extends StatelessWidget {
  const ProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProcessCubit, ProcessState>(
      listener: _blocListener,
      builder: (BuildContext context, ProcessState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Process Screen'),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (state.status == ProcessStateStatus.initial) ...[
                            Text(
                              'Make calculations...',
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            const CustomLoader(),
                          ],
                          if (state.status == ProcessStateStatus.sendingCalculations) ...[
                            Text(
                              'Sending calculations...',
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            const CustomLoader(),
                          ],
                          if (state.status == ProcessStateStatus.counted) ...[
                            Text(
                              'All calculations has finished, you can send your result to server',
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                title: 'Send results to server',
                onPressed:
                    state.status == ProcessStateStatus.counted ? context.read<ProcessCubit>().submitCalculations : null,
              ),
            ),
          ),
        );
      },
    );
  }

  void _blocListener(BuildContext context, ProcessState state) {
    if (state.status == ProcessStateStatus.success) {
      context.pushNamed(
        Routes.resultListScreen.name,
        extra: state.shortestPath,
      );
    }
  }
}
