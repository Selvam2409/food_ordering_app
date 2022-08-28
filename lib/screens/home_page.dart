import 'package:flutter/material.dart';
import 'package:project/gridview.dart';
import 'package:project/screens/login.dart';
import 'package:project/slider.dart';
import 'package:project/utils/textstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: _openDrawer,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/menu.png',
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Tstyle(text: 'Popular Foods', size: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(child: ImageSlider()),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Tstyle(
              text: 'Categories',
              size: 25,
            ),
          ),
          const GridPage(),
        ]),
        drawer: Drawer(
          elevation: 0,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              maxRadius: 50.0,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 35,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(10))),
                child: const Center(
                  child: Tstyle(
                    text: 'Welcome',
                    size: 25,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'About Us',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const ListTile(
                title: Tstyle(
                  text: 'Login',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'Your Orders',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'Your Account',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'Terms and Conditions',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'Privacy Policy',
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Tstyle(
                  text: 'Contact Us',
                  size: 20,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
