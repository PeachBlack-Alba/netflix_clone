import 'package:flutter/material.dart';
import 'package:netflix_web_flutter/Style/Style.dart';
import 'package:netflix_web_flutter/Widget/QuestionBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget footerText(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: ThemeText.footerText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var totalHeigh = MediaQuery.of(context).size.height;
    var totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: totalHeigh,
                  width: totalWidth,
                  child: const ClipRRect(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("images/home.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: totalHeigh,
                  width: totalWidth,
                  color: Colors.black54,
                  child: Column(
                    children: <Widget>[
                      //First Element
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: <Widget>[
                            const SizedBox(
                              height: 100,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/logo.png"),
                              ),
                            ),
                            const Spacer(),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              color: const Color(0xffE50914),
                              onPressed: () {},
                              child: const Text(
                                "Iniciar sesión",
                                style: ThemeText.signInButton,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: totalHeigh * 0.23,
                      ),

                      //Big Ttitle
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          "Películas y series sin\nlímites y mucho más",
                          textAlign: TextAlign.center,
                          style: ThemeText.bigText,
                        ),
                      ),

                      const Text(
                        "A partir de 5,49 €. Cancela cuando quieras.\n",
                        textAlign: TextAlign.center,
                        style: ThemeText.smallText,
                      ),

                      SizedBox(
                        width: totalWidth * 0.53,
                        height: totalHeigh * 0.085,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.white,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "  Dirección de correo",
                                      hintStyle: ThemeText.inputtextfield),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                height: double.infinity,
                                width: double.infinity,
                                color: const Color(0xffE40914),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.0),
                                      child: Text(
                                        "Empezar ",
                                        style: ThemeText.boxTitle,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ],
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

            Container(
              height: 5.0,
              color: const Color(0xff222222),
            ),

            //Second Container
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: const Color(0xff000000),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Disfruta en tu TV.",
                              style: ThemeText.bigText,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Mira en televisores inteligentes, PlayStation, Xbox, Chromecast, Apple TV, reproductores Blu-ray y más.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Image(
                      image: AssetImage("images/pic1.png"),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: const Color(0xff222222),
            ),

            //third Container
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: const Color(0xff000000),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Image(
                      image: AssetImage("images/pic2.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Descarga tus programas para verlos sin conexión.",
                                  style: ThemeText.bigText,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Guarda tus favoritos fácilmente y siempre tendrás algo para ver.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: const Color(0xff222222),
            ),

            //fourth Container
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: const Color(0xff000000),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Mira en cualquier lugar.",
                              style: ThemeText.bigText,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Transmite películas y programas de TV ilimitados en tu teléfono, tableta, portátil y TV sin pagar más.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: totalWidth / 2,
                    child: const Image(
                      image: AssetImage("images/pic3.png"),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: const Color(0xff222222),
            ),

            Container(
              width: totalWidth,
              color: const Color(0xff000000),
              height: totalHeigh * 1.30,
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 36.0),
                    child: Text(
                      "Preguntas frecuentes",
                      style: ThemeText.bigText,
                    ),
                  ),
                  const QuestionBox("¿Qué es Netflix?"),
                  const QuestionBox("¿Cuánto cuesta Netflix?"),
                  const QuestionBox("¿Dónde puedo ver Netflix?"),
                  const QuestionBox("¿Cómo cancelo?"),
                  const QuestionBox("¿Qué puedo ver en Netflix?"),
                  const QuestionBox("¿Es Netflix bueno para los niños?"),
                  SizedBox(
                    height: totalHeigh * 0.08,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: SizedBox(
                      width: totalWidth * 0.53,
                      height: totalHeigh * 0.085,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.white,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " Dirección de correo",
                                    hintStyle: ThemeText.inputtextfield),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              color: const Color(0xffE40914),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "Empezar",
                                      style: ThemeText.boxTitle,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: const Color(0xff222222),
            ),

            Container(
              height: totalHeigh / 2,
              width: totalWidth,
              color: const Color(0xff000000),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "¿Preguntas? Call 900-000-000",
                        style: ThemeText.footerText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("FAQ"),
                            footerText("Relaciones con Inversores"),
                            footerText("Privacidad"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Centro de ayuda"),
                            footerText("Trabaja con nosotros"),
                            footerText("Preferencias de las cookies"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Cuenta"),
                            footerText("Formas de visualizar"),
                            footerText("Información corporativa"),
                            footerText("Netflix Originales"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Centro Media"),
                            footerText("Términos y condiciones"),
                            footerText("Contacta con nosotros"),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Netflix España",
                        style: ThemeText.footerText,
                      ),
                    ),
                    const Center(
                      child: Text(
                        "© Creado por Alba Torres Rodríguez",
                        style: ThemeText.footerText,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
