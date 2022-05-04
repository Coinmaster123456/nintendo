import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
      darkTheme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(80, 80, 80, 1)))),
          scaffoldBackgroundColor: const Color.fromRGBO(45, 45, 45, 1)),
      themeMode: ThemeMode.dark,
      title: 'Nintendo',
      home: const Scaffold(body: Homescreen()),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData devicedata = MediaQuery.of(context);
    return Column(
      children: [
        Expanded(child: Container(), flex: 2), //Upper Spacing
        const Expanded(
            child: Notificationbar(), flex: 3), //Upper "Notificationbar"
        Expanded(child: Container(color: Colors.cyan), flex: 2), //Spacing
        const Expanded(child: Gamesection(), flex: 15), //Content - Games
        Expanded(child: Container(color: Colors.cyan), flex: 2), //Spacing
        const Expanded(child: Navigationbar(), flex: 4), //Bottom Navigationbar
        const Expanded(
            child: Navigationbartext(), flex: 2), //Bottom Navigationbar Text
        Expanded(
            child: FractionallySizedBox(
              child: Divider(
                color: const Color.fromRGBO(132, 132, 132, 1),
                thickness: devicedata.size.height / 365,
              ),
              widthFactor: 0.95,
            ),
            flex: 1),
        const Expanded(child: Bottomoptions(), flex: 2), //Bottom Options
        Expanded(child: Container(), flex: 1), //Bottom Spacing
      ],
    );
  }
}

class Notificationbar extends StatelessWidget {
  const Notificationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(), flex: 2),
        Expanded(
            child: FittedBox(
              child: Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(84, 84, 84, 1)),
                  child: FractionallySizedBox(
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(40, 40, 40, 1)),
                        child: FittedBox(
                            child: Image.asset(
                          "images/Star.webp",
                          width: 500,
                          height: 500,
                          scale: 0.6,
                        )),
                      ),
                      widthFactor: 0.9,
                      heightFactor: 0.9)),
            ),
            flex: 3),
        Expanded(
            child: FittedBox(
              child: Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(84, 84, 84, 1)),
                  child: FractionallySizedBox(
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(40, 40, 40, 1)),
                        child: FittedBox(
                            child: Image.asset(
                          "images/Star.webp",
                          width: 500,
                          height: 500,
                          scale: 0.6,
                        )),
                      ),
                      widthFactor: 0.9,
                      heightFactor: 0.9)),
            ),
            flex: 3),
        Expanded(child: Container(), flex: 29),
        Expanded(child: Container(color: Colors.red), flex: 4),
        const Expanded(
            child: FractionallySizedBox(
              child: FittedBox(
                child: IconTheme(
                    data:
                        IconThemeData(color: Color.fromRGBO(245, 245, 245, 1)),
                    child: Icon(Icons.wifi, size: 500)),
              ),
              widthFactor: 0.5,
              heightFactor: 0.5,
            ),
            flex: 2),
        Expanded(child: Container(color: Colors.red), flex: 2),
        const Expanded(
            child: FractionallySizedBox(
              child: FittedBox(
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: IconTheme(
                          data: IconThemeData(
                              color: Color.fromRGBO(245, 245, 245, 1)),
                          child: Icon(Icons.battery_full_sharp, size: 500)))),
              widthFactor: 0.9,
              heightFactor: 0.9,
            ),
            flex: 2),
        Expanded(child: Container(), flex: 2),
      ],
    );
  }
}

class Gamesection extends StatelessWidget {
  const Gamesection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devicedata = MediaQuery.of(context);
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: devicedata.size.width * 0.08),
        const Game(name: "Sus Game 13")
      ],
    );
  }
}

class Game extends StatelessWidget {
  const Game({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class Navigationbar extends StatelessWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devicedata = MediaQuery.of(context);
    var factor = 0.018;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RoundButton(
          icon: Icons.chat_outlined,
          iconColor: Color.fromRGBO(255, 90, 61, 1),
        ),
        SizedBox(width: devicedata.size.width * factor),
        const RoundButton(
          icon: Icons.shopping_bag_outlined,
          iconColor: Color.fromRGBO(255, 186, 30, 1),
        ),
        SizedBox(width: devicedata.size.width * factor),
        const RoundButton(
          icon: Icons.image_outlined,
          iconColor: Color.fromRGBO(19, 171, 255, 1),
        ),
        SizedBox(width: devicedata.size.width * factor),
        const RoundButton(
          icon: Icons.games_rounded,
          iconColor: Color.fromARGB(255, 179, 179, 179),
        ),
        SizedBox(width: devicedata.size.width * factor),
        const RoundButton(
          icon: Icons.settings_rounded,
          iconColor: Color.fromARGB(255, 179, 179, 179),
        ),
        SizedBox(width: devicedata.size.width * factor),
        const RoundButton(
          icon: Icons.power_settings_new_rounded,
          iconColor: Color.fromARGB(255, 179, 179, 179),
        ),
      ],
    );
  }
}

class Navigationbartext extends StatelessWidget {
  const Navigationbartext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devicedata = MediaQuery.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: const Text("Systemeinstellungen",
              style: TextStyle(
                  color: Color.fromRGBO(26, 179, 242, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w400)),
          right: devicedata.size.width / 2, //
        )
      ],
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({Key? key, required this.icon, required this.iconColor})
      : super(key: key);

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: SizedBox(
      height: 500,
      width: 500,
      child: ElevatedButton(
        onPressed: () {},
        style:
            ButtonStyle(shape: MaterialStateProperty.all(const CircleBorder())),
        child: FractionallySizedBox(
            child: FittedBox(
                child: IconTheme(
                    child: Icon(icon), data: IconThemeData(color: iconColor))),
            widthFactor: 0.6,
            heightFactor: 0.6),
      ),
    ));
  }
}

class Bottomoptions extends StatelessWidget {
  const Bottomoptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(), flex: 38),
        const Expanded(
            child: FittedBox(
                child: IconTheme(
                    data:
                        IconThemeData(color: Color.fromRGBO(245, 245, 245, 1)),
                    child: Icon(Icons.sports_esports_rounded, size: 500))),
            flex: 63),
        Expanded(child: Container(), flex: 646),
        const Expanded(
          child: FractionallySizedBox(
            child: FittedBox(
                child: IconTheme(
                    data:
                        IconThemeData(color: Color.fromRGBO(245, 245, 245, 1)),
                    child: Icon(Icons.add_circle_rounded, size: 500))),
            widthFactor: 0.8,
            heightFactor: 0.8,
          ),
          flex: 29,
        ),
        const Expanded(
            child: FittedBox(
                child: Text("Options",
                    style: TextStyle(color: Color.fromRGBO(245, 245, 245, 1)))),
            flex: 75),
        Expanded(child: Container(), flex: 28),
        const Expanded(
            child: FractionallySizedBox(
              child: FittedBox(
                  child: IconTheme(
                      data: IconThemeData(
                          color: Color.fromRGBO(245, 245, 245, 1)),
                      child: Icon(Icons.keyboard_return, size: 500))),
              widthFactor: 0.8,
              heightFactor: 0.8,
            ),
            flex: 26),
        const Expanded(
            child: FittedBox(
                child: Text("Start",
                    style: TextStyle(color: Color.fromRGBO(245, 245, 245, 1)))),
            flex: 48),
        Expanded(child: Container(), flex: 43),
      ],
    );
  }
}
