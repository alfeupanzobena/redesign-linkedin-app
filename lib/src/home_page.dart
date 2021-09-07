import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_app_concept/src/profile_page.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';
import 'package:linkedin_app_concept/src/utils/navigator_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 10),
          CategiasHomeView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Noticias",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Seguidos",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "Explorar",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 1.5,
                    width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          Posts(),
          Divider(
            color: Colors.grey.shade200,
          ),
          Posts2(),
          Divider(
            color: Colors.grey.shade200,
          ),
          Posts3(),
          Divider(
            color: Colors.grey.shade200,
          ),
          Posts4(),
          Divider(
            color: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }
}

class CategiasHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade900),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:
                        Icon(CupertinoIcons.plus, color: Colors.blue.shade900),
                  ),
                ),
                Text(
                  "Criar história",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/joao.jpg"),
                        )),
                  ),
                ),
                Text(
                  "João",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/maior.jpg"),
                        )),
                  ),
                ),
                Text(
                  "Daniel",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/matias.jpg"),
                        )),
                  ),
                ),
                Text(
                  "Matias",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/meury.jpg"),
                        )),
                  ),
                ),
                Text(
                  "Maria",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/simao.jpg"),
                        )),
                  ),
                ),
                Text(
                  "Simão",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                GestureDetector(
                  //onTap: () => GoTo.page(context, page: DetalhedoProdutoView()),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/amadeu.jpg"),
                        )),
                  ),
                ),
                Text(
                  "Amadeu",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        child: Column(
          children: <Widget>[
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(
                                                "assets/imgs/amadeu.jpg"),
                                          ),
                                        ),
                                      ],
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Amadeu Simão Samuel",
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
                                          "UI/UX DESIGNER AT LINKEDIN . 1h",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 8, right: 10),
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        "Buscamos talento para #Design\nEmpresa lider em plataformas digitais para serviços de UX\nTe envita de forma parte del equipa de trabalho.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ))
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/designer.png"),
                  )),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/imgs/like.svg",
                          height: 11,
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Recomendar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/messenger.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Comentar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/share.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        child: Text(
                          "Compartilhar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Posts2 extends StatelessWidget {
  const Posts2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        child: Column(
          children: <Widget>[
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(
                                                "assets/imgs/dorivaldo.jpg"),
                                          ),
                                        ),
                                      ],
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Dorivaldo Vicente dos Santos",
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
                                          "FRONTEND DEVELOPER AT LINKEDIN . 1h",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 8, right: 10),
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        "Buscamos talento para #Programador\nEmpresa lider em plataformas digitais para serviços de Vue.js\nTe envita de forma parte del equipa de trabalho.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ))
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/P4.jpg"),
                  )),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/imgs/like.svg",
                          height: 11,
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Recomendar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/messenger.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Comentar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/share.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        child: Text(
                          "Compartilhar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Posts3 extends StatelessWidget {
  const Posts3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        child: Column(
          children: <Widget>[
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(
                                                "assets/imgs/matias.jpg"),
                                          ),
                                        ),
                                      ],
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Matias de Assunção Panzo Bena",
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
                                          "UI/UX DESIGNER AT LINKEDIN . 1h",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 8, right: 10),
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        "Buscamos talento para #Design\nEmpresa lider em plataformas digitais para serviços de UX\nTe envita de forma parte del equipa de trabalho.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ))
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/linked.jpg"),
                  )),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/imgs/like.svg",
                          height: 11,
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Recomendar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/messenger.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Comentar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/share.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        child: Text(
                          "Compartilhar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Posts4 extends StatelessWidget {
  const Posts4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        child: Column(
          children: <Widget>[
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.blue.shade900,
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(1),
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(
                                                "assets/imgs/matias.jpg"),
                                          ),
                                        ),
                                      ],
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          "Matias de Assunção Panzo Bena",
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
                                          "UI/UX DESIGNER AT LINKEDIN . 1h",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 8, right: 10),
                      alignment: Alignment.centerLeft,
                      child: SelectableText(
                        "Buscamos talento para #Design\nEmpresa lider em plataformas digitais para serviços de UX\nTe envita de forma parte del equipa de trabalho.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ))
              ],
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/imgs/linked.jpg"),
                  )),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/imgs/like.svg",
                          height: 11,
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Recomendar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/messenger.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Comentar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/imgs/share.svg",
                            height: 11,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        child: Text(
                          "Compartilhar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
