import 'package:app/main/presentation/patient/controllers/patient_home_controller/patient_home.controller.dart';
import 'package:app/main/presentation/patient/widgets/appointment_list.widget.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class PatientHomeScreen extends HookConsumerWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(patientHomeControllerProvider);

    useEffect(() {
      Future.delayed(Duration.zero, () {
        _controller(ref).fetchAppointments();
      });
      return () {};
    }, []);

    return CScaffold(
      showAppBar: true,
      body: RefreshIndicator(
        onRefresh: () async {
          await _controller(ref).fetchAppointments();
        },
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
                ),
                Gap(48.h),
                const Text('Past Appointments').headline1(),
                Gap(24.h),
                Expanded(
                  child: AppointmentList(
                    appointments: state.value?.pastAppointments ?? [],
                    emptyMessage: "No past appointments",
                    expandHeight: true,
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
