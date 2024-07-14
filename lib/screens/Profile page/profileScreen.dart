import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Profile%20page/view_profile.dart'; // Import the ProfileDetailScreen

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildProfileHeader(context),
          SizedBox(height: 16),
          buildProfileOption(Icons.settings_accessibility, 'Accessibility'),
          buildProfileOption(Icons.help, 'Help and Support'),
          buildProfileOption(Icons.attach_money, 'Earn with Using app'),
          buildProfileOption(Icons.payment, 'Payment'),
          buildProfileOption(Icons.info, 'About Us'),
          SizedBox(height: 24),
          buildFooter(),
        ],
      ),
    );
  }

  Widget buildProfileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  'images/profileicon.jpg',
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nirmitha Heshara',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'MEMBER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileDetailScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'View Profile',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildProfileOption(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.lightBlueAccent),
          title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          onTap: () {
            // Add your onTap functionality here
          },
        ),
        Divider(),
      ],
    );
  }

  Widget buildFooter() {
    return Center(
      child: Column(
        children: [
          Text(
            'Made in 🇱🇰 with ❤️',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 4),
          Text(
            'App version 8.1220L - 703',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
