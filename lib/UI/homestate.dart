import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  String _status = "Свободен"; //
  TextEditingController _textController =
  TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мой профиль"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/gosling.jpg"),
            SizedBox(height: 16),
            Text(
              "Имя: Глеб",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              "Возраст: 23",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              "Статус: $_status",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Введите новый статус",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _status = _textController.text.trim();
                });
              },
              child: Text("Новый статус"),
            ),
          ],
        ),
      ),
    );
  }
}