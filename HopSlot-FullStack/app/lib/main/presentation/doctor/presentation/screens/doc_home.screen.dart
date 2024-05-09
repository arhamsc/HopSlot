import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DocHomeScreen extends StatelessWidget {
  const DocHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CScaffold(body: Center(child: Text('Doctor Home')));
  }
}
