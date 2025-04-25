part of 'main_cubit.dart';

@freezed
sealed class MainState with _$MainState {
  const factory MainState({
    @Default(LinkInput.pure()) LinkInput linkInput,
  }) = _MainState;

  const MainState._();

  bool get isAllFieldsValid => Formz.validate([
    linkInput,
  ]);

  MainState copyWithValidate({
    LinkInput? linkInput,
  }) {
    return MainState(
      linkInput: linkInput ?? this.linkInput,
    );
  }
}
