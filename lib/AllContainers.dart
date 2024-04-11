import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? Key}) : super(key: Key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _customBorders(),
        _BorderRadius(),
        _customBorderRadius(),
        _gradient(),
        _boxShadow()
      ],
    );
  }
}

_basic() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.blue,
      height: 150.0,
    ),
  );
}

_borders() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150.0,
      decoration: BoxDecoration(
          color: Color(0xffedce6d),
          border: Border.all(
            color: Color(0xfff8c408),
            width: 4.0,
          )),
    ),
  );
}

_customBorders() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150.0,
      decoration: BoxDecoration(
          color: Color(0xff37c596),
          border: Border(
              top: BorderSide(
                color: Color(0xff0a5f3b),
                width: 4.0,
              ),
              bottom: BorderSide(color: Color(0xff002510), width: 5.0))),
    ),
  );
}

_BorderRadius() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150.0,
      decoration: const BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
    ),
  );
}

_customBorderRadius() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Color(0xff9349c3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ))),
  );
}

_gradient() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color(0xff751414),
              Color(0xffb5563f),
              Color(0xffe88c74)
            ]))),
  );
}

_boxShadow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150.0,
      decoration: BoxDecoration(
          color: Color(0xffbcc853),
          borderRadius: BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: Color(0xff202020)!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(image: AssetImage("assets/fondoo.jpg"))),
    ),
  );
}
