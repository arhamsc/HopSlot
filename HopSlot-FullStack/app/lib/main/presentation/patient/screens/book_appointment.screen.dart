import 'package:app/core/constants/enums.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/core/theme/palette.dart';
import 'package:app/main/presentation/patient/controllers/book_appointment_controller/book_appointment.controller.dart';
import 'package:app/main/presentation/patient/forms/book_appointment_form/book_appointment.form.dart';
import 'package:app/main/presentation/patient/providers/form_providers/forms.providers.dart';
import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/shared/domain/models/entities/point_of_interest_value/point_of_interest_value.model.dart';
import 'package:app/shared/domain/models/helpers/look_up_response/look_up_response.model.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_dropdown_multi_search_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_dropdown_search_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:app/shared/presentation/widgets/utility/styles/variants.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@RoutePage()
class BookAppointmentScreen extends ConsumerWidget {
  const BookAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookAppointmentControllerProvider);
    final palette = Theme.of(context).extension<Palette>();
    ref.listen(bookAppointmentControllerProvider, (previous, next) {
      next.showSnackbarOnAppError(context, ref);
    });
    return CScaffold(
      showAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: const Text('Book Appointment').headline1(),
            ),
            Gap(32.h),
            BookAppointmentFormFormBuilder(
              model: ref.watch(bookAppointmentFormProvider),
              builder: (context, form, _) {
                return Column(
                  children: [
                    CDropdownSearchField<LookUpResponse>(
                      formControlName: form.hospitalControlPath(),
                      items: state.value?.hospitalItems ?? [],
                      itemAsString: (item) => item.name,
                      label: "Hospital",
                      searchFieldLabel: 'Select Hospital',
                      onChange: (value) {
                        _controller(ref).fetchDoctors(value.id);
                      },
                    ),
                    Gap(16.h),
                    CDropdownSearchField<LookUpResponse>(
                      formControlName: form.doctorControlPath(),
                      items: state.value?.doctorItems ?? [],
                      itemAsString: (item) => item.name,
                      label: "Doctor",
                      searchFieldLabel: 'Select Doctor',
                      onChange: (value) {},
                    ),
                    Gap(16.h),
                    CDropdownMultiSearchField<LookUpResponse>(
                      formControlName: form.selectedSymptomsControlPath(),
                      label: "Symptoms",
                      showSearchBox: true,
                      searchFieldLabel: "Search Symptoms",
                      asyncItems: (query) =>
                          _controller(ref).fetchBinarySymptoms(query),
                      itemAsString: (item) => item.name,
                      onItemAdded: (list, item) {
                        final newList =
                            _controller(ref).onAddSymptom(list, item);
                        form.symptomsValueUpdate(newList);
                      },
                      onItemRemoved: (list, item) {
                        // Remove the item and its dependents
                        final updatedList =
                            _controller(ref).onRemoveSymptom(list, item);
                        form.symptomsClear();
                        form.symptomsValueUpdate(updatedList);
                      },
                      fieldText: (length) => "Selected $length symptom(s)",
                    ),
                    Gap(32.h),
                    Container(
                      decoration: BoxDecoration(
                        color: palette?.quaternary?.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      padding: EdgeInsets.all(16.w),
                      child: ReactiveBookAppointmentFormFormConsumer(
                        builder: (_, form, __) => ReactiveFormArray<
                                Map<String, Object?>>(
                            formArrayName: form.symptomsControlPath(),
                            builder: (context, formArray, child) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: formArray.controls
                                    .asMap()
                                    .map((i, symptom) {
                                      return MapEntry(
                                        i,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(symptom.value?['question']
                                                    as String)
                                                .headline2(),
                                            Gap(16.h),
                                            if ((symptom.value?["dataType"]
                                                    as String) ==
                                                "M")
                                              CDropdownMultiSearchField<String>(
                                                items: (symptom.value?[
                                                            "possibleValues"]
                                                        as List<
                                                            PointOfInterestValue>)
                                                    .map((e) => e.name)
                                                    .toList(),
                                                formControlName: "$i.values",
                                                label: "Select pain points",
                                                searchFieldLabel: "Pain Point",
                                                itemAsString: (item) => (symptom
                                                                .value?[
                                                            "possibleValues"]
                                                        as List<
                                                            PointOfInterestValue>)
                                                    .firstWhere((element) =>
                                                        element.name == item)
                                                    .value,
                                                showSearchBox: true,
                                                fieldText: (length) =>
                                                    "Selected $length place(s)",
                                              )
                                            else if ((symptom.value?["dataType"]
                                                    as String) ==
                                                "C")
                                              CDropdownSearchField<
                                                  List<String>>(
                                                formControlName: "$i.values",
                                                label: "Pain Level",
                                                searchFieldLabel:
                                                    symptom.value?['question']
                                                        as String,
                                                showSearchBox: false,
                                                items: List.generate(
                                                  11,
                                                  (index) => [index.toString()],
                                                ),
                                              )
                                            else
                                              TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.check_circle,
                                                  color: palette?.secondary,
                                                ),
                                                label:
                                                    const Text("Yes").body1(),
                                              ),
                                            Gap(32.h),
                                          ],
                                        ),
                                      );
                                    })
                                    .values
                                    .toList(),
                              );
                            }),
                      ),
                    ),
                    Gap(32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Select Date").body1(isMedium: true),
                              ReactiveDateTimePicker(
                                formControlName: form.dateControlPath(),
                                decoration: InputStyles.primaryText(context),
                                fieldLabelText: "Select Date",
                                fieldHintText: "Select Date",
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 10)),
                                timePickerEntryMode:
                                    TimePickerEntryMode.dialOnly,
                                datePickerEntryMode:
                                    DatePickerEntryMode.calendarOnly,
                                type: ReactiveDatePickerFieldType.dateTime,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CButton(
                            buttonText: "Find Slots",
                            onPressed: () {
                              final date = form.dateControl?.value;
                              final doctor = form.doctorControl?.value;
                              if (date == null || doctor == null) {
                                ref
                                    .read(snackBarMessengerProvider.notifier)
                                    .showSnackBar(
                                      message:
                                          "Please choose both the doctor and desired date.",
                                      type: SnackbarType.warning,
                                    );
                                return;
                              }
                              _controller(ref).fetchSlots(
                                doctor.id,
                                date,
                              );
                              ref
                                  .read(snackBarMessengerProvider.notifier)
                                  .showSnackBar(
                                    message:
                                        "Found available slots, please choose one.",
                                    type: SnackbarType.success,
                                  );
                            },
                            variant: ButtonVariants.inverted,
                          ),
                        ),
                      ],
                    ),
                    Gap(16.h),
                    CDropdownSearchField<DoctorSlot>(
                      formControlName: form.slotControlPath(),
                      label: "Select suitable slot",
                      searchFieldLabel: "",
                      showSearchBox: false,
                      items: state.value?.availableSlots ?? [],
                      itemAsString: (item) =>
                          "${DateFormatter.formatTime(item.slotStartTime)} To ${DateFormatter.formatTime(item.slotEndTime)}",
                    ),
                    Gap(32.h),
                    ReactiveBookAppointmentFormFormConsumer(
                      builder: (context, form, _) {
                        return CButton(
                          onPressed: () {
                            form.submit(onNotValid: () {
                              form.form.markAllAsTouched();
                              ref
                                  .read(snackBarMessengerProvider.notifier)
                                  .showSnackBar(
                                    message: "Please provide all the details.",
                                    type: SnackbarType.warning,
                                  );
                            }, onValid: (value) {
                              _controller(ref).bookAppointment(value, () {
                                ref
                                    .read(snackBarMessengerProvider.notifier)
                                    .showSnackBar(
                                      message:
                                          "Successfully booked the appointment.",
                                      type: SnackbarType.success,
                                    );

                                form.reset();
                                ref
                                    .read(appRouterProvider)
                                    .push(const PatientHomeRoute());
                              });
                            });
                          },
                          buttonText: "Book Appointment",
                        );
                      },
                    ),
                    Gap(32.h),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  BookAppointmentController _controller(WidgetRef ref) {
    return ref.read(bookAppointmentControllerProvider.notifier);
  }
}
