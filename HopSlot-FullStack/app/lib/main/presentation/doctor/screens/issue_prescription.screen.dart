import 'package:app/core/constants/enums.dart';
import 'package:app/core/logger/talker.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/core/theme/palette.dart';
import 'package:app/main/domain/forms/prescription_form/prescription.form.dart';
import 'package:app/main/domain/providers/form_providers/forms.providers.dart';
import 'package:app/main/presentation/doctor/controllers/issue_prescription_controller/issue_prescription.controller.dart';
import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/inputs/c_text_field.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_file_picker/reactive_file_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@RoutePage()
class IssuePrescriptionScreen extends ConsumerWidget {
  const IssuePrescriptionScreen({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = Theme.of(context).extension<Palette>();
    final state = ref.watch(issuePrescriptionControllerProvider);
    ref.listen(issuePrescriptionControllerProvider, (previous, next) {
      ref.read(talkerProvider).talker.info(next);
      if (next.isLoading) {
        ref.read(snackBarMessengerProvider.notifier).showSnackBar(
              message: "Issuing prescription.",
              type: SnackbarType.loading,
            );
      } else if (next.hasError) {
        next.showSnackbarOnAppError(context, ref);
      }
    });
    return CScaffold(
      showAppBar: true,
      requireKeyboardPadding: true,
      body: Column(
        children: [
          const Text("Issue Prescription").headline1(),
          Gap(16.h),
          Text("For ${appointment.appointmentStart != null ? DateFormatter.formatDateTime(appointment.appointmentStart!) : ""}")
              .headline1(),
          Gap(32.h),
          PrescriptionFormFormBuilder(
            model: ref.watch(prescriptionFormProvider),
            builder: (ctx, formModel, child) {
              return SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CTextField(
                        formControlName: formModel.bodyControlPath(),
                        placeholder: "Body",
                        maxLines: 5,
                      ),
                      Gap(16.h),
                      CTextField(
                        formControlName: formModel.docSignControlPath(),
                        placeholder: "Your Sign (Full Name)",
                      ),
                      Gap(16.h),
                      SizedBox(
                        height: 200.h,
                        child: ReactiveFilePicker<String>(
                          formControlName: formModel.reportControlPath(),
                          type: FileType.custom,
                          allowedExtensions: const ['pdf'],
                          decoration: InputStyles.primaryText(context).copyWith(
                            hintText: "Report",
                            labelText: "Report",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          filePickerBuilder: (pickImage, files, onChange) {
                            final items = [
                              ...files.files
                                  .asMap()
                                  .map(
                                    (key, value) => MapEntry(
                                      key,
                                      ListTile(
                                        onTap: () {
                                          onChange(files.copyWith(
                                              files:
                                                  List<String>.from(files.files)
                                                    ..removeAt(key)));
                                        },
                                        leading: Icon(
                                          Icons.delete,
                                          color: palette?.secondary
                                              ?.withOpacity(0.8),
                                        ),
                                        title: Text(value),
                                      ),
                                    ),
                                  )
                                  .values,
                              ...files.platformFiles
                                  .asMap()
                                  .map(
                                    (key, value) => MapEntry(
                                      key,
                                      ListTile(
                                        onTap: () {
                                          onChange(
                                            files.copyWith(
                                              platformFiles:
                                                  List<PlatformFile>.from(
                                                      files.platformFiles)
                                                    ..removeAt(key),
                                            ),
                                          );
                                        },
                                        leading: Icon(
                                          Icons.delete,
                                          color: palette?.secondary
                                              ?.withOpacity(0.8),
                                        ),
                                        title: Text(value.name),
                                      ),
                                    ),
                                  )
                                  .values,
                            ];

                            return Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: items.length,
                                    itemBuilder: (_, i) {
                                      return items[i];
                                    },
                                  ),
                                ),
                                CButton(
                                  onPressed: pickImage,
                                  buttonText: "Pick Report File",
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Gap(24.h),
                      CTextField(
                        formControlName: formModel.otherNotesControlPath(),
                        placeholder: "Other Notes",
                        maxLines: 5,
                      ),
                      Gap(32.h),
                      ReactivePrescriptionFormFormConsumer(
                        builder: (cctx, formMode, _) {
                          return CButton(
                            buttonText:
                                state.isLoading ? "Issuing..." : "Issue",
                            onPressed: state.isLoading
                                ? null
                                : () {
                                    formModel.doctorIdValueReset(
                                        appointment.doctorId);
                                    formModel.appointmentIdValueReset(
                                        appointment.id);
                                    formModel.patientIdValueReset(
                                        appointment.patientId);
                                    formModel.submit(onValid: (val) {
                                      _controller(ref).issuePrescription(val,
                                          () {
                                        ref
                                            .read(snackBarMessengerProvider
                                                .notifier)
                                            .showSnackBar(
                                              message: "Issued Prescription.",
                                              type: SnackbarType.success,
                                            );
                                        ref
                                            .read(appRouterProvider)
                                            .popAndPush(const DocHomeRoute());
                                      });
                                    });
                                  },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  IssuePrescriptionController _controller(WidgetRef ref) =>
      ref.read(issuePrescriptionControllerProvider.notifier);
}
