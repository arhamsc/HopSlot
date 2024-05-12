import 'package:app/main/presentation/doctor/controllers/appointment_history_controller/appointment_history.controller.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import "package:flash/flash_helper.dart";

@RoutePage()
class AppointmentHistoryScreen extends ConsumerWidget {
  const AppointmentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appointmentHistoryControllerProvider);
    ref.listen(appointmentHistoryControllerProvider, (previous, next) {
      if (next.hasValue &&
          next.value?.appointmentDetail != null &&
          previous?.value?.appointmentDetail != next.value?.appointmentDetail) {
        final value = next.value!.appointmentDetail!;
        context.showFlash(
          barrierColor: Colors.black54,
          barrierDismissible: true,
          builder: (context, controller) => FadeTransition(
            opacity: controller.controller,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                side: BorderSide(),
              ),
              contentPadding: EdgeInsets.only(
                  left: 24.0.w, top: 16.0.h, right: 24.0.w, bottom: 16.0.h),
              title: Text(DateFormatter.formatDateTime(value.appointmentStart))
                  .headline2(),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Patient Name: ${value.patient.firstName} ${value.patient.lastName}")
                      .body1(),
                  Gap(8.h),
                  Text("Doctor Name: ${value.doctor.firstName} ${value.doctor.lastName}")
                      .body1(),
                  Gap(8.h),
                  Text("Hospital Name: ${value.hospital.name}").body1(),
                  Gap(8.h),
                  Text("Appointment Start Time: ${DateFormatter.formatDateTime(value.appointmentStart)}")
                      .body1(),
                  Gap(8.h),
                  Text("Status: ${value.status}").body1(),
                  Gap(8.h),
                  Text("Delay: ${value.additionalDelay} minutes").body1(),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () async {
                    controller.dismiss();
                    _controller(ref).resetSelectedAppointmentDetail();
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        );
      }
    });
    return CScaffold(
      showAppBar: true,
      appBarTitle: const SizedBox(),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.refresh(appointmentHistoryControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              children: [
                Text("Appointment History").headline1(),
                Gap(24.h),
                Expanded(
                  child: Col2Box(
                    height: double.infinity,
                    title1: "Patient Name",
                    title2: "Date",
                    child: state.when(
                      data: (data) => ListView.builder(
                        itemCount: data.appointmentItems.length,
                        itemBuilder: (context, index) {
                          final current = data.appointmentItems[index];
                          return ListTile(
                            leading: Text(
                                    "${current.patient.firstName} ${current.patient.lastName}")
                                .body1(),
                            trailing: Text(
                              DateFormatter.formatDateTime(
                                  current.appointmentStart),
                            ),
                            onTap: () {
                              _controller(ref)
                                  .fetchSelectedAppointmentDetail(current.id);
                            },
                          );
                        },
                      ),
                      error: (e, __) => Center(
                          child: Text((e as AppException).message).headline2()),
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
                Gap(24.h),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppointmentHistoryController _controller(WidgetRef ref) =>
      ref.read(appointmentHistoryControllerProvider.notifier);
}
