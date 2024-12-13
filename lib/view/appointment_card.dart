import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String patientName;
  final String time;
  final String date;
  final String status;

  const AppointmentCard({
    Key? key,
    required this.patientName,
    required this.time,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(patientName),
        subtitle: Text("$date at $time"),
        trailing: Text(
          status,
          style: TextStyle(
            color: status == "Confirmed" ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
