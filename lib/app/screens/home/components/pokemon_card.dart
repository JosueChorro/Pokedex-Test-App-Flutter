import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_test_app/app/themes/theme_colors.dart';
import 'package:pokedex_test_app/app/utils/utils.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushReplacementNamed(RoutesNames.detailPokemon);
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 3.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '#000',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  height: 44,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: colorGrayBackground,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 8.0, bottom: 4.0, left: 8.0),
                    child: Text(
                      'Pokémon Name',
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 30,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/poke_default.png", height: 75, width: 75,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
