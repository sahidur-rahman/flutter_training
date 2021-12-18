import 'package:flutter/material.dart';
import 'package:flutter_training/day20/bottom_sheet_view.dart';
import 'package:flutter_training/day21/submitted_data.dart';

class LoginAppHomeView extends StatefulWidget {
  const LoginAppHomeView({Key? key}) : super(key: key);

  @override
  _LoginAppHomeViewState createState() => _LoginAppHomeViewState();
}

class _LoginAppHomeViewState extends State<LoginAppHomeView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.network(
                  'https://cdn2.iconfinder.com/data/icons/search-engine-optimization-38/512/security-website-personal-lock-avatar-512.png'),
              maxRadius: 100,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: ListView(
                children: [
                  //50 pixel spaces
                  SizedBox(
                    height: 50,
                  ),

                  //Signup label
                  Center(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //16 pixel spaces
                  SizedBox(
                    height: 16,
                  ),

                  //Email text field
                  TextField(
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      // Mail icon at front of the text field
                      prefixIcon: Icon(Icons.mail),

                      //Close Icon button show to clear the inputs
                      suffixIcon: emailController.text.isEmpty
                          ? Text('')
                          : GestureDetector(
                              onTap: () {
                                emailController.clear();
                                setState(() {});
                              },
                              child: Icon(Icons.close),
                            ),
                      hintText: 'example@mail.com',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.red, width: 1),
                      ),
                    ),
                  ),

                  //16 pixel spaces
                  SizedBox(
                    height: 16,
                  ),

                  //Password text field
                  TextField(
                    obscureText: isVisible,
                    controller: passwordController,
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      // icon: Icon(Icons.mail),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            isVisible = !isVisible;
                            setState(() {});
                          },
                          child: Icon(isVisible
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      hintText: 'type your password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.red, width: 1),
                      ),
                    ),
                  ),

                  //16 pixel spaces
                  SizedBox(
                    height: 16,
                  ),

                  //Submit button
                  ElevatedButton(
                    onPressed: () {
                      /* showDialogMessage(
                        context,
                        this.emailController.text.toString(),
                        this.passwordController.text.toString(),
                      );*/

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginSubmittedData(
                              email: this.emailController.text,
                              pass: this.passwordController.text),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Text('Submit'),
                    ),
                  ),

                  //Bottom sheet show button
                  Tooltip(
                    message: 'Tap to show the bottom sheet',
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return BottomSheetView();
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Text('Bottom Sheet'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showDialogMessage(BuildContext context, String email, String pass) {
    showDialog(
      context: context,
      builder: (context) {
        //Submitted email and password will show from this dialog method
        return SimpleDialog(
          title: Text('Your submitted data '),
          children: [
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(email),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(pass),
            ),
          ],
        );
      },
    );
  }
}
