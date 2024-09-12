import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_test_app/app/themes/theme_colors.dart';

class TypePokemon extends StatelessWidget {
  const TypePokemon({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            decoration: const BoxDecoration(
              color: colorPokemonFire,
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Text(
              "Grass",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: colorWhite,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.05,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            decoration: const BoxDecoration(
                color: colorPokemonGrass,
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Text(
              "Poison",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: colorWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
