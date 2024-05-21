import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/main/presentation/patient/controllers/all_appointments_controller/all_appointments.controller.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/functional/appointment_detail_dialog.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:app/utils/show_snack_bar_on_loading.ext.dart';
import 'package:auto_route/annotations.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AllAppointmentsScreen extends HookConsumerWidget {
  const AllAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allAppointmentsControllerProvider);

    ref.listen(allAppointmentsControllerProvider, (_, next) {
      next.showSnackbarOnAppError(context, ref);
      next.showSnackbarOnLoading(context, ref);
    });

    final selectedSate = ref.watch(allAppointmentsControllerProvider
        .selectAsync((value) => value.appointmentDetail));

    selectedSate.then((val) {
      if (val == null || state.isLoading) {
        return;
      }
      context.showFlash(
        barrierColor: Colors.black54,
        barrierDismissible: true,
        builder: (context, controller) => FadeTransition(
          opacity: controller.controller,
          child: AppointmentDetailAlertDialog(
            value: val,
            controller: controller,
            actions: [
              if (val.status == EAppointmentStatus.completed)
                TextButton(
                  onPressed: () async {
                    await controller.dismiss();
                    _controller(ref).resetSelectedAppointmentDetail();
                    ref.read(appRouterProvider).push(
                          MyPrescriptionRoute(
                            appointmentDetail: val,
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
        onRefresh: () => ref.refresh(allAppointmentsControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              children: [
                const Text("All Appointment").headline1(),
                Gap(24.h),
                Expanded(
                  child: Col2Box(
                    height: double.infinity,
                    title1: "Doctor Name",
                    title2: "Date",
                    child: state.when(
                      data: (data) => ListView.builder(
                        itemCount: data.appointmentItems.length,
                        itemBuilder: (context, index) {
                          final current = data.appointmentItems[index];
                          return ListTile(
                            title: Text(
                                    "${current.doctor.firstName} ${current.doctor.lastName}")
                                .body1(),
                            trailing: Text(
                              DateFormatter.formatDateTime(
                                  current.appointmentStart),
                            ),
                            subtitle: Text(current.status.name).body3(),
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

  AllAppointmentsController _controller(WidgetRef ref) =>
      ref.read(allAppointmentsControllerProvider.notifier);
}
