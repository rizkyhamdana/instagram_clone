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
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
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
      body: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        padding: const EdgeInsets.all(4),
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            imagePathJpeg('ic_my_profile'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 0, right: 16),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return _buildListStories();
                          },
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildListStories() {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(left: 4),
      width: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(
          imagePathJpeg('ic_my_profile'),
        ),
      ),
    );
  }
}
