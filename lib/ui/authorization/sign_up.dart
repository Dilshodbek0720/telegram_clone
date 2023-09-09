import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/app_routes.dart';
import 'package:telegram_clone/ui/utils/theme/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isDark = false;

  _themeState() async {
    final savedThemeMode = await AdaptiveTheme.getThemeMode();
    if (savedThemeMode == AdaptiveThemeMode.dark) {
      setState(() {
        isDark = true;
      });
    }
  }
  @override
  void initState() {
    _themeState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cancel",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w400, color: Colors.blue)),
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.home);
              },
              child: Text(
                "Next",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.blue),
              ))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 17,
            ),
            Text(
              "Your Phone",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium,
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 63.0),
              child: Text(
                "Please confirm your country code\nand enter your phone number.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: Theme.of(context).primaryColor
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: Theme.of(context).primaryColor
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Sync Contacts", style: Theme.of(context).textTheme.titleMedium,),
                CupertinoSwitch(value: isDark, onChanged: (value){
                  if(value){
                    AdaptiveTheme.of(context).setDark();
                    isDark = value;
                  }else {
                    AdaptiveTheme.of(context).setLight();
                    isDark = false;
                  }
                })
              ],),
            )
          ],
        ),
      ),
    );
  }
}
