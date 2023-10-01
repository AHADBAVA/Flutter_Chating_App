import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
             return ListTile(
                title:Text('PERSON $index'),
                subtitle:Text('Message $index'),
                leading:CircleAvatar(
                  radius:30,
                  backgroundColor:Colors.green,
                 backgroundImage:AssetImage('Assets/Images/default-avatar-profile-icon-social-media-user-image-400-251200044.jpg'),
                ),
                trailing: Text("1$index:00"),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
