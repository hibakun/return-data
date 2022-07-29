import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:return_data/pages/profile.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff4D4A4A),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selamat Datang Kembali",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff4D4A4A),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              formRegister(_nameController, "Full Name"),
              SizedBox(
                height: 20,
              ),
              formRegister(_emailController, "Email"),
              SizedBox(
                height: 20,
              ),
              formRegister(_phoneController, "Phone Number"),
              SizedBox(
                height: 35,
              ),
              Container(
                width: width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          name: _nameController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Register",
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

  Widget formRegister(TextEditingController controller, String text) {
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
