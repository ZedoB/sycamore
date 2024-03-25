import 'package:flutter/material.dart';

class DoctorAppBar extends StatelessWidget {
  const DoctorAppBar({
    super.key,
    required this.doctorName,
  });

  final String doctorName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.white,
        ),
      ),
      title: Text(
        'Hi, dr $doctorName',
        style: const TextStyle(color: Colors.white),
      ),
      trailing: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color(0xff9ACECD),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_sharp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
