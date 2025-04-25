import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:webspark_test/app/route/route.dart';
import 'package:webspark_test/features/features.dart';

class ResultListScreen extends StatelessWidget {
  const ResultListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultListCubit, ResultListState>(
      builder: (BuildContext context, ResultListState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Result list screen'),
          ),
          body: ListView.builder(
            itemCount: state.shortestPath!.length,
            itemBuilder: (context, index) {
              return TextButton(
                onPressed: () => context.pushNamed(
                  Routes.calculationResultScreen.name,
                  extra: state.shortestPath![index],
                ),
                child: Text(state.shortestPath![index].result.path),
              );
            },
          ),
        );
      },
    );
  }
}
