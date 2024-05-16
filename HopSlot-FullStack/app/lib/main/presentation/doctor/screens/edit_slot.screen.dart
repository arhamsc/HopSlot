import 'package:app/core/constants/enums.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/main/presentation/doctor/controllers/edit_slot_controller/edit_slot.controller.dart';
import 'package:app/main/domain/enums/status/status.enum.dart';
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_date_time_picker.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_dropdown_multi_search_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_dropdown_search_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_text_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';

@RoutePage()
class EditSlotScreen extends ConsumerWidget {
  const EditSlotScreen({
    super.key,
    required this.doctorSlot,
    required this.isEdit,
  });

  final DoctorSlot doctorSlot;
  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(editSlotControllerProvider(slot: doctorSlot, isEdit: isEdit));
    ref.listen(editSlotControllerProvider(slot: doctorSlot, isEdit: isEdit),
        (previous, next) {
      if (next.isLoading) {
        ref.read(snackBarMessengerProvider.notifier).showSnackBar(
              message: "Please wait..",
              type: SnackbarType.loading,
            );
      } else {
        next.showSnackbarOnAppError(context, ref);
      }
    });
    return CScaffold(
      showAppBar: true,
      requireKeyboardPadding: true,
      body: Column(
        children: [
          Text((state.value?.isEdit ?? false) ? "Edit Slot" : "Create new slot")
              .headline2(),
          const Text("Time in 24 hrs").body2(),
          Gap(32.h),
          Expanded(
            child: DoctorSlotFormBuilder(
              model: state.value != null
                  ? DoctorSlot.fromJson(state.value?.doctorSlot?.toJson() ?? {})
                  : null,
              builder: (context, formModel, _) {
                return Column(
                  children: [
                    CDateTimePicker(
                      formControlName: formModel.slotStartTimeControlPath(),
                      label: "Start Time",
                      datePickerFieldType: ReactiveDatePickerFieldType.time,
                    ),
                    Gap(16.h),
                    CDateTimePicker(
                      formControlName: formModel.slotEndTimeControlPath(),
                      label: "End Time",
                      datePickerFieldType: ReactiveDatePickerFieldType.time,
                    ),
                    Gap(48.h),
                    CTextField(
                      formControlName:
                          formModel.durationOfPerVisitControlPath(),
                      placeholder: "Duration of visit",
                    ),
                    Gap(16.h),
                    CDropdownMultiSearchField(
                      formControlName: formModel.forDayControlPath(),
                      items: const [
                        "mon",
                        "tue",
                        "wed",
                        "thurs",
                        "fri",
                        "sat",
                        "sun",
                      ],
                      label: "For days",
                      searchFieldLabel: "",
                      showSearchBox: false,
                    ),
                    Gap(16.h),
                    CDropdownSearchField<Status>(
                      formControlName: formModel.statusControlPath(),
                      items: Status.values,
                      label: "Status",
                      searchFieldLabel: "",
                      showSearchBox: false,
                      itemAsString: (item) => item.name.toUpperCase(),
                    ),
                    const Spacer(),
                    CButton(
                      buttonText: (state.value?.isEdit ?? true)
                          ? "Edit it"
                          : "Create new",
                      onPressed: () {
                        if (!isEdit) {
                          formModel.doctorIdSetDisabled(true);
                        }
                        formModel.submit(onNotValid: () {
                          ref
                              .read(snackBarMessengerProvider.notifier)
                              .showSnackBar(
                                message: formModel.form.errors.toString(),
                                type: SnackbarType.warning,
                              );
                        }, onValid: (val) {
                          if (!formModel.form.touched) {
                            ref
                                .read(snackBarMessengerProvider.notifier)
                                .showSnackBar(
                                  message: "You have'nt changed anything",
                                  type: SnackbarType.warning,
                                );
                            return;
                          }
                          if (state.value == null) {
                            ref
                                .read(snackBarMessengerProvider.notifier)
                                .showSnackBar(
                                  message: "Cannot create/edit slot",
                                  type: SnackbarType.error,
                                );
                            return;
                          }
                          if (state.value!.isEdit) {
                            _controller(ref, doctorSlot, isEdit).editSlot(val,
                                () {
                              ref
                                  .read(snackBarMessengerProvider.notifier)
                                  .showSnackBar(
                                    message: "Edited the slot successfully",
                                    type: SnackbarType.success,
                                  );
                              ref.read(appRouterProvider).maybePop();
                            });
                          } else {
                            _controller(ref, doctorSlot, isEdit).createSlot(val,
                                () {
                              ref
                                  .read(snackBarMessengerProvider.notifier)
                                  .showSnackBar(
                                    message: "Created the slot successfully",
                                    type: SnackbarType.success,
                                  );
                              ref.read(appRouterProvider).maybePop();
                            });
                          }
                        });
                      },
                    ),
                    Gap(32.h),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  EditSlotController _controller(WidgetRef ref, DoctorSlot? slot, bool isEdit) {
    return ref
        .read(editSlotControllerProvider(slot: slot, isEdit: isEdit).notifier);
  }
}
