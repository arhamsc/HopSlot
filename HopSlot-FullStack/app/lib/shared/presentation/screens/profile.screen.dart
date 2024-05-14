import 'package:app/core/constants/enums.dart';
import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/controllers/profile_controller/profile.controller.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = Theme.of(context).extension<Palette>();
    final state = ref.watch(profileControllerProvider);

    ref.listen(profileControllerProvider, (previous, next) {
      if (next.isLoading) {
        ref.read(snackBarMessengerProvider.notifier).showSnackBar(
            message: "Updating location.", type: SnackbarType.loading);
        return;
      }
      next.showSnackbarOnAppError(context, ref);
    });
    return CScaffold(
      showAppBar: true,
      extendBodyBehindAppBar: true,
      noHorizontalPadding: true,
      body: Column(
        children: [
          Container(
            color: palette?.secondary,
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight * 0.50,
            padding: EdgeInsets.symmetric(vertical: 48.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.r),
                  ),
                  child: SvgPicture.asset(
                    "assets/avatars/avatar_1_o.svg",
                    width: 200.w,
                    height: 200.w,
                  ),
                ),
                Gap(16.h),
                Text("${state.value?.user.firstName} ${state.value?.user.lastName}")
                    .headline2(),
                Gap(8.h),
                Text("${state.value?.user.username}").headline3(),
                Gap(16.h),
                Wrap(
                  spacing: 25.w,
                  children: [
                    Text("${state.value?.user.email}").body1(isBold: true),
                    Text("${state.value?.user.role}").body1(isBold: true),
                  ],
                ),
              ],
            ),
          ),
          Gap(32.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: state.maybeWhen(
                  orElse: () => [],
                  data: (data) {
                    if (data.user.role == "PATIENT") {
                      return [
                        ListTile(
                          leading: const Text("Age").body1(isBold: true),
                          trailing:
                              Text("${state.value?.patient?.age}").body1(),
                        ),
                      ];
                    } else if (data.user.role == "DOCTOR") {
                      return [
                        const Text("Cabin Information").headline3(),
                        ListTile(
                          leading: const Text("Number").body1(isBold: true),
                          trailing: Text("${state.value?.doctor?.cabinNumber}")
                              .body1(),
                        ),
                        Gap(16.h),
                        ListTile(
                          leading: const Text("Floor").body1(isBold: true),
                          trailing: Text("${state.value?.doctor?.cabinFloor}")
                              .body1(),
                        ),
                        const Spacer(),
                        CButton(
                          buttonText: "Update my location",
                          onPressed: () async {
                            _controller(ref).updateDocRoomLoc(() {
                              ref
                                  .read(snackBarMessengerProvider.notifier)
                                  .showSnackBar(
                                    message: "Updated location.",
                                    type: SnackbarType.success,
                                  );
                            });
                          },
                        ),
                        Gap(32.h),
                      ];
                    } else {
                      return [];
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ProfileController _controller(WidgetRef ref) =>
      ref.read(profileControllerProvider.notifier);
}
