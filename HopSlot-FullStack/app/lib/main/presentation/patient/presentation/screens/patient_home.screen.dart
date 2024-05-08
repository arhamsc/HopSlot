import 'package:app/shared/presentation/shared/widgets/layout/scaffold.layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CScaffold(body: Center(child: Text('Patient Home')));
  }
}
