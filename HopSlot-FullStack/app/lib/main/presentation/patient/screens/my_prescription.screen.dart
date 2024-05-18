import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/main/presentation/patient/controllers/my_prescription_controller/my_prescription.controller.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/functional/prescription_detail_dialog.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:auto_route/annotations.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

@RoutePage()
class MyPrescriptionScreen extends ConsumerWidget {
  const MyPrescriptionScreen({super.key, required this.appointmentDetail});

  final AppointmentDetail appointmentDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      myPrescriptionControllerProvider(
        appointmentDetail: appointmentDetail,
      ),
    );
    // state.showSnackbarOnAppError(context, ref);
    // state.showSnackbarOnLoading(context, ref);

    final selectedPrescriptionSate = ref.watch(myPrescriptionControllerProvider(
      appointmentDetail: appointmentDetail,
    ).selectAsync((value) => value.selectedPrescription));

    selectedPrescriptionSate.then((val) {
      if (val == null) {
        return;
      }
      context.showFlash(
        barrierColor: Colors.black54,
        barrierDismissible: true,
        builder: (context, controller) => FadeTransition(
          opacity: controller.controller,
          child: PrescriptionDetailAlertDialog(
            value: val,
            controller: controller,
            actions: [
              if (val.reports.isNotEmpty)
                TextButton(
                  onPressed: () async {
                    await launchUrlString(val.reports[0].reportSecureUrl);
                  },
                  child: const Text('Download Report').body2(isMedium: true),
                ),
            ],
            onDismiss: () {
              _controller(ref, appointmentDetail).closeDetails();
            },
          ),
        ),
      );
    });

    return CScaffold(
      showAppBar: true,
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          myPrescriptionControllerProvider(
            appointmentDetail: appointmentDetail,
          ).future,
        ),
        child: Stack(
          children: [
            ListView(),
            Column(
              children: [
                Center(
                  child: const Text('My Prescription').headline1(),
                ),
                Gap(32.h),
                Text('For appointment on ${appointmentDetail.appointmentStart.toLocal()}')
                    .body1(isBold: true),
                Text('Doctor: ${appointmentDetail.doctor.firstName} ${appointmentDetail.doctor.lastName}')
                    .body1(isBold: true),
                Text('Hospital: ${appointmentDetail.hospital.name}')
                    .body1(isBold: true),
                Gap(24.h),
                Expanded(
                  child: Col2Box(
                    height: double.infinity,
                    title1: "Date",
                    title2: "Reports",
                    child: state.maybeWhen(
                      orElse: () => const SizedBox(),
                      data: (data) {
                        return Expanded(
                          child: ListView.separated(
                            itemCount: data.prescriptions.length ?? 0,
                            itemBuilder: (context, index) {
                              final currentPrescription =
                                  data.prescriptions[index];
                              return ListTile(
                                title: Text(
                                  DateFormatter.formatDateTime(
                                    currentPrescription.issueDate,
                                  ),
                                ).body1(isBold: true),
                                trailing: Text(
                                  "Reports: ${currentPrescription.reports.length}",
                                ),
                                onTap: () {
                                  _controller(ref, appointmentDetail)
                                      .showDetails(currentPrescription.id);
                                },
                              );
                            },
                            separatorBuilder: (context, index) => Gap(16.h),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  MyPrescriptionController _controller(WidgetRef ref, AppointmentDetail appD) =>
      ref.read(
          myPrescriptionControllerProvider(appointmentDetail: appD).notifier);
}
