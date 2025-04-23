import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

import 'package:webspark_test/main.dart';

import '../models/model.dart';

part 'main_state.dart';

part 'main_cubit.freezed.dart';

class FeedbackCubit extends Cubit<MainState> {
  FeedbackCubit() : super(const MainState());

  // final PutReportUseCase _putFeedbackUseCase;
  //
  // void feedbackChanged(String feedback) {
  //   emit(state.copyWithValidate(
  //     feedbackInput: FeedbackInput.dirty(feedback),
  //   ));
  // }
  //
  // void emailChanged(String email) {
  //   emit(
  //     state.copyWithValidate(
  //       emailInput: EmailInput.dirty(email),
  //     ),
  //   );
  // }
  //
  // Future<void> submitFeedback() async {
  //   emit(state.copyWith(status: FeedbackStateStatus.inProgress));
  //
  //   try {
  //     await _putFeedbackUseCase.execute(ReportModel(
  //       email: state.emailInput.value,
  //       comment: state.feedbackInput.value,
  //       submissionType: SubmissionType.feedback,
  //     ));
  //     [
  //       state.copyWith(status: FeedbackStateStatus.success),
  //       state.copyWith(
  //         status: FeedbackStateStatus.initial,
  //         emailInput: const EmailInput.pure(),
  //         feedbackInput: const FeedbackInput.pure(),
  //       ),
  //     ].forEach(emit);
  //   } catch (e) {
  //     emit(state.copyWith(
  //       error: e,
  //       status: FeedbackStateStatus.failure,
  //     ));
  //   }
  // }
  //
  // Future<void> trySendFeedback() async {
  //   if (state.isAllFieldsValid) {
  //     await submitFeedback();
  //   } else {
  //     emit(
  //       state.copyWith(
  //         feedbackInput: state.feedbackInput.toDirty(),
  //         emailInput: state.emailInput.toDirty(),
  //       ),
  //     );
  //   }
  // }
}
