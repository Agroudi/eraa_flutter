import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00A6E3),
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.account_balance, color: Colors.white),
            SizedBox(width: 8),
            Text("Appointments", style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Saturday, 29 November 2025",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                buildAppointmentTile(
                  name: "Iulian Ruja",
                  time: "10:50",
                ),
                buildAppointmentTile(
                  name: "Victoria Olari",
                  time: "13:00",
                ),
                buildAppointmentTile(
                  name: "Diana Stefan",
                  time: "15:20",
                ),
                buildAppointmentTile(
                  name: "Gheorge Popa",
                  time: "16:10",
                ),
                buildAppointmentTile(
                  name: "Alexandru Sandu",
                  time: "16:40",
                  icon: Icons.close,
                  iconColor: Colors.red,
                ),
                buildAppointmentTile(
                  name: "Dumitru Simona",
                  time: "08:00",
                  icon: Icons.done_all,
                  iconColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buildAppointmentTile({
    required String name,
    required String time,
    IconData? icon,
    Color? iconColor,
  })
  {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 14),
                  const SizedBox(width: 4),
                  Text(time),
                ],
              ),
            ],
          ),
          const Spacer(),
          if (icon != null)
            Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
        ],
      ),
    );
  }
}
