import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokedex_test_app/app/themes/theme_colors.dart';

class PokemonStats extends StatelessWidget {
  const PokemonStats({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "HP",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorPokemonGrass,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: colorGrayLight,
                  width: 1,
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    child: Text(
                      45.toString().padLeft(3, '0'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorBlackText,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.45,
                    barRadius: const Radius.circular(4.0),
                    backgroundColor:
                    colorPokemonGrass.withOpacity(0.2),
                    progressColor: colorPokemonGrass,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
