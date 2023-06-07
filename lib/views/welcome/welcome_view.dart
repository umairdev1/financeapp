import 'package:financeapp/utilis/colors.dart';
import 'package:financeapp/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Demo",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                "Banking Just Got Easier!",
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Manage your finance anyhwere, anytime. Transfer money, pay bill and moniter your card with ease.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          height: 1.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                color: kblackClr,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(color: kblackClr)),
                    height: 60,
                    minWidth: 120,
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashboardView(),
                          ),
                        );
                      },
                      color: kblackClr,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 60,
                      child: const Text(
                        "OPEN AN ACCOUNT",
                        style: TextStyle(fontSize: 12, color: kwhiteClr),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
