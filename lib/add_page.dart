import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  String filePath;
  AddPage({super.key, required this.filePath});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String filePath = '';

  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filePath = widget.filePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filePath),
        centerTitle: true,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: controllers[0],
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text('title')),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TextFormField(
                controller: controllers[1],
                maxLength: 50,
                maxLines: 5,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text('내용')),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var title = controllers[0].text;
                  print(title);
                  Navigator.pop(context, 'ok');
                },
                child: const Text('저장')),
          ],
        ),
      )),
    );
  }
}
