// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'book_appointment.form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveBookAppointmentFormFormConsumer extends StatelessWidget {
  const ReactiveBookAppointmentFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, BookAppointmentFormForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBookAppointmentFormForm.of(context);

    if (formModel is! BookAppointmentFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class BookAppointmentFormFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const BookAppointmentFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final BookAppointmentFormForm form;
}

class ReactiveBookAppointmentFormForm extends StatelessWidget {
  const ReactiveBookAppointmentFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final BookAppointmentFormForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static BookAppointmentFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              BookAppointmentFormFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        BookAppointmentFormFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as BookAppointmentFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return BookAppointmentFormFormInheritedStreamer(
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

extension ReactiveReactiveBookAppointmentFormFormExt on BuildContext {
  BookAppointmentFormForm? bookAppointmentFormFormWatch() =>
      ReactiveBookAppointmentFormForm.of(this);

  BookAppointmentFormForm? bookAppointmentFormFormRead() =>
      ReactiveBookAppointmentFormForm.of(this, listen: false);
}

class BookAppointmentFormFormBuilder extends StatefulWidget {
  const BookAppointmentFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final BookAppointmentForm? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context, BookAppointmentFormForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context, BookAppointmentFormForm formModel)?
      initState;

  @override
  _BookAppointmentFormFormBuilderState createState() =>
      _BookAppointmentFormFormBuilderState();
}

class _BookAppointmentFormFormBuilderState
    extends State<BookAppointmentFormFormBuilder> {
  late BookAppointmentFormForm _formModel;

  @override
  void initState() {
    _formModel = BookAppointmentFormForm(
        BookAppointmentFormForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant BookAppointmentFormFormBuilder oldWidget) {
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
    return ReactiveBookAppointmentFormForm(
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

class BookAppointmentFormForm implements FormModel<BookAppointmentForm> {
  BookAppointmentFormForm(
    this.form,
    this.path,
  );

  static const String hospitalControlName = "hospital";

  static const String doctorControlName = "doctor";

  static const String slotControlName = "slot";

  static const String dateControlName = "date";

  static const String selectedSymptomsControlName = "selectedSymptoms";

  static const String symptomsControlName = "symptoms";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String hospitalControlPath() => pathBuilder(hospitalControlName);

  String doctorControlPath() => pathBuilder(doctorControlName);

  String slotControlPath() => pathBuilder(slotControlName);

  String dateControlPath() => pathBuilder(dateControlName);

  String selectedSymptomsControlPath() =>
      pathBuilder(selectedSymptomsControlName);

  String symptomsControlPath() => pathBuilder(symptomsControlName);

  LookUpResponse? get _hospitalValue => hospitalControl?.value;

  LookUpResponse? get _doctorValue => doctorControl?.value;

  DoctorSlot? get _slotValue => slotControl?.value;

  DateTime? get _dateValue => dateControl?.value;

  List<LookUpResponse>? get _selectedSymptomsValue =>
      selectedSymptomsControl?.value;

  List<SymptomEvidence> get _symptomsValue =>
      symptomsSymptomEvidenceForm.map((e) => e.model).toList();

  bool get containsHospital {
    try {
      form.control(hospitalControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDoctor {
    try {
      form.control(doctorControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSlot {
    try {
      form.control(slotControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDate {
    try {
      form.control(dateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSelectedSymptoms {
    try {
      form.control(selectedSymptomsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSymptoms {
    try {
      form.control(symptomsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get hospitalErrors => hospitalControl?.errors;

  Object? get doctorErrors => doctorControl?.errors;

  Object? get slotErrors => slotControl?.errors;

  Object? get dateErrors => dateControl?.errors;

  Object? get selectedSymptomsErrors => selectedSymptomsControl?.errors;

  Object? get symptomsErrors => symptomsControl.errors;

  void get hospitalFocus => form.focus(hospitalControlPath());

  void get doctorFocus => form.focus(doctorControlPath());

  void get slotFocus => form.focus(slotControlPath());

  void get dateFocus => form.focus(dateControlPath());

  void get selectedSymptomsFocus => form.focus(selectedSymptomsControlPath());

  void get symptomsFocus => form.focus(symptomsControlPath());

  void hospitalRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHospital) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          hospitalControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            hospitalControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void doctorRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDoctor) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          doctorControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            doctorControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void slotRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSlot) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          slotControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            slotControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void dateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          dateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            dateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void selectedSymptomsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSelectedSymptoms) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          selectedSymptomsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            selectedSymptomsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void hospitalValueUpdate(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hospitalControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorValueUpdate(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotValueUpdate(
    DoctorSlot? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void selectedSymptomsValueUpdate(
    List<LookUpResponse>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    selectedSymptomsControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void symptomsValueUpdate(
    List<SymptomEvidence> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      symptomsClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <SymptomEvidence>[];
    final toAdd = <SymptomEvidence>[];

    localValue.asMap().forEach((k, v) {
      final values = (symptomsControl.controls).map((e) => e.value).toList();

      if (symptomsSymptomEvidenceForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      symptomsControl.updateValue(
          toUpdate
              .map((e) => SymptomEvidenceForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        symptomsControl.add(SymptomEvidenceForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void symptomsInsert(
    int i,
    SymptomEvidence value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (symptomsControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addSymptomsItem(value);
      return;
    }

    symptomsControl.insert(
      i,
      SymptomEvidenceForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void symptomsClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    symptomsSymptomEvidenceForm.clear();
    symptomsControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void hospitalValuePatch(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hospitalControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorValuePatch(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotValuePatch(
    DoctorSlot? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void selectedSymptomsValuePatch(
    List<LookUpResponse>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    selectedSymptomsControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void symptomsValuePatch(
    List<SymptomEvidence> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = symptomsSymptomEvidenceForm.asMap().keys;

    final toPatch = <SymptomEvidence>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    symptomsControl.patchValue(
        toPatch
            .map((e) => SymptomEvidenceForm.formElements(e).rawValue)
            .toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void hospitalValueReset(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hospitalControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void doctorValueReset(
    LookUpResponse? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      doctorControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void slotValueReset(
    DoctorSlot? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      slotControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void dateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void selectedSymptomsValueReset(
    List<LookUpResponse>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      selectedSymptomsControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void symptomsValueReset(
    List<SymptomEvidence> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      symptomsControl.reset(
          value: value
              .map((e) => SymptomEvidenceForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<LookUpResponse>? get hospitalControl => containsHospital
      ? form.control(hospitalControlPath()) as FormControl<LookUpResponse>?
      : null;

  FormControl<LookUpResponse>? get doctorControl => containsDoctor
      ? form.control(doctorControlPath()) as FormControl<LookUpResponse>?
      : null;

  FormControl<DoctorSlot>? get slotControl => containsSlot
      ? form.control(slotControlPath()) as FormControl<DoctorSlot>?
      : null;

  FormControl<DateTime>? get dateControl => containsDate
      ? form.control(dateControlPath()) as FormControl<DateTime>?
      : null;

  FormControl<List<LookUpResponse>>? get selectedSymptomsControl =>
      containsSelectedSymptoms
          ? form.control(selectedSymptomsControlPath())
              as FormControl<List<LookUpResponse>>?
          : null;

  FormArray<Map<String, Object?>> get symptomsControl =>
      form.control(symptomsControlPath()) as FormArray<Map<String, Object?>>;

  List<SymptomEvidenceForm> get symptomsSymptomEvidenceForm {
    final values = (symptomsControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, SymptomEvidenceForm(form, pathBuilder("symptoms.$k"))))
        .values
        .toList();
  }

  void hospitalSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hospitalControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hospitalControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void doctorSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      doctorControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      doctorControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void slotSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      slotControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      slotControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void selectedSymptomsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      selectedSymptomsControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      selectedSymptomsControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void symptomsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      symptomsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      symptomsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<SymptomEvidenceForm>>
      get symptomsExtendedControl => ExtendedControl<
              List<Map<String, Object?>?>, List<SymptomEvidenceForm>>(
          form.control(symptomsControlPath())
              as FormArray<Map<String, Object?>>,
          () => symptomsSymptomEvidenceForm);

  void addSymptomsItem(SymptomEvidence value) {
    symptomsControl.add(SymptomEvidenceForm.formElements(value));
  }

  void removeSymptomsItemAtIndex(int i) {
    if ((symptomsControl.value ?? []).length > i) {
      symptomsControl.removeAt(i);
    }
  }

  void addSymptomsItemList(List<SymptomEvidence> value) {
    value.map((e) => addSymptomsItem(e));
  }

  @override
  BookAppointmentForm get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'BookAppointmentFormForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return BookAppointmentForm(
        hospital: _hospitalValue,
        doctor: _doctorValue,
        slot: _slotValue,
        date: _dateValue,
        selectedSymptoms: _selectedSymptomsValue,
        symptoms: _symptomsValue);
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

      symptomsSymptomEvidenceForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      symptomsSymptomEvidenceForm.forEach((e) => e.toggleDisabled());

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
    required void Function(BookAppointmentForm model) onValid,
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
    BookAppointmentForm? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(BookAppointmentFormForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    BookAppointmentForm? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(BookAppointmentForm? bookAppointmentForm) =>
      FormGroup({
        hospitalControlName: FormControl<LookUpResponse>(
            value: bookAppointmentForm?.hospital,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        doctorControlName: FormControl<LookUpResponse>(
            value: bookAppointmentForm?.doctor,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        slotControlName: FormControl<DoctorSlot>(
            value: bookAppointmentForm?.slot,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName: FormControl<DateTime>(
            value: bookAppointmentForm?.date,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        selectedSymptomsControlName: FormControl<List<LookUpResponse>>(
            value: bookAppointmentForm?.selectedSymptoms,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        symptomsControlName: FormArray(
            (bookAppointmentForm?.symptoms ?? [])
                .map((e) => SymptomEvidenceForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class SymptomEvidenceForm implements FormModel<SymptomEvidence> {
  SymptomEvidenceForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String nameControlName = "name";

  static const String dataTypeControlName = "dataType";

  static const String codeQuestionControlName = "codeQuestion";

  static const String defaultValueControlName = "defaultValue";

  static const String isActecedentControlName = "isActecedent";

  static const String questionControlName = "question";

  static const String possibleValuesControlName = "possibleValues";

  static const String valuesControlName = "values";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String dataTypeControlPath() => pathBuilder(dataTypeControlName);

  String codeQuestionControlPath() => pathBuilder(codeQuestionControlName);

  String isActecedentControlPath() => pathBuilder(isActecedentControlName);

  String questionControlPath() => pathBuilder(questionControlName);

  String possibleValuesControlPath() => pathBuilder(possibleValuesControlName);

  String valuesControlPath() => pathBuilder(valuesControlName);

  String defaultValueControlPath() => pathBuilder(defaultValueControlName);

  String get _idValue => idControl.value as String;

  String get _nameValue => nameControl.value as String;

  String get _dataTypeValue => dataTypeControl.value as String;

  String get _codeQuestionValue => codeQuestionControl.value as String;

  bool get _isActecedentValue => isActecedentControl.value as bool;

  String get _questionValue => questionControl.value as String;

  List<PointOfInterestValue> get _possibleValuesValue =>
      possibleValuesControl.value as List<PointOfInterestValue>;

  List<String> get _valuesValue => valuesControl.value as List<String>;

  PointOfInterestValue? get _defaultValueValue => defaultValueForm.model;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDataType {
    try {
      form.control(dataTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCodeQuestion {
    try {
      form.control(codeQuestionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsActecedent {
    try {
      form.control(isActecedentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsQuestion {
    try {
      form.control(questionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPossibleValues {
    try {
      form.control(possibleValuesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValues {
    try {
      form.control(valuesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDefaultValue {
    try {
      form.control(defaultValueControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get nameErrors => nameControl.errors;

  Object? get dataTypeErrors => dataTypeControl.errors;

  Object? get codeQuestionErrors => codeQuestionControl.errors;

  Object? get isActecedentErrors => isActecedentControl.errors;

  Object? get questionErrors => questionControl.errors;

  Object? get possibleValuesErrors => possibleValuesControl.errors;

  Object? get valuesErrors => valuesControl.errors;

  Object? get defaultValueErrors => defaultValueControl?.errors;

  void get idFocus => form.focus(idControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get dataTypeFocus => form.focus(dataTypeControlPath());

  void get codeQuestionFocus => form.focus(codeQuestionControlPath());

  void get isActecedentFocus => form.focus(isActecedentControlPath());

  void get questionFocus => form.focus(questionControlPath());

  void get possibleValuesFocus => form.focus(possibleValuesControlPath());

  void get valuesFocus => form.focus(valuesControlPath());

  void get defaultValueFocus => form.focus(defaultValueControlPath());

  void defaultValueRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDefaultValue) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          defaultValueControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            defaultValueControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dataTypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dataTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeQuestionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeQuestionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isActecedentValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isActecedentControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void questionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    questionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void possibleValuesValueUpdate(
    List<PointOfInterestValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    possibleValuesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valuesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valuesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void defaultValueValueUpdate(
    PointOfInterestValue? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    defaultValueControl?.updateValue(
        PointOfInterestValueForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dataTypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dataTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeQuestionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeQuestionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isActecedentValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isActecedentControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void questionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    questionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void possibleValuesValuePatch(
    List<PointOfInterestValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    possibleValuesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valuesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valuesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void defaultValueValuePatch(
    PointOfInterestValue? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    defaultValueControl?.updateValue(
        PointOfInterestValueForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void dataTypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dataTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void codeQuestionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      codeQuestionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void isActecedentValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isActecedentControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void questionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      questionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void possibleValuesValueReset(
    List<PointOfInterestValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      possibleValuesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void valuesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valuesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void defaultValueValueReset(
    PointOfInterestValue? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      defaultValueControl?.reset(
          value: PointOfInterestValueForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get dataTypeControl =>
      form.control(dataTypeControlPath()) as FormControl<String>;

  FormControl<String> get codeQuestionControl =>
      form.control(codeQuestionControlPath()) as FormControl<String>;

  FormControl<bool> get isActecedentControl =>
      form.control(isActecedentControlPath()) as FormControl<bool>;

  FormControl<String> get questionControl =>
      form.control(questionControlPath()) as FormControl<String>;

  FormControl<List<PointOfInterestValue>> get possibleValuesControl =>
      form.control(possibleValuesControlPath())
          as FormControl<List<PointOfInterestValue>>;

  FormControl<List<String>> get valuesControl =>
      form.control(valuesControlPath()) as FormControl<List<String>>;

  FormGroup? get defaultValueControl => containsDefaultValue
      ? form.control(defaultValueControlPath()) as FormGroup?
      : null;

  PointOfInterestValueForm get defaultValueForm =>
      PointOfInterestValueForm(form, pathBuilder('defaultValue'));

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dataTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dataTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dataTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void codeQuestionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      codeQuestionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      codeQuestionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isActecedentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isActecedentControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isActecedentControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void questionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      questionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      questionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void possibleValuesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      possibleValuesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      possibleValuesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void valuesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      valuesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      valuesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void defaultValueSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      defaultValueControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      defaultValueControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  SymptomEvidence get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'SymptomEvidenceForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SymptomEvidence(
        id: _idValue,
        name: _nameValue,
        dataType: _dataTypeValue,
        codeQuestion: _codeQuestionValue,
        defaultValue: _defaultValueValue,
        isActecedent: _isActecedentValue,
        question: _questionValue,
        possibleValues: _possibleValuesValue,
        values: _valuesValue);
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

      defaultValueForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      defaultValueForm.toggleDisabled();
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
    required void Function(SymptomEvidence model) onValid,
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
    SymptomEvidence? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SymptomEvidenceForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    SymptomEvidence? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(SymptomEvidence? symptomEvidence) => FormGroup({
        idControlName: FormControl<String>(
            value: symptomEvidence?.id,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: symptomEvidence?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dataTypeControlName: FormControl<String>(
            value: symptomEvidence?.dataType,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        codeQuestionControlName: FormControl<String>(
            value: symptomEvidence?.codeQuestion,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isActecedentControlName: FormControl<bool>(
            value: symptomEvidence?.isActecedent,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        questionControlName: FormControl<String>(
            value: symptomEvidence?.question,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        possibleValuesControlName: FormControl<List<PointOfInterestValue>>(
            value: symptomEvidence?.possibleValues,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valuesControlName: FormControl<List<String>>(
            value: symptomEvidence?.values,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        defaultValueControlName:
            PointOfInterestValueForm.formElements(symptomEvidence?.defaultValue)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PointOfInterestValueForm implements FormModel<PointOfInterestValue> {
  PointOfInterestValueForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String nameControlName = "name";

  static const String valueControlName = "value";

  static const String forTypeControlName = "forType";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String valueControlPath() => pathBuilder(valueControlName);

  String forTypeControlPath() => pathBuilder(forTypeControlName);

  String get _idValue => idControl.value as String;

  String get _nameValue => nameControl.value as String;

  String get _valueValue => valueControl.value as String;

  String get _forTypeValue => forTypeControl.value as String;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValue {
    try {
      form.control(valueControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsForType {
    try {
      form.control(forTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get nameErrors => nameControl.errors;

  Object? get valueErrors => valueControl.errors;

  Object? get forTypeErrors => forTypeControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get valueFocus => form.focus(valueControlPath());

  void get forTypeFocus => form.focus(forTypeControlPath());

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void forTypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    forTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void forTypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    forTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void valueValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void forTypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      forTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get valueControl =>
      form.control(valueControlPath()) as FormControl<String>;

  FormControl<String> get forTypeControl =>
      form.control(forTypeControlPath()) as FormControl<String>;

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void valueSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      valueControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      valueControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void forTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      forTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      forTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PointOfInterestValue get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PointOfInterestValueForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PointOfInterestValue(
        id: _idValue,
        name: _nameValue,
        value: _valueValue,
        forType: _forTypeValue);
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
    required void Function(PointOfInterestValue model) onValid,
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
    PointOfInterestValue? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PointOfInterestValueForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PointOfInterestValue? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PointOfInterestValue? pointOfInterestValue) =>
      FormGroup({
        idControlName: FormControl<String>(
            value: pointOfInterestValue?.id,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: pointOfInterestValue?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<String>(
            value: pointOfInterestValue?.value,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        forTypeControlName: FormControl<String>(
            value: pointOfInterestValue?.forType,
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

class ReactiveBookAppointmentFormFormArrayBuilder<
    ReactiveBookAppointmentFormFormArrayBuilderT> extends StatelessWidget {
  const ReactiveBookAppointmentFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveBookAppointmentFormFormArrayBuilderT>? formControl;

  final FormArray<ReactiveBookAppointmentFormFormArrayBuilderT>? Function(
      BookAppointmentFormForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      BookAppointmentFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveBookAppointmentFormFormArrayBuilderT? item,
      BookAppointmentFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBookAppointmentFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveBookAppointmentFormFormArrayBuilderT>(
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

class ReactiveBookAppointmentFormFormFormGroupArrayBuilder<
        ReactiveBookAppointmentFormFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveBookAppointmentFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveBookAppointmentFormFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveBookAppointmentFormFormFormGroupArrayBuilderT>>
      Function(BookAppointmentFormForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      BookAppointmentFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveBookAppointmentFormFormFormGroupArrayBuilderT? item,
      BookAppointmentFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBookAppointmentFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveBookAppointmentFormFormFormGroupArrayBuilderT>[])
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
