// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'prescription.form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePrescriptionFormFormConsumer extends StatelessWidget {
  const ReactivePrescriptionFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, PrescriptionFormForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePrescriptionFormForm.of(context);

    if (formModel is! PrescriptionFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PrescriptionFormFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PrescriptionFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PrescriptionFormForm form;
}

class ReactivePrescriptionFormForm extends StatelessWidget {
  const ReactivePrescriptionFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final PrescriptionFormForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static PrescriptionFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PrescriptionFormFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PrescriptionFormFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PrescriptionFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PrescriptionFormFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePrescriptionFormFormExt on BuildContext {
  PrescriptionFormForm? prescriptionFormFormWatch() =>
      ReactivePrescriptionFormForm.of(this);

  PrescriptionFormForm? prescriptionFormFormRead() =>
      ReactivePrescriptionFormForm.of(this, listen: false);
}

class PrescriptionFormFormBuilder extends StatefulWidget {
  const PrescriptionFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PrescriptionForm? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, PrescriptionFormForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, PrescriptionFormForm formModel)?
      initState;

  @override
  _PrescriptionFormFormBuilderState createState() =>
      _PrescriptionFormFormBuilderState();
}

class _PrescriptionFormFormBuilderState
    extends State<PrescriptionFormFormBuilder> {
  late PrescriptionFormForm _formModel;

  @override
  void initState() {
    _formModel = PrescriptionFormForm(
        PrescriptionFormForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PrescriptionFormFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePrescriptionFormForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      canPop: widget.canPop,
      onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class PrescriptionFormForm implements FormModel<PrescriptionForm> {
  PrescriptionFormForm(
    this.form,
    this.path,
  );

  static const String doctorIdControlName = "doctorId";

  static const String appointmentIdControlName = "appointmentId";

  static const String patientIdControlName = "patientId";

  static const String bodyControlName = "body";

  static const String docSignControlName = "docSign";

  static const String otherNotesControlName = "otherNotes";

  static const String reportControlName = "report";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String doctorIdControlPath() => pathBuilder(doctorIdControlName);

  String appointmentIdControlPath() => pathBuilder(appointmentIdControlName);

  String patientIdControlPath() => pathBuilder(patientIdControlName);

  String bodyControlPath() => pathBuilder(bodyControlName);

  String docSignControlPath() => pathBuilder(docSignControlName);

  String otherNotesControlPath() => pathBuilder(otherNotesControlName);

  String reportControlPath() => pathBuilder(reportControlName);

  String? get _doctorIdValue => doctorIdControl?.value;

  String? get _appointmentIdValue => appointmentIdControl?.value;

  String? get _patientIdValue => patientIdControl?.value;

  String? get _bodyValue => bodyControl?.value;

  String? get _docSignValue => docSignControl?.value;

  String? get _otherNotesValue => otherNotesControl?.value;

  MultiFile<String>? get _reportValue => reportControl?.value;

  bool get containsDoctorId {
    try {
      form.control(doctorIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAppointmentId {
    try {
      form.control(appointmentIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPatientId {
    try {
      form.control(patientIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBody {
    try {
      form.control(bodyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocSign {
    try {
      form.control(docSignControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOtherNotes {
    try {
      form.control(otherNotesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsReport {
    try {
      form.control(reportControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get doctorIdErrors => doctorIdControl?.errors;

  Object? get appointmentIdErrors => appointmentIdControl?.errors;

  Object? get patientIdErrors => patientIdControl?.errors;

  Object? get bodyErrors => bodyControl?.errors;

  Object? get docSignErrors => docSignControl?.errors;

  Object? get otherNotesErrors => otherNotesControl?.errors;

  Object? get reportErrors => reportControl?.errors;

  void get doctorIdFocus => form.focus(doctorIdControlPath());

  void get appointmentIdFocus => form.focus(appointmentIdControlPath());

  void get patientIdFocus => form.focus(patientIdControlPath());

  void get bodyFocus => form.focus(bodyControlPath());

  void get docSignFocus => form.focus(docSignControlPath());

  void get otherNotesFocus => form.focus(otherNotesControlPath());

  void get reportFocus => form.focus(reportControlPath());

  void doctorIdRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDoctorId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          doctorIdControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            doctorIdControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void appointmentIdRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAppointmentId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          appointmentIdControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            appointmentIdControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void patientIdRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPatientId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          patientIdControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            patientIdControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void bodyRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBody) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          bodyControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            bodyControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void docSignRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDocSign) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          docSignControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            docSignControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void otherNotesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsOtherNotes) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          otherNotesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            otherNotesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void reportRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsReport) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          reportControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            reportControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void doctorIdValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorIdControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void appointmentIdValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    appointmentIdControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void patientIdValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientIdControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bodyValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bodyControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void docSignValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    docSignControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otherNotesValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otherNotesControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void reportValueUpdate(
    MultiFile<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    reportControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorIdValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorIdControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void appointmentIdValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    appointmentIdControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void patientIdValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientIdControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bodyValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bodyControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void docSignValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    docSignControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otherNotesValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otherNotesControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void reportValuePatch(
    MultiFile<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    reportControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorIdValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      doctorIdControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void appointmentIdValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      appointmentIdControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void patientIdValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      patientIdControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void bodyValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      bodyControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void docSignValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      docSignControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void otherNotesValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      otherNotesControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void reportValueReset(
    MultiFile<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      reportControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get doctorIdControl => containsDoctorId
      ? form.control(doctorIdControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get appointmentIdControl => containsAppointmentId
      ? form.control(appointmentIdControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get patientIdControl => containsPatientId
      ? form.control(patientIdControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get bodyControl => containsBody
      ? form.control(bodyControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get docSignControl => containsDocSign
      ? form.control(docSignControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get otherNotesControl => containsOtherNotes
      ? form.control(otherNotesControlPath()) as FormControl<String>?
      : null;

  FormControl<MultiFile<String>>? get reportControl => containsReport
      ? form.control(reportControlPath()) as FormControl<MultiFile<String>>?
      : null;

  void doctorIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      doctorIdControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      doctorIdControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void appointmentIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      appointmentIdControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      appointmentIdControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void patientIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      patientIdControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      patientIdControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void bodySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      bodyControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      bodyControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void docSignSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      docSignControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      docSignControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void otherNotesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      otherNotesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      otherNotesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void reportSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      reportControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      reportControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PrescriptionForm get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PrescriptionFormForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PrescriptionForm(
        doctorId: _doctorIdValue,
        appointmentId: _appointmentIdValue,
        patientId: _patientIdValue,
        body: _bodyValue,
        docSign: _docSignValue,
        otherNotes: _otherNotesValue,
        report: _reportValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(PrescriptionForm model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PrescriptionForm? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PrescriptionFormForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PrescriptionForm? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PrescriptionForm? prescriptionForm) =>
      FormGroup({
        doctorIdControlName: FormControl<String>(
            value: prescriptionForm?.doctorId,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        appointmentIdControlName: FormControl<String>(
            value: prescriptionForm?.appointmentId,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        patientIdControlName: FormControl<String>(
            value: prescriptionForm?.patientId,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        bodyControlName: FormControl<String>(
            value: prescriptionForm?.body,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        docSignControlName: FormControl<String>(
            value: prescriptionForm?.docSign,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        otherNotesControlName: FormControl<String>(
            value: prescriptionForm?.otherNotes,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        reportControlName: FormControl<MultiFile<String>>(
            value: prescriptionForm?.report,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactivePrescriptionFormFormArrayBuilder<
    ReactivePrescriptionFormFormArrayBuilderT> extends StatelessWidget {
  const ReactivePrescriptionFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactivePrescriptionFormFormArrayBuilderT>? formControl;

  final FormArray<ReactivePrescriptionFormFormArrayBuilderT>? Function(
      PrescriptionFormForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PrescriptionFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePrescriptionFormFormArrayBuilderT? item,
      PrescriptionFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePrescriptionFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactivePrescriptionFormFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePrescriptionFormFormFormGroupArrayBuilder<
        ReactivePrescriptionFormFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactivePrescriptionFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactivePrescriptionFormFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactivePrescriptionFormFormFormGroupArrayBuilderT>>
      Function(PrescriptionFormForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PrescriptionFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePrescriptionFormFormFormGroupArrayBuilderT? item,
      PrescriptionFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePrescriptionFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactivePrescriptionFormFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
