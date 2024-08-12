import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
      child: Image.network('https://cdn.pixabay.com/photo/2023/12/15/03/11/basket-to-the-sea-8449952_960_720.jpg'),
      ),
    );
  }
}
