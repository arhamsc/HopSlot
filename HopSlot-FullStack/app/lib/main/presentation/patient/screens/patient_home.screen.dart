import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/main/presentation/patient/controllers/patient_home_controller/patient_home.controller.dart';
import 'package:app/main/presentation/patient/widgets/appointment_list.widget.dart';
import 'package:app/shared/presentation/widgets/functional/appointment_detail_dialog.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:app/utils/show_snack_bar_on_loading.ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class PatientHomeScreen extends ConsumerWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(patientHomeControllerProvider);

    ref.listen(patientHomeControllerProvider, (_, next) {
      next.showSnackbarOnAppError(context, ref);
      next.showSnackbarOnLoading(context, ref);
    });

    final selectedSate = ref.watch(patientHomeControllerProvider
        .selectAsync((value) => value.selectedAppointment));

    selectedSate.then((value) {
      if (value == null || state.isLoading) return;

      context.showFlash(
        barrierColor: Colors.black54,
        barrierDismissible: true,
        builder: (context, controller) => FadeTransition(
          opacity: controller.controller,
          child: AppointmentDetailAlertDialog(
            value: value,
            controller: controller,
            actions: [
              if (state.value?.activeType == "upcoming")
                TextButton(
                  onPressed: () async {
                    await controller.dismiss();
                    _controller(ref).cancelAppointment(
                      value.id,
                    );
                  },
                  child: const Text('Cancel')
                      .body2(color: Colors.red, isMedium: true),
                ),
              if (value.status == EAppointmentStatus.completed)
                TextButton(
                  onPressed: () async {
                    await controller.dismiss();
                    _controller(ref).resetSelectedAppointmentDetail();
                    ref.read(appRouterProvider).push(
                          MyPrescriptionRoute(
                            appointmentDetail: value,
                          ),
                        );
                  },
                  child: const Text('Prescription').body2(isMedium: true),
                ),
            ],
            onDismiss: () {
              _controller(ref).resetSelectedAppointmentDetail();
            },
          ),
        ),
      );
    });

    return CScaffold(
      showAppBar: true,
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(patientHomeControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Upcoming Appointments').headline1(),
                Gap(24.h),
                AppointmentList(
                  appointments: state.value?.upcomingAppointments ?? [],
                  emptyMessage: "No upcoming appointments",
                  onAppointmentTap: (id) {
                    _controller(ref).onAppointmentClick(id, "upcoming");
                  },
                ),
                Gap(48.h),
                const Text('Past Appointments').headline1(),
                Gap(24.h),
                Expanded(
                  child: AppointmentList(
                    appointments: state.value?.pastAppointments ?? [],
                    emptyMessage: "No past appointments",
                    expandHeight: true,
                    onAppointmentTap: (id) {
                      _controller(ref).onAppointmentClick(id, "past");
                    },
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

  PatientHomeController _controller(WidgetRef ref) =>
      ref.read(patientHomeControllerProvider.notifier);
}
