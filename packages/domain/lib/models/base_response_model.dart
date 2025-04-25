class BaseResponseModel {
  BaseResponseModel({
    required this.error,
    required this.message,
  });

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return BaseResponseModel(
      error: json['error'] as bool,
      message: json['message'] as String,
    );
  }

  final bool error;
  final String message;
}
