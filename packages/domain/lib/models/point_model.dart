class PointModel {
  PointModel({
    required this.x,
    required this.y,
  });

  factory PointModel.fromJson(Map<String, dynamic> json) => PointModel(x: json['x'] as int, y: json['y'] as int);

  final int x;
  final int y;

  Map<String, dynamic> toJson() => {'x': x, 'y': y};
}
