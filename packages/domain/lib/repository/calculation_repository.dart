import '../models/base_response_model.dart';
import '../models/calculation_data_model.dart';

abstract interface class CalculationRepository {
  Future<BaseResponseModel?> sendCalculation(List<CalculationDataModel> calculation);
}
