import 'calculation_result_model.dart';

class CalculationDataModel {
  CalculationDataModel({
    required this.id,
    required this.result,
  });

  factory CalculationDataModel.fromJson(Map<String, dynamic> json) {
    return CalculationDataModel(
      id: json['id'] as String,
      result: CalculationResultModel.fromJson(json['result'] as Map<String, dynamic>),
    );
  }

  final String id;
  final CalculationResultModel result;

  Map<String, dynamic> toJson() => {
    'id': id,
    'result': result.toJson(),
  };
}
