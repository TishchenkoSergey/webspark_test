import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:webspark_test/widgets/widgets.dart';
import 'package:webspark_test/features/process_screen/process_screen.dart';

class ProcessScreen extends StatelessWidget {
  const ProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProcessCubit, ProcessState>(
      builder: (BuildContext context, ProcessState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Process Screen'),
          ),
          body: Column(
            children: [
              Text(
                'All calculations has finished, you can send your result to server',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                title: 'Send results to server',
                onPressed: () {},
              ),
            ),
          ),
        );
      },
    );
  }
}
