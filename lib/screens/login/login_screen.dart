import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/screens/root_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const TextInputType number = TextInputType.numberWithOptions();

  @override
  Widget build(BuildContext context) {
    var mycontroller;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo1.png",
              height: MediaQuery.of(context).size.height * .39,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Phone number"),
                  const Gap(10),
                  TextField(
                    // controller: mycontroller,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: '+251 932404322 ',
                      prefix: const Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                    ),
                  ),
                  const Gap(50),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RootScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Text("LOGIN"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
