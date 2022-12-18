// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_letter_1/fragments/HomeBerandaFragment.dart';
import 'package:quick_letter_1/fragments/HomeProfileFragment.dart';
import 'package:quick_letter_1/models/warga_model.dart';
import 'package:quick_letter_1/pages/Daftar.dart';
import 'package:quick_letter_1/pages/Home.dart';
import 'package:quick_letter_1/pages/LoginPengurus.dart';
import 'package:quick_letter_1/pages/LupaPassword.dart';
import 'package:quick_letter_1/providers/features.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nikController = TextEditingController(),
      passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<WargaModel> listWarga = (Provider.of<List<WargaModel>>(context));

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("images/circleataskiri.png"),
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage("images/circlebawahkanan.png"),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 70, 20, 50),
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
                                        builder: (context) =>
                                            const Kepengurusan(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    minimumSize: const Size(30, 30),
                                    backgroundColor: const Color(0xff242423),
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
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            TextField(
                              controller: nikController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff3FBDF1),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff3FBDF1),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                  hintText: 'NIK',
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            TextField(
                              controller: passwordController,
                              obscureText: false,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff3FBDF1),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff3FBDF1),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    size: 30,
                                  ),
                                  hintText: 'Password',
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w500)),
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
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0xff3FBDF1),
                              elevation: 5,
                              child: SizedBox(
                                height: 50,
                                child: InkWell(
                                  splashColor: Colors.white,
                                  onTap: () {
                                    bool isValid = false;

                                    for (WargaModel wargaModel in listWarga) {
                                      if (wargaModel.nik ==
                                              nikController.text &&
                                          wargaModel.password ==
                                              passwordController.text) {
                                        isValid = true;
                                      }
                                    }

                                    if (isValid) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Berhasil masuk",
                                          ),
                                        ),
                                      );
                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) => Beranda(
                                            role: "warga",
                                            fragments: [
                                              HomeBerandaFragment(
                                                illustrationPath:
                                                    "images/FastPrint.png",
                                                features: Features.Warga,
                                              ),
                                              const HomeProfileFragment()
                                            ],
                                          ),
                                        ),
                                        (Route<dynamic> route) => false,
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "NIK atau Password yang dimasukkan salah",
                                          ),
                                        ),
                                      );
                                    }
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
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DaftarPage()));
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
