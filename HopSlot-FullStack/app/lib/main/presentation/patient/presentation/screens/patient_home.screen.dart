import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/buttons/button.ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class PatientHomeScreen extends ConsumerWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CScaffold(
      body: Center(
        child: CButton(
          buttonText: 'Logout',
          onPressed: () async {
            await ref.read(logoutUCProvider).call();
          },
        ),
      ),
    );
  }
}
