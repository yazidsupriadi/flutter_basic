import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: primary,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/images.png',
                  width: 130,
                  height: 80,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Anne Margareth',
                  style: TextStyle(
                    color: primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'UX Designer',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 60,
                  runSpacing: 40,
                  children: [
                    Image.asset('assets/images/images.png', width: 40),
                    Image.asset('assets/images/images.png', width: 40),
                    Image.asset('assets/images/images.png', width: 40),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 60,
                  runSpacing: 40,
                  children: [
                    Image.asset('assets/images/images.png', width: 40),
                    Image.asset('assets/images/images.png', width: 40),
                    Image.asset('assets/images/images.png', width: 40),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 224,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.white,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250,
                              padding: EdgeInsets.symmetric(
                                vertical: 50,
                              ),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    'Update Photo',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Click continue to upload photo on this page',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 224,
                                    height: 50,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      color: Colors.orange,
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text('Update Profile',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
