import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

abstract class SetCalculationDataUsecase {
  Future<BaseResponseModel?> execute(List<CalculationDataModel> report);
}

@Injectable(as: SetCalculationDataUsecase)
class SetCalculationDataUsecaseImpl implements SetCalculationDataUsecase {
  SetCalculationDataUsecaseImpl(
    this.calculationRepository,
  );

  final CalculationRepository calculationRepository;

  @override
  Future<BaseResponseModel?> execute(List<CalculationDataModel> report) async {
    final response =  await calculationRepository.sendCalculation(report);
    return response;
  }
}
