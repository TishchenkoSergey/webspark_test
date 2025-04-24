import 'package:flutter/foundation.dart';

@immutable
class PointModel {
  const PointModel({
    required this.x,
    required this.y,
  });

  factory PointModel.fromJson(Map<String, dynamic> json) => PointModel(x: json['x'] as int, y: json['y'] as int);

  final int x;
  final int y;

  Map<String, dynamic> toJson() => {
    'x': x.toString(),
    'y': y.toString(),
  };

  @override
  String toString() => '($x,$y)';

  @override
  bool operator ==(Object other) => other is PointModel && other.x == x && other.y == y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}
