import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 16),
          buildSectionTitle('Your Info'),
          buildProfileOption(Icons.person, 'Full Name', 'Nirmitha Heshara'),
          buildProfileOption(Icons.email, 'Email Address', 'nirmithaheshara527@gmail.com'),
          buildProfileOption(Icons.phone, 'Mobile Number', '786074653'),
          buildProfileOption(Icons.cake, 'Birthday', '1999-07-13'),
          buildProfileOption(Icons.male, 'Gender', 'Male'),
          SizedBox(height: 16),
          buildSectionTitle('Your Preferences'),
          buildProfileOption(Icons.language, 'Languages', 'English'),
          buildProfileOption(Icons.contacts, 'Emergency Contacts', '0 contact available'),
          buildProfileOption(Icons.settings, 'Additional Settings', 'Account'),
          SizedBox(height: 32),
          buildLogoutButton(),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildProfileOption(IconData icon, String title, String value) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(value),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          onTap: () {
            // Add your onTap functionality here
          },
        ),
        Divider(),
      ],
    );
  }

  Widget buildLogoutButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Add your logout functionality here
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue, backgroundColor: Colors.white,
          side: BorderSide(color: Colors.blue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(
          'LOGOUT',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
