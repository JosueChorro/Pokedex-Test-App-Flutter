import 'package:flutter/material.dart';
import 'package:pokedex_test_app/app/themes/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: colorRed,
        width: size.width,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 24.0),
                height: 32,
                width: 328,
                decoration: const BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
          
              Container(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 0.0, top: 24.0),
                height: 524,
                width: 352,
                decoration: const BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
