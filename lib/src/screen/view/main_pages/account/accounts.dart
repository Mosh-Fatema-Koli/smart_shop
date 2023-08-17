import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/auth/change_password.dart';
import 'package:smart_shop/src/screen/view/others/about_us/about_us.dart';
import 'package:smart_shop/src/screen/view/others/faq/faq.dart';
import 'package:smart_shop/src/screen/view/others/order_history/order_history.dart';
import 'package:smart_shop/src/screen/view/others/privacy_policy/privacey_policy.dart';
import 'package:smart_shop/src/screen/view/profile/profile_edit.dart';
import 'package:smart_shop/src/screen/view/profile/profile_view.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {

    bool isDarkTheme = Get.isDarkMode;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(

              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2tbbcVAwOiN8tLXozbqE5MWsVjTXAj646Ag&usqp=CAU"),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: KText(text: "Mr. XXXXX",fontSize: 18,),
                        ),
                        Icon(Icons.more_vert),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: Get.width,
              color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        const phoneNumber = 'tel:+1234567890'; // Replace with the desired phone number
                        if (await canLaunch(phoneNumber)) {
                        await launch(phoneNumber);
                        } else {
                        throw 'Could not launch $phoneNumber';
                        }
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call,color: Colors.white,),
                            SizedBox(width: 5,),
                            KText(text: "Call Us",fontWeight: FontWeight.bold,color: Colors.white,)
                          ],
                        ),


                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'example@gmail.com', // Replace with the desired Gmail address
                          queryParameters: {
                            'subject': 'Your subject here', // Replace with your desired subject
                            'body': 'Your email body here', // Replace with your desired email body
                          },
                        );

                        if (await canLaunch(emailLaunchUri.toString())) {
                        await launch(emailLaunchUri.toString());
                        } else {
                        throw 'Could not launch email app';
                        }
                      },
                      child: Container(
                        color: BrandColors.navitemSelectColor,
                        height: Get.height,
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail,color: Colors.white,),
                            SizedBox(width: 5,),
                            KText(text: "Mail Us",fontWeight: FontWeight.bold,color: Colors.white,)
                          ],
                        ),


                      ),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              collapsedIconColor: BrandColors.navitemSelectColor,
              iconColor: BrandColors.navitemSelectColor,
              childrenPadding: EdgeInsets.only(left: 25,right: 5),
              leading: Icon(Icons.person),
              title: Text("Profile"), // You can use Text widget here instead of KText
              children: <Widget>[

                ListTile(
                  onTap: (){
                    Get.to(ProfileViewPage());
                  },
                  leading: Icon(Icons.perm_contact_calendar_outlined),
                  title: KText(text: "View Profile",),
                  trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                ),
                ListTile(
                  onTap: (){
                    Get.to(ProfileEditPage());
                  },
                  leading: Icon(Icons.edit_note),
                  title: KText(text: "Edit Profile",),
                  trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                ),

              ],
            ),

            ListTile(
              onTap: (){
                Get.to(OrderHistory());
              },
              leading: Icon(Icons.history),
              title: KText(text: "Order History",),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),
            ),
            ListTile(
              onTap: (){
                Get.to(ChangePassPage());
              },
              leading: Icon(Icons.password),
              title: KText(text: "Change password",),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: KText(text: "Theme Change",),
              trailing: Switch(
                value: isDarkTheme,
                onChanged: (newValue) {
                  // Toggle the theme and update the GetX theme.
                  Get.changeTheme(newValue ? ThemeData.dark() : ThemeData.light());
                },
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(15),
              child: Divider(),
            ),

            ListTile(
              onTap: (){
                Get.to(AboutUs());
              },
              leading: Icon(Icons.account_balance_outlined),
              title: KText(text: "About Us",),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),
            ),
            ListTile(
              onTap: (){
                Get.to(PrivacyPolicy());
              },
              leading: Icon(Icons.privacy_tip),
              title: KText(text: "Privacy Policy",),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),
            ),
            ListTile(
              onTap: (){
                Get.to(FAQpage());
              },
              leading: Icon(Icons.quiz_sharp),
              title: KText(text: "FAQ",),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.red,),
              title: KText(text: "Sign Out",color: Colors.red,fontWeight: FontWeight.bold,),
              trailing: Icon(Icons.arrow_forward_ios,size: 16,),
            ),
          ],
        ),
      ),

    );
  }
}
