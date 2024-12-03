import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });

    passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(50, 58, 153, 1),
                    Color.fromRGBO(249, 139, 252, 1),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/rocket.png',
              ),
            ),
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(44),
                child: Column(
                  children: [
                    _getHeaderForm(),
                    SizedBox(
                      height: 30,
                    ),
                    _getEmailTextField(),
                    SizedBox(
                      height: 30,
                    ),
                    _getPasswordTextField(),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 129,
                      height: 46,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'sign in',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                    ),
                    Spacer(),
                    _getUserHaveAccount()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getHeaderForm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Sign in to',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'GB',
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          'assets/images/mood.png',
        )
      ],
    );
  }

  Widget _getEmailTextField() {
    return TextField(
      focusNode: emailFocusNode,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'GM',
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        label: SizedBox(
          width: 60,
          child: Center(
            child: Text(
              'Email',
              style: TextStyle(fontSize: 18, fontFamily: 'GB'),
            ),
          ),
        ),
        labelStyle: TextStyle(
            color: emailFocusNode.hasFocus ? pinkColor : Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: pinkColor,
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: greyColor,
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: pinkColor,
            width: 3,
          ),
        ),
      ),
    );
  }

  Widget _getPasswordTextField() {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'GM',
      ),
      focusNode: passwordFocusNode,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        label: SizedBox(
          width: 95,
          child: Center(
            child: Text(
              'Password',
              style: TextStyle(fontSize: 18, fontFamily: 'GB'),
            ),
          ),
        ),
        labelStyle: TextStyle(
            color: passwordFocusNode.hasFocus ? pinkColor : Colors.white),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: pinkColor, width: 3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: pinkColor, width: 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 3),
        ),
      ),
    );
  }

  Widget _getUserHaveAccount() {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have an account? /',
            style: TextStyle(color: greyColor, fontSize: 16, fontFamily: 'GB'),
          ),
          Text(
            ' Sign up',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }
}
