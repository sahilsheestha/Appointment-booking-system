import 'package:appointmennt_booking_system/view/DashboardCard.dart';
import 'package:appointmennt_booking_system/view/appointment_card.dart';
import 'package:appointmennt_booking_system/view/quick_Action.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Dashboard",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: PopupMenuButton<String>(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150'), // Replace with actual image
              ),
              onSelected: (value) {
                // Handle profile menu actions
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Profile",
                  child: Text("Profile"),
                ),
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  value: "Logout",
                  child: Text("Logout"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.blue.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Message
              Text(
                "Welcome Back, Dr. John!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                ),
              ),
              SizedBox(height: 20),

              // Statistics Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to detailed stats
                      },
                      child: DashboardCard(
                        title: "Total Appointments",
                        value: "120",
                        icon: Icons.event_note,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to upcoming appointments
                      },
                      child: DashboardCard(
                        title: "Upcoming",
                        value: "8",
                        icon: Icons.calendar_today,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to canceled appointments
                      },
                      child: DashboardCard(
                        title: "Canceled",
                        value: "5",
                        icon: Icons.cancel,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Quick Actions
              Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionButton(
                    label: "Add Appointment",
                    icon: Icons.add_circle,
                    onPressed: () {
                      // Navigate to add appointment
                    },
                  ),
                  QuickActionButton(
                    label: "View Calendar",
                    icon: Icons.calendar_today_outlined,
                    onPressed: () {
                      // Navigate to calendar
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
              SizedBox(height: 20),

              // Appointment List
              Text(
                "Upcoming Appointments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: 5, // Replace with dynamic data
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                    height: 20,
                  ),
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
      ),
    );
  }
}
