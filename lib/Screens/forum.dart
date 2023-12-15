import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/constants&models/constants.dart';
import 'package:localancer/screens/Freelancer/FLnavbar.dart';
import 'package:localancer/selectedForum.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class Forums extends StatefulWidget {
  const Forums({Key? key}) : super(key: key);

  @override
  State<Forums> createState() => _ForumsState();
}

class _ForumsState extends State<Forums> {
  int _index = 0;
  String forumID = '';

  List<Forum> forums = [
    Forum(
      name: 'Event Photographers',
      numMembers: '1000 Members',
      numDiscussions: '200 Discussions',
      imageUrl: 'assets/forum-image.jpg',
      forumID: 'aaasssdf',
    ),
  ];

  void _onForumTapped(Forum forum) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectedForum(forumID: forum.forumID),
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/freelancer_homescreen');
          break;
        case 1:
          Navigator.pushNamed(context, '/forums');
          break;
        case 3:
          // Navigator.pushNamed(context, '/');
          break;
        case 4:
          // Navigator.pushNamed(context, '/');
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchForums();
  }

  Future<void> _fetchForums() async {
    try {
      final QuerySnapshot forumsSnapshot =
          await FirebaseFirestore.instance.collection('forums').get();

      setState(() {
        forums = forumsSnapshot.docs.map((doc) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          return Forum(
              name: data['name'],
              numMembers: data['numMembers'],
              numDiscussions: data['numDiscussions'],
              imageUrl: 'assets/forum-image.jpg',
              forumID: data['forumID']);
        }).toList();
      });
    } catch (e) {
      print('Error fetching forums: $e');
    }
  }

  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 430,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: ldarkgray,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Logo_2.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) => const Sidebar(),
                              transitionsBuilder: (_, animation, __, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Transform.scale(
                          scale: 1.3,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons8-hamburger-50.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Forums',
                            style: GoogleFonts.sora(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 46,
                          width: 385,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: llightergray,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 47,
                                height: 49,
                                decoration: BoxDecoration(
                                  color: llightergray,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.search,
                                    color: ldarkgray,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style: GoogleFonts.poppins(fontSize: 12),
                                  decoration: InputDecoration(
                                    hintText: 'e.g Wedding Photographers',
                                    hintStyle:
                                        GoogleFonts.poppins(fontSize: 12),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            GestureDetector(
              onTap: () {
                if (_index >= 0 && _index < forums.length) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SelectedForum(forumID: forums[_index].forumID),
                    ),
                  );
                } else {
                  // Handle the case where _index is out of range
                  print("Invalid index: $_index");
                }
              },
              child: Container(
                height: SizeConfig.blockSizeHorizontal! * 25,
                width: SizeConfig.blockSizeVertical! * 70,
                decoration: BoxDecoration(
                  color: kLightGreyer,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.blockSizeHorizontal! * 25,
                      width: SizeConfig.blockSizeVertical! * 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/Freelancer_4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeVertical! * 1,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Event Photographers',
                            style: SoraBold.copyWith(fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '1000 Members',
                            style: SoraLight.copyWith(
                                fontSize: 10, color: kContraGrey),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '200 Discussions',
                            style: SoraLight.copyWith(
                                fontSize: 10, color: kContraGrey),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: kPink,
                              border: Border.all(width: 1, color: kLightBlack),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Join',
                                style: SoraSemiBold.copyWith(color: kWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // Use a ListView.builder to create a list of forums
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: forums.length,
              itemBuilder: (context, index) {
                Forum forum = forums[index];
                return GestureDetector(
                  onTap: () {
                    if (_index >= 0 && _index < forums.length) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SelectedForum(forumID: forums[_index].forumID),
                        ),
                      );
                    } else {
                      // Handle the case where _index is out of range
                      print("Invalid index: $_index");
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: 16.0), // Adjust the value as needed
                    height: SizeConfig.blockSizeHorizontal! * 25,
                    width: SizeConfig.blockSizeVertical! * 70,
                    decoration: BoxDecoration(
                      color: kLightGreyer,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.blockSizeHorizontal! * 25,
                          width: SizeConfig.blockSizeVertical! * 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              forum.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeVertical! * 1,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                forum.name,
                                style: SoraBold.copyWith(fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                forum.numMembers,
                                style: SoraLight.copyWith(
                                    fontSize: 10, color: kContraGrey),
                              ),
                              SizedBox(height: 2),
                              Text(
                                forum.numDiscussions,
                                style: SoraLight.copyWith(
                                    fontSize: 10, color: kContraGrey),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: kLightBlack),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text('Joined'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
      floatingActionButton: Positioned(
        bottom: 16.0,
        right: 16.0,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/createForum');
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: kPink,
              image: DecorationImage(
                image: AssetImage('assets/plus-math.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Forum {
  final String name;
  final String numMembers;
  final String numDiscussions;
  final String imageUrl;
  final String forumID;

  Forum(
      {required this.name,
      required this.numMembers,
      required this.numDiscussions,
      required this.imageUrl,
      required this.forumID});
}
