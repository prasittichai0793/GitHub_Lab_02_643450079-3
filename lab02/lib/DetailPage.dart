import 'package:flutter/material.dart';
import 'package:lab02/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Profile page"),
        centerTitle: true, // ทำให้ title อยู่ตรงกลาง
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: data.studentid,
              child: CircleAvatar(
                radius: 100, // ขนาดของรูปภาพวงกลม
                backgroundImage: AssetImage(data.image),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              data.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              data.studentid,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About me",
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                data.aboutMe,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                data.email,
                style: const TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Social Media",
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                data.socialMedia,
                style: const TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
