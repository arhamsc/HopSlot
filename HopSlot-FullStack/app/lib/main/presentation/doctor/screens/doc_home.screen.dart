import 'package:app/core/constants/enums.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/presentation/doctor/controllers/doc_home_controller/doc_home.controller.dart';
import 'package:app/main/presentation/doctor/widgets/stat_card.widget.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DocHomeScreen extends ConsumerWidget {
  const DocHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(docHomeControllerProvider);
    return CScaffold(
      showAppBar: true,
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(docHomeControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              children: [
                const Text("Dashboard").headline1(),
                Gap(16.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StatCard(
                          label: "Appointments",
                          stat: state.value?.docStats.totalAppointments
                                  .toString() ??
                              "0"),
                      Gap(16.w),
                      StatCard(
                          label: "Patients",
                          stat:
                              state.value?.docStats.totalPatients.toString() ??
                                  "0"),
                      Gap(16.w),
                      StatCard(
                          label: "Prescriptions",
                          stat: state.value?.docStats.totalPrescriptions
                                  .toString() ??
                              "0"),
                    ],
                  ),
                ),
                Gap(48.h),
                const Text("Today's appointments").headline1(),
                Gap(32.h),
                Col2Box(
                  height: 380.h,
                  title1: "Patient Name",
                  title2: "Start Time",
                  child: state.value?.todaysAppointments.isEmpty ?? false
                      ? Center(
                          child: const Text("No appointments").headline2(),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            final currentAppointment =
                                state.value?.todaysAppointments[index];
                            return ListTile(
                              title: Text(
                                "${currentAppointment?.patient?.firstName ?? ""} ${currentAppointment?.patient?.lastName ?? ""}",
                              ),
                              trailing: Text(
                                currentAppointment?.appointmentStart == null
                                    ? "NA"
                                    : DateFormatter.formatDateTime(
                                        currentAppointment!.appointmentStart!),
                              ),
                              onTap: () {
                                if (currentAppointment != null) {
                                  ref.read(appRouterProvider).push(
                                      IssuePrescriptionRoute(
                                          appointment: currentAppointment));
                                } else {
                                  ref
                                      .read(snackBarMessengerProvider.notifier)
                                      .showSnackBar(
                                        message:
                                            "Could not take you to issuing prescription.",
                                        type: SnackbarType.error,
                                      );
                                }
                              },
                            );
                          },
                          itemCount:
                              state.value?.todaysAppointments.length ?? 0,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DocHomeController _controller(WidgetRef ref) =>
      ref.read(docHomeControllerProvider.notifier);
}
