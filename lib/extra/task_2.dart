import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0AA1C0),
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.calendar_today_outlined),
            SizedBox(width: 8),
            Text('Appointments'),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wednesday, 22 May 2019',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  AppointmentItem(name: 'Iulian Rujă', time: '10:50'),
                  AppointmentItem(name: 'Victoria Olari', time: '13:00'),
                  AppointmentItem(name: 'Diana Stefan', time: '15:20'),
                  AppointmentItem(name: 'Gheorghe Popa', time: '16:10'),
                  AppointmentItem(
                    name: 'Alexandra Sandu',
                    time: '16:40',
                    isCancelled: true,
                  ),
                  AppointmentItem(
                    name: 'Dumitru Simona',
                    time: '08:00',
                    isDone: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({
    super.key,
    required this.name,
    required this.time,
    this.isCancelled = false,
    this.isDone = false,
  });

  final String name;
  final String time;
  final bool isCancelled;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCancelled ? Colors.grey[800] : Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isCancelled ? Colors.white54 : Colors.white,
                    fontSize: 16,
                    decoration: isCancelled ? TextDecoration.lineThrough : null,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          if (isDone) const Icon(Icons.check_circle, color: Colors.green),
        ],
      ),
    );
  }
}
