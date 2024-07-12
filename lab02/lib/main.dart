import 'package:flutter/material.dart';
import 'package:lab02/DetailPage.dart';
import 'package:lab02/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("นายกมล จันบุตรดี", "643450063-8", "images/Aek.jpg", "About Aek", "aek@example.com", "facebook.com/aek"),
      Student("นายชาญณรงค์ แต่งเมือง", "643450069-6", "images/Jeab.jpg", "About Jeab", "jeab@example.com", "facebook.com/jeab"),
      Student("นายประสิทธิชัย จันทร์สม", "643450079-3", "images/Far.jpg", "About Far", "far@example.com", "facebook.com/far"),
      Student("นายศรันย์ ซุ่นเส้ง", "643450086-6", "images/Mos.jpg", "About Mos", "mos@example.com", "facebook.com/mos"),
      Student("นางสาวสุธาดา เสนามงคล", "643450089-0", "images/Noey.jpg", "About Noey", "noey@example.com", "facebook.com/noey"),
      Student("นายก้องภพ ตาดี", "643450321-2", "images/Model.jpg", "About Model", "model@example.com", "facebook.com/model"),
      Student("นายเจษฏา พบสมัย", "643450323-8", "images/Bank.jpg", "About Bank", "bank@example.com", "facebook.com/bank"),
      Student("นางสาวนภัสสร ดวงจันทร์", "643450326-2", "images/Cream.jpg", "About Cream", "cream@example.com", "facebook.com/cream"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Hero(
              tag: student.studentid,
              child: Image(
                width: 100,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}
