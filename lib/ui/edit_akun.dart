import 'package:flutter/material.dart';
void main() => runApp(EditAkun());
class EditAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Akun')),
      body: Center(child: RaisedButton(
        onPressed: () {
          Navigator
          .pop(context);
        },
        child: Text('kembali'),
      )),
    );
  }
}