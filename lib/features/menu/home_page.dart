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
                        margin: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
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
                            const VerticalSpacing(
                              height: 4,
                            ),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                width: 72,
                                child: const Text(
                                  'Your Texat',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 84,
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(left: 4),
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade800,
                Colors.yellow.shade600,
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(4),
            width: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                imagePathJpeg('ic_my_profile'),
              ),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 4),
            width: 72,
            child: const Text(
              'Your Textaa',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
