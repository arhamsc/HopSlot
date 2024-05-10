import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/presentation/widgets/2_col_box.widget.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:flutter/material.dart';

class AppointmentList extends StatelessWidget {
  const AppointmentList({
    super.key,
    required this.appointments,
    this.emptyMessage,
    this.expandHeight,
  });

  final List<Appointment> appointments;
  final String? emptyMessage;
  final bool? expandHeight;

  @override
  Widget build(BuildContext context) {
    return Col2Box(
      title1: 'Date',
      title2: 'Status',
      expandHeight: expandHeight,
      child: appointments.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                final currentAppointment = appointments[index];
                return ListTile(
                  title: Text(
                    currentAppointment.appointmentStart == null
                        ? "NA"
                        : DateFormatter.formatDate(
                            currentAppointment.appointmentStart!),
                  ),
                  trailing: Text(
                    currentAppointment.status.name.toUpperCase(),
                  ),
                  onTap: () {},
                );
              },
              itemCount: appointments.length ?? 0,
            )
          : Center(
              child: Text(emptyMessage ?? 'No appointments').body1(
                isMedium: true,
              ),
            ),
    );
  }
}
