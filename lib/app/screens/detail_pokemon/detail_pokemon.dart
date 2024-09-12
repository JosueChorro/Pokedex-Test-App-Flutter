import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_test_app/app/screens/detail_pokemon/components/measurements_table.dart';
import 'package:pokedex_test_app/app/screens/detail_pokemon/components/pokemon_stats.dart';
import 'package:pokedex_test_app/app/screens/detail_pokemon/components/type_pokemon.dart';
import '../../themes/themes.dart';

class PokemonDetail extends StatefulWidget {
  const PokemonDetail({super.key});

  @override
  State<PokemonDetail> createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorPokemonGrass,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.33, left: 5, right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Column(
                          children: [
                            const TypePokemon(),
                            Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                      child: Text(
                        "About",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                            const MeasurementsTable(),
                            Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                  child: Container(
                                                    height: size.height * 0.1,
                                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                                    child: Center(
                                                      child: Text(
                            "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
                            style: GoogleFonts.poppins(
                              color: colorBlackText,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Text(
                                "Base Stats",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const PokemonStats(),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 25.0, top: 15.0, bottom: 10.0),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/arrow_back.svg",
                                          width: 32,
                                          colorFilter: const ColorFilter.mode(
                                              colorWhite,
                                              BlendMode.srcIn
                                          )
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                        child: Text(
                                          "POKEMON",
                                          style: GoogleFonts.poppins(
                                            fontSize: 24,
                                            color: colorWhite,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "#0000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: colorWhite,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: Opacity(
                                opacity: 0.1, // Ajusta la opacidad según tu diseño
                                child: SvgPicture.asset(
                                  'assets/icons/pokeball.svg',
                                  height: 225,
                                  // width: 250,// Ruta de la imagen de la pokebola
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.10,
                          vertical: size.height * 0.14
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.07),
                              child: SvgPicture.asset(
                                'assets/icons/chevron_left.svg',
                                colorFilter: const ColorFilter.mode(
                                  colorWhite,
                                  BlendMode.srcIn
                                ),
                                width: 24,
                                height: 24,
                              ),
                            ),
                            Image.asset(
                              'assets/images/poke_default.png',
                              // fit: BoxFit.fill,
                              // width: 210,
                              // height: 210,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.07),
                              child: SvgPicture.asset(
                                'assets/icons/chevron_right.svg',
                                colorFilter: const ColorFilter.mode(
                                    colorWhite,
                                    BlendMode.srcIn
                                ),
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
            )
          )
      ),
    );
  }
}
