import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/core/theme/palette.dart';
import 'package:app/main/presentation/doctor/controllers/my_slots_controller/my_slots.controller.dart';
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MyDocSlotsScreen extends ConsumerWidget {
  const MyDocSlotsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mySlotsControllerProvider);
    final palette = Theme.of(context).extension<Palette>();
    return CScaffold(
      showAppBar: true,
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(mySlotsControllerProvider.future),
        child: Stack(
          children: [
            ListView(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("My Slots").headline1(),
                Gap(32.h),
                CButton(
                    buttonText: "Create new slot",
                    onPressed: () {
                      ref.read(appRouterProvider).push(
                            EditSlotRoute(
                                doctorSlot: DoctorSlot.empty(), isEdit: false),
                          );
                    }),
                Gap(16.h),
                Expanded(
                  child: state.when(
                    data: (data) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final currentSlot = data.mySlots[index];

                          return ExpansionTile(
                            title: Text(
                              "${DateFormatter.formatTime(currentSlot.slotStartTime)} - ${DateFormatter.formatTime(currentSlot.slotEndTime)}",
                            ).body1(isBold: true),
                            subtitle: Text(
                              currentSlot.forDay.join(", "),
                            ).body2(),
                            children: [
                              Text("Duration per visit: ${currentSlot.durationOfPerVisit} minutes")
                                  .body2(),
                              Gap(16.h),
                              Text("Status: ${currentSlot.status.name}")
                                  .body2(),
                              Gap(24.h),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: TextButton.icon(
                                  onPressed: () {
                                    ref.read(appRouterProvider).push(
                                          EditSlotRoute(
                                            doctorSlot: currentSlot,
                                            isEdit: true,
                                          ),
                                        );
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: palette?.secondary,
                                  ),
                                  label: const Text(
                                    "Edit",
                                  ).body2(color: palette?.secondary),
                                ),
                              )
                            ],
                          );
                        },
                        itemCount: data.mySlots.length,
                      );
                    },
                    error: (error, _) {
                      return Center(
                        child: Text(
                          (error is AppException)
                              ? error.message
                              : "An error occurred, please refresh.",
                        ),
                      );
                    },
                    loading: () {
                      return SizedBox(
                        height: 48.h,
                        width: 48.w,
                        child: CircularProgressIndicator(
                          color: palette?.secondary,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  MySlotsController _controller(WidgetRef ref) =>
      ref.read(mySlotsControllerProvider.notifier);
}
