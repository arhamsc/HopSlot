// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'doctor_slot.model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDoctorSlotFormConsumer extends StatelessWidget {
  const ReactiveDoctorSlotFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DoctorSlotForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDoctorSlotForm.of(context);

    if (formModel is! DoctorSlotForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DoctorSlotFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DoctorSlotFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DoctorSlotForm form;
}

class ReactiveDoctorSlotForm extends StatelessWidget {
  const ReactiveDoctorSlotForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final DoctorSlotForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static DoctorSlotForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<DoctorSlotFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DoctorSlotFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DoctorSlotFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DoctorSlotFormInheritedStreamer(
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

extension ReactiveReactiveDoctorSlotFormExt on BuildContext {
  DoctorSlotForm? doctorSlotFormWatch() => ReactiveDoctorSlotForm.of(this);

  DoctorSlotForm? doctorSlotFormRead() =>
      ReactiveDoctorSlotForm.of(this, listen: false);
}

class DoctorSlotFormBuilder extends StatefulWidget {
  const DoctorSlotFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DoctorSlot? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, DoctorSlotForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DoctorSlotForm formModel)?
      initState;

  @override
  _DoctorSlotFormBuilderState createState() => _DoctorSlotFormBuilderState();
}

class _DoctorSlotFormBuilderState extends State<DoctorSlotFormBuilder> {
  late DoctorSlotForm _formModel;

