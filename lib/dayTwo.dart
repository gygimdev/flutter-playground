import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dayTwo',
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day2"),
        centerTitle: true,
        elevation: 0.0,
        // Drawer 를 추가했기 때문에 leading 은 제거 해도 된다.
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {print("menu clicked!");},
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {print('shopping cart clicked!');},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {print('search clicked!');},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/dayOne.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dayOne.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dayOne.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountEmail: const Text('example@gmail.com'),
              accountName: const Text('example'),
              onDetailsPressed: () {print('arrow clicked!');},
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: const Text('Home'),
              onTap: () {print('home clicked!');},
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: const Text('Setting'),
              onTap: () {print('Setting clicked!');},
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.grey,
              ),
              title: const Text('Q&A'),
              onTap: () {print('Q&A clicked!');},
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
