import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculation_result_screen.dart';

class CalculationResultScreen extends StatelessWidget {
  const CalculationResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculationResultCubit, CalculationResultState>(
      builder: (BuildContext context, CalculationResultState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Preview Screen'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: GridView.builder(
                    itemCount: state.taskData!.gridMatrix.length * state.taskData!.gridMatrix[0].length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: state.taskData!.gridMatrix[0].length,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (context, index) {
                      final row = index ~/ state.taskData!.gridMatrix[0].length;
                      final col = index % state.taskData!.gridMatrix[0].length;
                      final isStart = state.shortestPath!.result.steps.first.x == row && state.shortestPath!.result.steps.first.y == col;
                      final isEnd = state.shortestPath!.result.steps.last.x == row && state.shortestPath!.result.steps.last.y == col;
                      final isPath = state.shortestPath!.result.steps.any((step) => step.x == row && step.y == col);
                      final isBlocked = state.taskData!.gridMatrix[row][col] == 'X';
                      final cellColor = _getCellColor(isStart, isEnd, isPath, isBlocked);

                      return ColoredBox(
                        color: cellColor,
                        child: Center(
                          child: Text(
                            '($row,$col)',
                            style: TextStyle(color: _getTextColor(cellColor)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  state.shortestPath!.result.path,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _getCellColor(bool isStart, bool isEnd, bool isPath, bool isBlocked) {
    if (isStart) return const Color(0xFF64FFDA);
    if (isEnd) return const Color(0xFF009688);
    if (isBlocked) return const Color(0xFF000000);
    if (isPath) return const Color(0xFF4CAF50);
    return const Color(0xFFFFFFFF);
  }

  Color _getTextColor(Color cellColor) {
    return cellColor == const Color(0xFF000000) ? Colors.white : Colors.black;
  }
}
