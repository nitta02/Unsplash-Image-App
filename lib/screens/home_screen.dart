// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_asstes_project/constants/catagory_names.dart';
import 'package:image_asstes_project/constants/image_constants.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Scrolling App'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          PopupMenuButton(
            padding: const EdgeInsets.all(20.0),
            itemBuilder: (context) => [
              PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Text(
                        'Profile',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                      20.widthBox,
                      Icon(Icons.account_circle_sharp),
                    ],
                  )),
              PopupMenuItem(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Text(
                        'Logout',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),
                      ),
                      20.widthBox,
                      const Icon(
                        CupertinoIcons.lock_open,
                      )
                    ],
                  )),
            ],
            child: const Icon(
              CupertinoIcons.profile_circled,
              size: 30,
              weight: 50,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: context.screenHeight / 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      imageLists.length,
                      (index) => Card(
                        margin: const EdgeInsets.all(15.0),
                        elevation: 10.0,
                        child: Column(
                          children: [
                            Image.asset(
                              imageLists[index],
                              height: 180,
                            ),
                            10.heightBox,
                            Text(
                              imagesCatagoryName[index],
                              style: const TextStyle(
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              25.heightBox,
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Top Images',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  imageLists.length,
                  (index) => Card(
                    margin: const EdgeInsets.all(15.0),
                    elevation: 10.0,
                    child: Image.asset(imageLists[index]),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
