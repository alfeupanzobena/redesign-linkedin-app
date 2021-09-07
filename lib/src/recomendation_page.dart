import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_app_concept/src/components/searchBox.dart';
import 'package:linkedin_app_concept/src/profile_page.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';
import 'package:linkedin_app_concept/src/utils/navigator_util.dart';

class RecomendationPage extends StatefulWidget {
  const RecomendationPage({Key? key}) : super(key: key);

  @override
  _RecomendationPageState createState() => _RecomendationPageState();
}

class _RecomendationPageState extends State<RecomendationPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        child: SvgPicture.asset(
          "assets/imgs/Iconfeather-edit.svg",
          color: Colors.white,
          height: 20,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Container(
              child: GestureDetector(
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                              width: 4,
                              color: Colors.transparent,
                            ),
                          ),
                          child: Container(
                            constraints:
                                BoxConstraints(maxHeight: 50, maxWidth: 50),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.green,
                              backgroundImage: AssetImage(IMG_USER),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () => GoTo.page(context, page: ProfilePage()),
              ),
            ),
            SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Alfeu Panzo Bena",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: FONT_MAIN,
                  ),
                ),
                Text(
                  "DEVELOPER",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                    height: 1,
                    fontFamily: FONT_MAIN,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        child: SvgPicture.asset(
                          "assets/imgs/Iconfeather-search.svg",
                          color: Colors.grey,
                          height: 20,
                        ),
                        onTap: () {}),
                    SizedBox(width: 15),
                    GestureDetector(
                      child: SvgPicture.asset(
                        "assets/imgs/messenger.svg",
                        color: Colors.grey,
                        height: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: SearchBoxDelegate(),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  CategiasHomeView(),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Recomendados",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage(
                                              "assets/imgs/linked.jpg"),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                "Senior UI/UX Designer",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: Container(
                                              child: Text(
                                                "Distibit.io . Queretano",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/imgs/Iconfeather-bookmark1.svg",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 8, right: 10),
                            alignment: Alignment.centerLeft,
                            child: SelectableText(
                              "A sports nutrition company is looking for a UI/UX Designer who will be responsible to create visually engaging…",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Há 2 semanas",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/Grupo16480.png"),
                        )),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage(
                                              "assets/imgs/linked.jpg"),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                "UX Interative",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: Container(
                                              child: Text(
                                                "Distibit.io . Queretano",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 18,
                                  height: 18,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/imgs/Iconfeather-bookmark.svg",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 8, right: 10),
                            alignment: Alignment.centerLeft,
                            child: SelectableText(
                              "A sports nutrition company is looking for a UI/UX Designer who will be responsible to create visually engaging…",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Há 2 semanas",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategiasHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Empregos",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Personal",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Remoto",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Vue.js",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Node.js",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Empregos",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
