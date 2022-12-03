import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quick_letter_1/pages/Home.dart';
import 'package:quick_letter_1/pages/LoginPengurus.dart';
import 'package:quick_letter_1/pages/LupaPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("images/circleataskiri.png"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Kepengurusan(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          minimumSize: Size(30, 30),
                          primary: const Color(0xff242423),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Pengurus"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Selamat Datang Kembali, Silahkan Masuk Dengan Akun Anda.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3FBDF1),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3FBDF1),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                        ),
                        hintText: 'NIK',
                        hintStyle: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3FBDF1),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3FBDF1),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LupaPasword()));
                    },
                    child: const Text(
                      "Lupa Password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Color(0xff3FBDF1),
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Beranda()));
                        },
                        child: const Center(
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Belum Punya Akun ?',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LupaPasword()));
                        },
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                              color: Color(
                            0xff3FBDF1,
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage("images/circlebawahkanan.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}