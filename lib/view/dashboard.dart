import 'package:appointmennt_booking_system/view/DashboardCard.dart';
import 'package:appointmennt_booking_system/view/appointment_card.dart';
import 'package:appointmennt_booking_system/view/quick_Action.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Placeholder for profile image
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Message
            Text(
              "Welcome Back, Dr. John!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Statistics Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardCard(
                  title: "Total Appointments",
                  value: "120",
                  icon: Icons.event_note,
                  color: Colors.blueAccent,
                ),
                DashboardCard(
                  title: "Upcoming",
                  value: "8",
                  icon: Icons.calendar_today,
                  color: Colors.green,
                ),
                DashboardCard(
                  title: "Canceled",
                  value: "5",
                  icon: Icons.cancel,
                  color: Colors.redAccent,
                ),
              ],
            ),
            SizedBox(height: 16),

            // Quick Actions
            Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                QuickActionButton(
                  label: "Add Appointment",
                  icon: Icons.add,
                  onPressed: () {
                    // Navigate to add appointment screen
                  },
                ),
                QuickActionButton(
                  label: "View Calendar",
                  icon: Icons.calendar_month,
                  onPressed: () {
                    // Navigate to calendar screen
                  },
                ),
                QuickActionButton(
                  label: "Manage Availability",
                  icon: Icons.schedule,
                  onPressed: () {
                    // Navigate to availability management
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Appointment List
            Text(
              "Upcoming Appointments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with dynamic data
                itemBuilder: (context, index) {
                  return AppointmentCard(
                    patientName: "Patient ${index + 1}",
                    time: "10:00 AM",
                    date: "Dec 14, 2024",
                    status: "Confirmed",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
