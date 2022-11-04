import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/util/image_path.dart';
import 'package:instagram_clone/util/spacing.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath('ic_logo_text'),
              height: 28,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 26,
                  height: 26,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_post'),
                      ),
                      size: 21,
                      color: Colors.black,
                    ),
                  ),
                ),
                const HorizontalSpacing(),
                SizedBox(
                  width: 26,
                  height: 26,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_like'),
                      ),
                      size: 21,
                      color: Colors.black,
                    ),
                  ),
                ),
                const HorizontalSpacing(),
                SizedBox(
                  width: 26,
                  height: 26,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_messenger'),
                      ),
                      size: 21,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
