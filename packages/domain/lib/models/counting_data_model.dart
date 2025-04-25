import 'package:domain/models/models.dart';

class CountingDataModel {
  CountingDataModel({
    required this.id,
    required this.grid,
    required this.start,
    required this.end,
  });

  factory CountingDataModel.fromJson(Map<String, dynamic> json) {
    return CountingDataModel(
      id: json['id'] as String,
      grid: List<String>.from(json['field'] as List),
      start: PointModel.fromJson(json['start'] as Map<String, dynamic>),
      end: PointModel.fromJson(json['end'] as Map<String, dynamic>),
    );
  }

  final String id;
  final List<String> grid;
  final PointModel start;
  final PointModel end;

  List<List<String>> get gridMatrix => grid.map((row) => row.split('')).toList();
}
