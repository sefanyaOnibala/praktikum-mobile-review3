import 'package:flutter/material.dart';
import 'package:pertemuan_4/widget/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // CustomTextField(
            //   controller: username,
            //   label: "Username",
            //   hint: "Masukkan Username",
            // ),
            // const SizedBox(height: 20),
            // CustomTextField(
            //   controller: password,
            //   label: "Password",
            //   hint: "Masukkan Password",
            // ),
            const SizedBox(height: 20),
            CustomTextField(Controller: nama, label: "Nama", hint: "Masukkan Nama"),
            const SizedBox(height: 20),
            CustomTextField(Controller: email, label: "Email", hint: "Masukkan Email"),
            const SizedBox(height: 20),
            CustomTextField(Controller: umur, label: "umur", hint: "Masukkan Umur"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text("Pria"),
                  leading: Radio<String>(
                    value: "Pria", 
                    groupValue: jenisKelamin, 
                    onChanged: (value){
                      setState(() {
                        jenisKelamin = value;
                      });
                    }
                    ),
                ),

                ListTile(
                  title: Text("Wanita"),
                  leading: Radio(
                    value: "Wanita", 
                    groupValue: jenisKelamin, 
                    onChanged: (value){
                      setState(() {
                        jenisKelamin = value;
                      });
                    }
                    ),
                )
              ],
            ),
            
            ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      // username.clear();
                      // password.clear();
                      // print(
                      //     "username: ${username.text}\npassword: ${password.text}");
                    },
                  );
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
