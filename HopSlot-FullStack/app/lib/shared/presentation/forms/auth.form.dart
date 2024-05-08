import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'auth.form.freezed.dart';
part 'auth.form.g.dart';
part 'auth.form.gform.dart';

@freezed
@Rf()
class LoginForm with _$LoginForm {
  const factory LoginForm({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    String? identity,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    String? password,
  }) = _LoginForm;

  factory LoginForm.fromJson(Map<String, dynamic> json) =>
      _$LoginFormFromJson(json);
}

@freezed
@Rf()
class SignUpForm with _$SignUpForm {
  const factory SignUpForm({
    @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
    String? firstName,
    @RfControl(validators: [
      RequiredValidator(),
      MinLengthValidator(4),
    ])
    String? lastName,
    @RfControl(validators: [
      RequiredValidator(),
      EmailValidator(),
    ])
    String? email,
    @RfControl(validators: [
      RequiredValidator(),
      MinLengthValidator(4),
      MaxLengthValidator(10),
    ])
    String? username,
    @RfControl(validators: [
      NumberValidator(
        allowNegatives: false,
      ),
    ])
    int? age,
    @RfControl(validators: [
      RequiredValidator(),
      MinLengthValidator(5),
      MaxLengthValidator(20),
    ])
    String? password,
  }) = _SignUpForm;

  factory SignUpForm.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormFromJson(json);
}
