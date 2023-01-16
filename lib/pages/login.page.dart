import 'package:flutter/material.dart';
import 'package:shopping/pages/singup.page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(3, 2.0),
                      blurRadius: 6,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 40,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: <Widget>[
                                Text("Welcome",
                                    style:
                                        Theme.of(context).textTheme.headline4),
                                Text(
                                  "Sign in to contuinue",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sing Up",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid E-mail';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input!,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Invalid Password';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input!,
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 40,
                          child: TextButton(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print(_email);
                                print(_password);

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Welcome, $_email'),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                child: const Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 125,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      const Text(
                        "Sign in with Facebook",
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 125,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      const Text(
                        "Sign in with Google",
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
