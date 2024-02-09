import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: profileScreen(),
    );
  }
}

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "assets/profile.jpg",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            itemProfile(
              "Name",
               "Nony",
               Icons.person
              ),
            SizedBox(
              height: 25,
            ),
            itemProfile(
              "Phone",
              "056789090", 
               Icons.phone
              ),
            SizedBox(
              height: 25,
            ),
            itemProfile(
              'Address',
               'Ryadh',
               Icons.location_on
              ),
            SizedBox(
              height: 25,
            ),
            itemProfile(
              'Email',
              'Nony@gmail.com',
              Icons.email
               ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: Offset(8, 15),
              color: const Color.fromARGB(255, 80, 67, 63).withOpacity(.5),
              blurRadius: 10,
              spreadRadius: 8,
            )
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}