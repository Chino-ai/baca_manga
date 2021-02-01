import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditAkunNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifikasi')),
      body: EditAkunNotifikasiPage(),
    );
  }
}

class EditAkunNotifikasiPage extends StatefulWidget {
  @override
  _EditAkunNotifikasiPageState createState() => _EditAkunNotifikasiPageState();
}

class _EditAkunNotifikasiPageState extends State<EditAkunNotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Notifikasi",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.add_alert,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifikasi Layanan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Favorit", true),
            buildNotificationOptionRow("Update Manga", true),
            buildNotificationOptionRow("Komentar Terbaik", true),
            buildNotificationOptionRow("Balasan", true),
            buildNotificationOptionRow("Reminder", true),
            SizedBox(
              height: 50,
            ),

            Row(
              children: [
                Icon(
                  Icons.access_alarm,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Info Terbaru",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Baru Rilis", true),
            buildNotificationOptionRow("Pemberitahuan & Event", true),
            buildNotificationOptionRow("Komentar Terbaik", true),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("None"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Tutup")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
