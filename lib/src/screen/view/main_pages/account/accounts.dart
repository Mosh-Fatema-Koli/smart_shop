import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: Container(

              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2tbbcVAwOiN8tLXozbqE5MWsVjTXAj646Ag&usqp=CAU"),
                        ),
                        Positioned(
                          right: 5,
                          top: 3,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
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
          ),
          Container(
            height: 50,
            width: Get.width,
            color: Colors.grey,
            child: Row(
              children: [
                Expanded(child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,color: Colors.white,),
                      SizedBox(width: 5,),
                      KText(text: "Call Us",fontWeight: FontWeight.bold,color: Colors.white,)
                    ],
                  ),


                )),
                Expanded(child: Container(
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


                )),
              ],
            ),

          ),
          SizedBox(
            height: 10,
          ),
          ExpansionTile(
            childrenPadding: EdgeInsets.only(left: 25,right: 5),
            leading: Icon(Icons.person),
            title: Text("Profile"), // You can use Text widget here instead of KText
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.edit_note),
                title: KText(text: "Edit Profile",),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              ListTile(
                leading: Icon(Icons.perm_contact_calendar_outlined),
                title: KText(text: "View Profile",),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),

            ],
          ),

          ListTile(
            leading: Icon(Icons.history),
            title: KText(text: "Order History",),
            trailing: Icon(Icons.arrow_forward_ios,size: 16,),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: KText(text: "Theme Change",),
            trailing: Icon(Icons.swap_horizontal_circle,size: 16,),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Divider(),
          ),

          ListTile(
            leading: Icon(Icons.account_balance_outlined),
            title: KText(text: "About Us",),
            trailing: Icon(Icons.arrow_forward_ios,size: 16,),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: KText(text: "Privacy Policy",),
            trailing: Icon(Icons.arrow_forward_ios,size: 16,),
          ),
          ListTile(
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

    );
  }
}
