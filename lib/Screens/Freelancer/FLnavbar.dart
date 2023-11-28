import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  final int currentIndex;
  final Function(int) onTap;

  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: widget.currentIndex == 0
              ? Image.asset('assets/navbar/home-active.png')
              : Image.asset('assets/navbar/home-inactive.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 1
              ? Image.asset('assets/navbar/bookmark-active.png')
              : Image.asset('assets/navbar/bookmark-inactive.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 2
              ? Image.asset('assets/navbar/chat-active.png')
              : Image.asset('assets/navbar/chat-inactive.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 3
              ? Image.asset('assets/navbar/forum-active.png')
              : Image.asset('assets/navbar/forum-inactive.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 4
              ? Image.asset('assets/navbar/notif-active.png')
              : Image.asset('assets/navbar/notif-inactive.png'),
          label: '',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
