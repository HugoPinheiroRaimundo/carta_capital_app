import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [PageOne(), PageTwo(), PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            }),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                              onTap: (() {
                                _pageController.animateToPage(index,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              }),
                              child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: _activePage == index
                                      ? Colors.white
                                      : Colors.black)),
                        )),
              ),
            ))
      ]),
    );
  }
}

// PageOne

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash1.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              children: [
                const Text(
                  "PULAR",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: RichText(
              text: TextSpan(
                  text: "      Seja bem vindo ao \n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.robotoSerif().fontFamily,
                  ),
                  children: const <TextSpan>[
                TextSpan(
                  text: "  Carta",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                TextSpan(
                  text: "Capital",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )
              ])),
        )),
        SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Seguir",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        )
      ]),
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash2.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    children: const [
                      Text(
                        "PULAR",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(children: const [
                    Text(
                      "Receba as edições em sua casa\n   e tenha acesso ilimitado ao\n               conteúdo do app.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ]),
                ),
              )),
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.arrow_back, color: Colors.white),
                    Text(
                      "Voltar",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 260,
                    ),
                    Text(
                      "Seguir",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash3.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  children: [
                    const Text(
                      "PULAR",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            SizedBox(
              height: 80,
            ),
            Column(
              children: const [
                Text(
                  """Conheça mais\nbenefícios\ndos assinantes\nCarta""",
                  style: TextStyle(fontSize: 43, color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Submeta artigos ou textos ao\n exclusivo Blog do Assinante",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Submeta artigos ou textos ao\n exclusivo Blog do Assinante",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Submeta artigos ou textos ao\n exclusivo Blog do Assinante",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Submeta artigos ou textos ao\n exclusivo Blog do Assinante",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.arrow_back, color: Colors.white),
                  Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Text(
                    "Seguir",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
