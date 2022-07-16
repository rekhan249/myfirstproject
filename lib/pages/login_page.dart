import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/provider/password_provider.dart';
import 'package:nsdd/utils/routes.dart';
import 'package:provider/provider.dart';

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
            SizedBox(
              height: 280.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/svg/login_file.svg',
                      color: Color.fromARGB(255, 146, 2, 2),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/svg/signup_fill.svg',
                      color: Color.fromARGB(255, 146, 2, 2),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 15,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 146, 2, 2),
                        fontWeight: FontWeight.w900,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                hintText: 'Enter email here',
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                filled: true,
                fillColor: Color.fromARGB(125, 211, 207, 221),
                contentPadding: EdgeInsets.symmetric(vertical: 20.h),
              ),
            ),
            SizedBox(height: 20.h),
            Consumer<PasswordProvider>(
              builder: (context, pp, child) {
                return TextFormField(
                  obscureText: pp.isObscure,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        pp.toggleIsObscure();
                      },
                      icon: Icon(
                        pp.isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: '  Enter password here',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(125, 211, 207, 221),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 40.h,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteGenerator.recover);
                    },
                    child: Text('Forget Password'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 70.h,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteGenerator.personal);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 146, 2, 2)),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Wrap(
              children: [
                Text(
                  'Have you already an account?',
                  style: TextStyle(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteGenerator.signup);
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
