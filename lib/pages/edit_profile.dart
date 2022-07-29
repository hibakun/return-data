import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Edit Profile",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff4D4A4A),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              formEditProfile(_nameController, "Full Name"),
              SizedBox(
                height: 20,
              ),
              formEditProfile(_emailController, "Email"),
              SizedBox(
                height: 20,
              ),
              formEditProfile(_phoneController, "Phone Number"),
              SizedBox(
                height: 35,
              ),
              Container(
                width: width / 2,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    final result = [
                      _nameController.text,
                      _emailController.text,
                      _phoneController.text,
                    ];

                    Navigator.pop(context, result);
                  },
                  child: Text(
                    "Submit",
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
    );
  }

  Widget formEditProfile(TextEditingController controller, String text) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Color(0xffEEF1F7),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: text,
      ),
    );
  }
}
