import 'package:app/main.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

/// Validator that validates the user's username is unique, sending a request to
/// the Server.
class UniqueUsernameAsyncValidator extends AsyncValidator<dynamic> {
  const UniqueUsernameAsyncValidator();

  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final ref = container;
    final error = {
      'unique': {
        'isUnique': false,
        'message': 'Username already exists',
      }
    };

    if (control.dirty) {
      final res = await ref
          .read(checkUserNameEmailUCProvider)
          .callUsernameCheck(control.value);
      final isDuplicateUsername = res.getOrElse((_) => false);
      if (isDuplicateUsername) {
        control.markAsTouched();
        return error;
      }
    }

    return null;
  }
}

class UniqueEmailAsyncValidator extends AsyncValidator<dynamic> {
  const UniqueEmailAsyncValidator();

  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final ref = container;
    final error = {
      'unique': {'isUnique': false, 'message': 'Email already exists'}
    };

    if (control.dirty) {
      final res = await ref
          .read(checkUserNameEmailUCProvider)
          .callEmailCheck(control.value);
      final isDuplicateEmail = res.getOrElse((_) => false);
      if (isDuplicateEmail) {
        control.markAsTouched();
        return error;
      }
    }

    return null;
  }
}
