import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInForm(),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white10,
      ),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(
          top: 50,
          bottom: 70,
        ),
        children: [
          Center(
            child: Image.asset('assets/images/zuri-logo.png'),
          ),
          const SizedBox(
            height: 18,
          ),
          Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Please sign up to create account',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          TextField(
            style: TextStyle(fontSize: 15, height: 0.5),
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'Name@gmail.com',
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 15, height: 0.5),
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter password',
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 15, height: 0.5),
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Re-enter password',
              border: OutlineInputBorder(
                borderSide: new BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          CheckboxListTile(
              value: false,
              onChanged: (newValue) {},
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.all(0),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                    child: Text(
                      'By selecting this box, you agreed to our',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, minimumSize: Size(50, 17)),
                      child: Text(
                        'terms and coditions',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.green,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Create Account',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              elevation: 0,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already  have an Account ?'),
                TextButton(
                  // style: TextButton.styleFrom(
                  //   padding: EdgeInsets.zero,
                  //   minimumSize: Size(50, 17)
                  // ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Or',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
            child: InkWell(
              onTap: () {},
              child: Ink(
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/Google_logo.png',
                            height: 25 ,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text('Sign Up with Google', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )

          // OutlinedButton.icon(
          //   icon: Icon(Icons.web),
          //   label: Text("Continue with Google"),
          //   style: OutlinedButton.styleFrom(
          //     side: BorderSide(color: Colors.black),
          //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //     primary: Colors.black,
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white10,
      ),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(
          top: 50,
          bottom: 70,
        ),
        children: [
          Center(
            child: Image.asset('assets/images/zuri-logo.png'),
          ),
          const SizedBox(
            height: 18,
          ),
          Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Please sign in to your account',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          TextField(
            style: TextStyle(fontSize: 15, height: 0.5),
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'Name@gmail.com',
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 15, height: 0.5),
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter password',
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(0), minimumSize: Size(50, 17)),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              elevation: 0,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account ?'),
                TextButton(
                  // style: TextButton.styleFrom(
                  //   padding: EdgeInsets.zero,
                  //   minimumSize: Size(50, 17)
                  // ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
