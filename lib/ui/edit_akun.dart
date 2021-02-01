import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:baca_manga_initial/firebase/databasePostService.dart';
import 'package:image_picker/image_picker.dart';


class EditAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Informasi')),
      body: EditAkunPage(),
    );
  }
}

 class EditAkunPage extends StatefulWidget {
   @override
   _EditAkunPageState createState() => _EditAkunPageState();
 }

 class _EditAkunPageState extends State<EditAkunPage> {
   bool showPassword = false;
   String imagePath;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
         child: GestureDetector(
           onTap: () {
             FocusScope.of(context).unfocus();
           },
           child: ListView(
             children: [
               SizedBox(
                 height: 15,
               ),
               Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     (imagePath != null)
                     ? Container(
                       width: 130,
                       height: 130,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(color: Colors.black),
                         image: DecorationImage(
                           image: NetworkImage(imagePath),
                           fit: BoxFit.cover)),
                 )
                     : Container(
                         width: 130,
                         height: 130,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(color: Colors.black),
                         )
                     ),
                     Positioned(
                       right: -16,
                       bottom: 0,
                       child: SizedBox(
                         height: 46,
                         width: 46,
                         child: FlatButton(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(50),
                             side: BorderSide(color: Colors.white),
                           ),
                           color: Color(0xFFF5F6F9),
                           onPressed: () async {
                             File file = await getImage();
                             imagePath = await dataBasePostService.uploudimage(file);

                             setState(() {
                             });
                           },
                           child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               SizedBox(
                 height: 35,
               ),
               buildTextField("Username", "", false),
               buildTextField("E-mail", "", false),
               buildTextField("Password", "", true),
               SizedBox(
                 height: 35,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   RaisedButton(
                     onPressed: () {},
                     color: Colors.red,
                     padding: EdgeInsets.symmetric(horizontal: 50),
                     elevation: 2,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)),
                     child: Text(
                       "Batal",
                       style: TextStyle(
                           fontSize: 14,
                           letterSpacing: 2.2,
                           color: Colors.white),
                     ),
                   ),
                   RaisedButton(
                     onPressed: () {},
                     color: Colors.blue,
                     padding: EdgeInsets.symmetric(horizontal: 50),
                     elevation: 2,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)),
                     child: Text(
                       "Simpan",
                       style: TextStyle(
                           fontSize: 14,
                           letterSpacing: 2.2,
                           color: Colors.white),
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
       ),
     );
   }

   Widget buildTextField(
       String labelText, String placeholder, bool isPasswordTextField) {
     return Padding(
       padding: const EdgeInsets.only(bottom: 35.0),
       child: TextField(
         obscureText: isPasswordTextField ? showPassword : false,
         decoration: InputDecoration(
             suffixIcon: isPasswordTextField
                 ? IconButton(
               onPressed: () {
                 setState(() {
                   showPassword = !showPassword;
                 });
               },
               icon: Icon(
                 Icons.remove_red_eye,
                 color: Colors.grey,
               ),
             )
                 : null,
             contentPadding: EdgeInsets.only(bottom: 3),
             labelText: labelText,
             floatingLabelBehavior: FloatingLabelBehavior.always,
             hintText: placeholder,
             hintStyle: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             )),
       ),
     );
   }
 }

 Future<File> getImage() async{
  // ignore: deprecated_member_use
  return await ImagePicker.pickImage(source: ImageSource.gallery);
 }