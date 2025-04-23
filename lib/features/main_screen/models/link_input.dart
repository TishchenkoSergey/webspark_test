// ignore_for_file: use_super_parameters

import 'package:formz/formz.dart';

enum LinkValidationError {
  blank,
  invalid,
}

class LinkInput extends FormzInput<String, LinkValidationError> {
  const LinkInput.pure([String value = '']) : super.pure(value);

  const LinkInput.dirty([String value = '']) : super.dirty(value);

  LinkInput toDirty() => LinkInput.dirty(value);

  @override
  LinkValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return LinkValidationError.blank;
    }

    final uri = Uri.tryParse(trimmedValue);
    final isValid = uri != null && uri.hasScheme && uri.host.isNotEmpty;

    if (!isValid) {
      return LinkValidationError.invalid;
    }

    return null;
  }
}
