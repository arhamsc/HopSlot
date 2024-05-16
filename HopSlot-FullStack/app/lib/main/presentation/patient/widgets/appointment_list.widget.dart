import 'package:app/core/theme/palette.dart';
import 'package:app/main/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/main/domain/entities/appointment/appointment.model.dart';
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
    this.onAppointmentTap,
  });

  final List<Appointment> appointments;
  final String? emptyMessage;
  final bool? expandHeight;
  final Function(String id)? onAppointmentTap;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    return Col2Box(
      title1: 'Date',
      title2: 'Status',
      expandHeight: expandHeight,
      child: appointments.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                final currentAppointment = appointments[index];
                final selected =
                    currentAppointment.status == EAppointmentStatus.completed;
                final cancelled =
                    currentAppointment.status == EAppointmentStatus.cancelled;
                return Card(
                  elevation: 0,
                  color: selected
                      ? palette?.secondary?.withOpacity(0.5)
                      : cancelled
                          ? Colors.red.shade200
                          : palette?.primary,
                  child: ListTile(
                    title: Text(
                      currentAppointment.appointmentStart == null
                          ? "NA"
                          : DateFormatter.formatDate(
                              currentAppointment.appointmentStart!,
                            ),
                    ),
                    trailing: Text(
                      currentAppointment.status.name.toUpperCase(),
                    ),
                    onTap: () {
                      onAppointmentTap?.call(currentAppointment.id);
                    },
                  ),
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
