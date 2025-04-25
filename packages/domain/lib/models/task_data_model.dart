import 'package:domain/models/models.dart';

class TaskDataModel {
  TaskDataModel({
    required this.error,
    required this.message,
    required this.data,
  });

  factory TaskDataModel.fromJson(Map<String, dynamic> json) {
    return TaskDataModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List).map((item) => CountingDataModel.fromJson(item as Map<String, dynamic>)).toList(),
    );
  }

  final bool error;
  final String message;
  final List<CountingDataModel> data;
}
