import 'point_model.dart';

class CalculationResultModel {
  CalculationResultModel({
    required this.steps,
    required this.path,
  });

  factory CalculationResultModel.fromJson(Map<String, dynamic> json) {
    return CalculationResultModel(
      steps: (json['steps'] as List)
          .map((step) => PointModel.fromJson(step as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String,
    );
  }

  final List<PointModel> steps;
  final String path;

  Map<String, dynamic> toJson() => {
    'steps': steps.map((s) => s.toJson()).toList(),
    'path': path,
  };
}
