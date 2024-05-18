import 'package:app/main/presentation/doctor/controllers/appointment_history_controller/appointment_history.controller.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/functional/appointment_detail_dialog.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:app/utils/show_snack_bar_on_loading.ext.dart';
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

    ref.listen(appointmentHistoryControllerProvider, (_, next) {
      next.showSnackbarOnAppError(context, ref);
      next.showSnackbarOnLoading(context, ref);
    });

    final selectedSate = ref.watch(appointmentHistoryControllerProvider
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
        onRefresh: () =>
            ref.refresh(appointmentHistoryControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              children: [
                const Text("Appointment History").headline1(),
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
