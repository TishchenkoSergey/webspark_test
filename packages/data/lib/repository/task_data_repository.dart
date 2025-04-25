import 'package:flutter/cupertino.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

@Injectable(as: TaskDataRepository)
class TaskDataRepositoryImpl implements TaskDataRepository {
  const TaskDataRepositoryImpl();

  @override
  Future<TaskDataModel?> getTaskData(String link) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(link);
      return TaskDataModel.fromJson(response.data!);
    } catch (e) {
      debugPrint('Something went wrong: $e');

      return null;
    }
  }
}
