import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_test_app/app/themes/theme_colors.dart';

class MeasurementsTable extends StatelessWidget {
  const MeasurementsTable({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: size.width * 0.20,
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/weight.svg",
                        width: 16,
                        colorFilter: const ColorFilter.mode(
                            colorBlackText, BlendMode.srcIn),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "6.540",
                        style: GoogleFonts.poppins(
                          color: colorBlackText,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Weight",
                    style: GoogleFonts.poppins(
                      color: colorGrayMedium,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: colorGrayLight,
              height: 40,
              width: 1,
            ),
            Container(
              height: 50,
              width: size.width * 0.25,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/straighten.svg",
                        width: 16,
                        colorFilter: const ColorFilter.mode(
                          colorBlackText,
                          BlendMode.srcIn
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "6.540",
                        style: GoogleFonts.poppins(
                          color: colorBlackText,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Height",
                    style: GoogleFonts.poppins(
                      color: colorGrayMedium,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: colorGrayLight,
              height: 50,
              width: 1,
            ),
            Container(
              height: 50,
              width: size.width * 0.20,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chlorophyll Overgrow",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorBlackText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Moves",
                    style: GoogleFonts.poppins(
                      color: colorGrayMedium,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