  @override
  void initState() {
    _formModel =
        DoctorSlotForm(DoctorSlotForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DoctorSlotFormBuilder oldWidget) {
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
    return ReactiveDoctorSlotForm(
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

class DoctorSlotForm implements FormModel<DoctorSlot> {
  DoctorSlotForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String doctorIdControlName = "doctorId";

  static const String slotStartTimeControlName = "slotStartTime";

  static const String slotEndTimeControlName = "slotEndTime";

  static const String durationOfPerVisitControlName = "durationOfPerVisit";

  static const String forDayControlName = "forDay";

  static const String statusControlName = "status";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String doctorIdControlPath() => pathBuilder(doctorIdControlName);

  String slotStartTimeControlPath() => pathBuilder(slotStartTimeControlName);

  String slotEndTimeControlPath() => pathBuilder(slotEndTimeControlName);

  String durationOfPerVisitControlPath() =>
      pathBuilder(durationOfPerVisitControlName);

  String forDayControlPath() => pathBuilder(forDayControlName);

  String statusControlPath() => pathBuilder(statusControlName);

  String get _idValue => idControl.value as String;

  String get _doctorIdValue => doctorIdControl.value as String;

  DateTime get _slotStartTimeValue => slotStartTimeControl.value as DateTime;

  DateTime get _slotEndTimeValue => slotEndTimeControl.value as DateTime;

  int get _durationOfPerVisitValue => durationOfPerVisitControl.value as int;

  List<String> get _forDayValue => forDayControl.value as List<String>;

  Status get _statusValue => statusControl.value as Status;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDoctorId {
    try {
      form.control(doctorIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSlotStartTime {
    try {
      form.control(slotStartTimeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSlotEndTime {
    try {
      form.control(slotEndTimeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDurationOfPerVisit {
    try {
      form.control(durationOfPerVisitControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsForDay {
    try {
      form.control(forDayControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsStatus {
    try {
      form.control(statusControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get doctorIdErrors => doctorIdControl.errors;

  Object? get slotStartTimeErrors => slotStartTimeControl.errors;

  Object? get slotEndTimeErrors => slotEndTimeControl.errors;

  Object? get durationOfPerVisitErrors => durationOfPerVisitControl.errors;

  Object? get forDayErrors => forDayControl.errors;

  Object? get statusErrors => statusControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get doctorIdFocus => form.focus(doctorIdControlPath());

  void get slotStartTimeFocus => form.focus(slotStartTimeControlPath());

  void get slotEndTimeFocus => form.focus(slotEndTimeControlPath());

  void get durationOfPerVisitFocus =>
      form.focus(durationOfPerVisitControlPath());

  void get forDayFocus => form.focus(forDayControlPath());

  void get statusFocus => form.focus(statusControlPath());

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorIdValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorIdControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotStartTimeValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotStartTimeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotEndTimeValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotEndTimeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void durationOfPerVisitValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    durationOfPerVisitControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void forDayValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    forDayControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void statusValueUpdate(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statusControl.updateValue(value,
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

  void doctorIdValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorIdControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotStartTimeValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotStartTimeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void slotEndTimeValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    slotEndTimeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void durationOfPerVisitValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    durationOfPerVisitControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void forDayValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    forDayControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void statusValuePatch(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    statusControl.patchValue(value,
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

  void doctorIdValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      doctorIdControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void slotStartTimeValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      slotStartTimeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void slotEndTimeValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      slotEndTimeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void durationOfPerVisitValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      durationOfPerVisitControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void forDayValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      forDayControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void statusValueReset(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      statusControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get doctorIdControl =>
      form.control(doctorIdControlPath()) as FormControl<String>;

  FormControl<DateTime> get slotStartTimeControl =>
      form.control(slotStartTimeControlPath()) as FormControl<DateTime>;

  FormControl<DateTime> get slotEndTimeControl =>
      form.control(slotEndTimeControlPath()) as FormControl<DateTime>;

  FormControl<int> get durationOfPerVisitControl =>
      form.control(durationOfPerVisitControlPath()) as FormControl<int>;

  FormControl<List<String>> get forDayControl =>
      form.control(forDayControlPath()) as FormControl<List<String>>;

  FormControl<Status> get statusControl =>
      form.control(statusControlPath()) as FormControl<Status>;

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

  void doctorIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      doctorIdControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      doctorIdControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void slotStartTimeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      slotStartTimeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      slotStartTimeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void slotEndTimeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      slotEndTimeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      slotEndTimeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void durationOfPerVisitSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      durationOfPerVisitControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      durationOfPerVisitControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void forDaySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      forDayControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      forDayControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void statusSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      statusControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      statusControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DoctorSlot get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'DoctorSlotForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DoctorSlot(
        id: _idValue,
        doctorId: _doctorIdValue,
        slotStartTime: _slotStartTimeValue,
        slotEndTime: _slotEndTimeValue,
        durationOfPerVisit: _durationOfPerVisitValue,
        forDay: _forDayValue,
        status: _statusValue);
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
    required void Function(DoctorSlot model) onValid,
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
    DoctorSlot? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DoctorSlotForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    DoctorSlot? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(DoctorSlot? doctorSlot) => FormGroup({
        idControlName: FormControl<String>(
            value: doctorSlot?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        doctorIdControlName: FormControl<String>(
            value: doctorSlot?.doctorId,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        slotStartTimeControlName: FormControl<DateTime>(
            value: doctorSlot?.slotStartTime,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        slotEndTimeControlName: FormControl<DateTime>(
            value: doctorSlot?.slotEndTime,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        durationOfPerVisitControlName: FormControl<int>(
            value: doctorSlot?.durationOfPerVisit,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        forDayControlName: FormControl<List<String>>(
            value: doctorSlot?.forDay,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        statusControlName: FormControl<Status>(
            value: doctorSlot?.status,
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

class ReactiveDoctorSlotFormArrayBuilder<ReactiveDoctorSlotFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveDoctorSlotFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveDoctorSlotFormArrayBuilderT>? formControl;

  final FormArray<ReactiveDoctorSlotFormArrayBuilderT>? Function(
      DoctorSlotForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DoctorSlotForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveDoctorSlotFormArrayBuilderT? item,
      DoctorSlotForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDoctorSlotForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveDoctorSlotFormArrayBuilderT>(
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

class ReactiveDoctorSlotFormFormGroupArrayBuilder<
    ReactiveDoctorSlotFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveDoctorSlotFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveDoctorSlotFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveDoctorSlotFormFormGroupArrayBuilderT>>
      Function(DoctorSlotForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DoctorSlotForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveDoctorSlotFormFormGroupArrayBuilderT? item,
      DoctorSlotForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDoctorSlotForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveDoctorSlotFormFormGroupArrayBuilderT>[])
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
