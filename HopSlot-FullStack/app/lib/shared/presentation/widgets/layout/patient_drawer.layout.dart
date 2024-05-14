import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/core/theme/palette.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/title.typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDrawer extends ConsumerWidget {
  const PatientDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = Theme.of(context).extension<Palette>();
    final user = ref.watch(userNotifierProvider);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: palette?.secondary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi,',
                ).title1(color: palette?.primary),
                Text(
                  '${user.firstName} ${user.lastName}',
                ).headline1(color: palette?.primary),
                Text(
                  user.username,
                ).headline2(color: palette?.primary)
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_filled,
              size: 32.sp,
              color: palette?.secondary,
            ),
            title: const Text('Home').body1(isMedium: true),
            onTap: () {
              ref.read(appRouterProvider).pushAndPopUntil(
                    const PatientHomeRoute(),
                    predicate: (route) =>
                        route.settings.name == PatientHomeRoute.name,
                  );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.edit_calendar,
              size: 32.sp,
              color: palette?.secondary,
            ),
            title: const Text('Book appointment').body1(isMedium: true),
            onTap: () {
              ref.read(appRouterProvider).push(const BookAppointmentRoute());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 32.sp,
              color: palette?.secondary,
            ),
            title: const Text('Profile').body1(isMedium: true),
            onTap: () {
              ref.read(appRouterProvider).push(const ProfileRoute());
            },
          ),
          Divider(
            color: palette?.secondary?.withOpacity(0.8),
            thickness: 2,
          ),
          CButton(
            buttonText: "Logout",
            onPressed: () {
              ref.read(logoutUCProvider).call();
            },
          ),
        ],
      ),
    );
  }
}
