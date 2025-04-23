import 'package:flutter/material.dart';

import '../models/model.dart';

extension LinkInputError on LinkInput {
  String? errorL10n(BuildContext context) {
    if (isValid || isPure) {
      return null;
    } else {
      switch (error!) {
        case LinkValidationError.blank:
          return 'Field cannot be empty';
        case LinkValidationError.invalid:
          return 'Invalid URL';
      }
    }
  }
}
