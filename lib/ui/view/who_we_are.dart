import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/photo/portada.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () => (),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Color.fromRGBO(35, 68, 101, 1),
              padding: EdgeInsets.all(18),
              shadowColor: Colors.white,
              elevation: 5,
            ),
            child: Icon(Icons.replay, size: 60, color: Color.fromRGBO(221, 116, 25, 1)),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  height: 200,
                  color: Color.fromRGBO(233, 226, 207, 0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quienes Somos',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          color: Color.fromRGBO(35, 68, 101, 1),
                          fontSize: 54,
                        ),
                      ),
                      Text(
                        'Brindamos estrategias y soluciones ambientales innovadoras y sostenibles acorde a la normatividad ambiental con el objetivo de contribuir al desarrollo del país, promoviendo la protección del ambiente, la equidad social y el crecimiento empresarial.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                          color: Color.fromRGBO(35, 68, 101, 1),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  color: Color.fromRGBO(233, 226, 207, 0.7),
                  child: Image.asset('assets/images/flecha.png', fit: BoxFit.cover,),
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}