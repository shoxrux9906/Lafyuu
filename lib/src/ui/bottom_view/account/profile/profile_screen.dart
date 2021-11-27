import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_two/src/theme/app_theme.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/birthday_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/change_name_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/email_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/gender_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/password_screen.dart';
import 'package:practice_two/src/ui/bottom_view/account/profile/sub_profile/phone_screen.dart';
import 'package:practice_two/src/ui/widgets/profile_items.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String fullName = "Maximus Gold";
  String gender = "Male";
  String date = "12-12-2000";
  String email = "Derlaxy@yahoo.com";
  String phone = "(307) 555-0133";
  String password = "•••••••••••••••••";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: AppTheme.light_grey,
        backgroundColor: AppTheme.white,
        leadingWidth: 44,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              "assets/icons/left_back.svg",
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: AppTheme.fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.5,
            height: 1.5,
            color: AppTheme.dark_grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profile.png",
                  width: 72,
                  height: 72,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Text(
                            fullName,
                            style: TextStyle(
                              fontFamily: AppTheme.fontFamilyPoppins,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.5,
                              height: 1.5,
                              color: AppTheme.dark_grey,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChangeNameScreen(
                                    fullName: fullName,
                                    changeInfo: (_info) {
                                      setState(() {
                                        fullName = _info;
                                      });
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        Text(
                          "@derlaxy",
                          style: TextStyle(
                            fontFamily: AppTheme.fontFamilyPoppins,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.5,
                            height: 1.8,
                            color: AppTheme.normal_grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          ProfileItems(
              icon1: SvgPicture.asset("assets/icons/prf_gender.svg"),
              name: "Gender",
              type: gender,
              icon2: SvgPicture.asset("assets/icons/prf_right.svg"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GenderScreen(
                        gender: gender,
                        changeGender: (_gender) {
                          setState(
                            () {
                              gender = _gender;
                            },
                          );
                        },
                      );
                    },
                  ),
                );
              }),
          ProfileItems(
            icon1: SvgPicture.asset("assets/icons/prf_date.svg"),
            name: "Birthday",
            type: date,
            icon2: SvgPicture.asset("assets/icons/prf_right.svg"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BirthdayScreen(
                      date: date,
                      changeDate: (_date) {
                        setState(() {
                          date = _date;
                        });
                      },
                    );
                  },
                ),
              );
            },
          ),
          ProfileItems(
            icon1: SvgPicture.asset("assets/icons/prf_message.svg"),
            name: "Email",
            type: email,
            icon2: SvgPicture.asset("assets/icons/prf_right.svg"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EmailScreen(
                      email: email,
                      changeEmail: (_email) {
                        setState(() {
                          email = _email;
                        });
                      },
                    );
                  },
                ),
              );
            },
          ),
          ProfileItems(
            icon1: SvgPicture.asset("assets/icons/prf_phone.svg"),
            name: "Phone Number",
            type: phone,
            icon2: SvgPicture.asset("assets/icons/prf_right.svg"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhoneScreen(
                      phone: phone,
                      changePhone: (_phone) {
                        setState(() {
                          phone = _phone;
                        });
                      },
                    );
                  },
                ),
              );
            },
          ),
          ProfileItems(
            icon1: SvgPicture.asset("assets/icons/prf_password.svg"),
            name: "Change Password",
            type: password,
            icon2: SvgPicture.asset("assets/icons/prf_right.svg"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PasswordScreen(
                      changePassword: (_password) {
                        setState(() {
                          password = _password;
                        });
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
