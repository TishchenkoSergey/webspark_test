import 'package:injectable/injectable.dart';

import 'package:logging/logging.dart';
import 'package:dio/dio.dart';

import 'package:domain/domain.dart';

final _logger = Logger('CalculationRepository');

@Injectable(as: CalculationRepository)
class CalculationRepositoryImpl implements CalculationRepository {
  CalculationRepositoryImpl();

  @override
  Future<BaseResponseModel?> sendCalculation(List<CalculationDataModel> calculation) async {
    const url = 'https://flutter.webspark.dev/flutter/api';

    try {
      final jsonData = calculation.map((e) => e.toJson()).toList();

      final response = await Dio().post<Map<String, dynamic>>(
        url,
        data: jsonData,
      );
      if (response.data != null) {
        return BaseResponseModel.fromJson(response.data!);
      } else {
        throw Exception('Empty response from server');
      }
    } catch (e) {
      // TODO(Tishchenko): Add error handler
      _logger.info('Failed to send request to server', e);

      return null;
    }
  }
}
