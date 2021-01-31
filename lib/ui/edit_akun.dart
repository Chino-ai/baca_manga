 import 'package:flutter/material.dart';

class EditAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account')),
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
                         bottom: 0,
                         right: 0,
                         child: Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               width: 4,
                               color: Theme.of(context).scaffoldBackgroundColor,
                             ),
                             color: Colors.red,
                           ),
                           child: Icon(
                             Icons.edit,
                             color: Colors.white,
                           ),
                         )),
                   ],
                 ),
               ),
               SizedBox(
                 height: 35,
               ),
               buildTextField("Username", "", false),
               buildTextField("Email", "", false),
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
                       "Cancel",
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
                       "Save",
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
