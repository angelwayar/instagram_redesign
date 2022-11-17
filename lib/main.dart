import 'package:flutter/material.dart';
import 'package:instagram_redesign/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFEDF0F6),
        body: const HomePage(),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                  size: 30.0,
                  color: Colors.black,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: TextButton(
                  onPressed: () => debugPrint('Upload photo'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF23B66F),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 5.0,
                      ),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
