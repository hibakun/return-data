import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:return_data/pages/edit_profile.dart';

class ProfilePage extends StatefulWidget {
  String name;
  String email;
  String phone;

  ProfilePage(
      {Key? key, required this.name, required this.email, required this.phone})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Full Name",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff4D4A4A),
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.name.isEmpty ? "Invalid Name" : widget.name,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff4D4A4A),
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.email.isEmpty ? "Invalid Email" : widget.email,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Phone",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff4D4A4A),
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.phone.isEmpty ? "Invalid Phone Number" : widget.phone,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: width / 2,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(),
                        ),
                      );

                      setState(() {
                        widget.name = result[0];
                        widget.email = result[1];
                        widget.phone = result[2];
                      });
                    },
                    child: Text(
                      "Edit Profile",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
