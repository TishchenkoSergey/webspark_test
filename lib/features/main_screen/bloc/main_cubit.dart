import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

import '../models/model.dart';

part 'main_state.dart';

part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit({
    required this.updateUrlStorageUsecase,
}) : super(const MainState());

  final UpdateUrlStorageUsecase updateUrlStorageUsecase;

  void linkChanged(String linkInput) {
    emit(state.copyWithValidate(
      linkInput: LinkInput.dirty(linkInput),
    ));
  }

  Future<void> setNewLink() async {
    await updateUrlStorageUsecase.execute(state.linkInput.value);
  }
}
