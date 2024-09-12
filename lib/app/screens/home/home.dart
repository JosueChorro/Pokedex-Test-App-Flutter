import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_test_app/app/screens/home/components/pokemon_card.dart';
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
    final List<String> items = List.generate(6, (index) => 'Item ${index + 1}');

    return Scaffold(
      body: Container(
        color: colorRed,
        width: size.width,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/pokeball.svg", width: 24,),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Text(
                      "Pokédex",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: colorWhite
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.75,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset(
                            "assets/icons/search.svg",
                            colorFilter: const ColorFilter.mode(
                              colorRed,
                              BlendMode.srcIn
                            )
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2),
                          hintText: 'Search...',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            color: colorGrayMedium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: colorWhite,
                        ),
                      ),
                    ),

                    Container(
                      height: size.width * 0.09,
                      width: size.width * 0.09,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ]
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/tag.svg",
                        colorFilter: const ColorFilter.mode(
                          colorRed,
                          BlendMode.srcIn
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 0.0, top: 24.0),
                margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                height: size.height * 0.70,
                width: size.width,
                decoration: const BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 20.0,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: items.length,
                    itemBuilder: (BuildContext con, int item) {
                      return const PokemonCard();
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
