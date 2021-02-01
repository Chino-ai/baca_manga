 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
               // Text(
               //   "My Account",
               //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
               // ),
               SizedBox(
                 height: 15,
               ),
               Center(
                 child: Stack(
                   children: [
                     Container(
                       width: 130,
                       height: 130,
                       decoration: BoxDecoration(
                           border: Border.all(
                               width: 4,
                               color: Theme.of(context).scaffoldBackgroundColor),
                           boxShadow: [
                             BoxShadow(
                                 spreadRadius: 2,
                                 blurRadius: 10,
                                 color: Colors.black.withOpacity(0.1),
                                 offset: Offset(0, 10))
                           ],
                           shape: BoxShape.circle,
                           image: DecorationImage(
                               fit: BoxFit.cover,
                               image: NetworkImage(
                                 "assets/avatar.png",
                               ))),
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
                           onPressed: () {},
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
