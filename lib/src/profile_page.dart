import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String postOrientation = "per";

  createProfileTopView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(1),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(IMG_USER),
                      ),
                    ),
                  ],
                )),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SelectableText(
                "Alfeu Panzo Bena",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Icon(
                Icons.check_circle,
                color: Color.fromARGB(255, 0, 136, 246),
                size: 15,
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    SelectableText(
                      "PROGRAMADOR WEB & MOBILE",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    ),
                  ],
                )),
          ],
        ),
        SizedBox(height: 15),
        GestureDetector(
          child: Row(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1),
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage("assets/imgs/dorivaldo.jpg"),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage("assets/imgs/amadeu.jpg"),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            "3 contactos em comum: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          Text(
                            "Ricardo, Edgar, Anisio e Márcio",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  "Conectar",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 150,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: Colors.blue.shade900,
                ),
              ),
              child: Center(
                child: Text(
                  "Enviar mensagem",
                  style: TextStyle(color: Colors.blue.shade900),
                  textAlign: TextAlign.center,
                ),
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
        SizedBox(height: 30),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
            ),
          ),
        ),
        brightness: Brightness.light,
        elevation: 0.0,
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 36),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Alfeu Panzo Bena",
              style: TextStyle(
                  color: Colors.grey, fontSize: 12, fontFamily: FONT_MAIN),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        actions: [
          Container(
            child: GestureDetector(
              child: Icon(Icons.more_horiz, color: Colors.black),
              onTap: () {},
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: <Widget>[
          createProfileTopView(),
          SizedBox(height: 10),
          createListAndGridPostOrientation(),
          Divider(color: Colors.grey.shade200),
          SizedBox(height: 10),
          displayProfilePost(),
        ],
      ),
    );
  }

  createListAndGridPostOrientation() {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "Perfil",
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 11,
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
          Text(
            "Actividade",
            style: TextStyle(
                color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
          ),
          Text(
            "Experiencia",
            style: TextStyle(
                color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  displayProfilePost() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Acerca de",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "Me considero uma pessoa dedicada, disposto a apostar com os meus conhecimento de boa maneira nas empresas onde trabalhar. Minha paixáo é resolver problemas utilizando as tecnologias web e mobile como ferramentas.",
          style: TextStyle(
              color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 5),
          child: Row(
            children: <Widget>[
              Icon(CupertinoIcons.house_fill, color: Colors.grey, size: 16),
              SizedBox(width: 10),
              SelectableText(
                "Vive em Luanda, Angola",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 5),
          child: Row(
            children: <Widget>[
              Icon(CupertinoIcons.table_fill, color: Colors.grey, size: 16),
              SizedBox(width: 10),
              SelectableText(
                "Trabalha em Andorinha Tecnologia",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 5),
          child: Row(
            children: <Widget>[
              Icon(CupertinoIcons.info_circle_fill,
                  color: Colors.grey, size: 16),
              SizedBox(width: 10),
              SelectableText(
                "Ver mais informações de Alfeu",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Educação",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Universidade",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        GestureDetector(
          child: Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/imgs/uma.png"),
                            )),
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
                        "Universidade Metodista de Angola",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Container(
                      child: Text(
                        "Ciência da Computação",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Container(
                      child: Text(
                        "2019 - 2021",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
