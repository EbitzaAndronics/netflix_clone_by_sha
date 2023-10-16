import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Core/Colors/constance.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index){
          return Column(
            children: [
              kHeight,
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                    height: 420,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("FEB",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        Text("11",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width -50,
                    height: 420,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 193,
                              child: Image.network(imageHorizontalUrl,
                                fit: BoxFit.cover,),
                            ),
                            Positioned(
                              right: 30,
                              bottom: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.70),
                                radius: 30,
                                child: IconButton(
                                    onPressed: (){},
                                    icon: const Icon(
                                      Icons.volume_off,
                                      color: kColorWhite,
                                      size: 35,)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Tall girl 2',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: kColorWhite,
                                fontFamily: GoogleFonts.bubblegumSans().fontFamily,
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Icon(Icons.add_alert,
                                    color: kColorWhite,),
                                  Text('Remind me'),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Icon(Icons.info,
                                    color: kColorWhite,),
                                  Text('Info'),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Text('Coming on friday',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kColorWhite
                          ),),
                        kHeight,
                        const Text('Tall girl 2',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kColorWhite,
                            //fontFamily: GoogleFonts.boogaloo().fontFamily,
                            //fontFamily: GoogleFonts.bubblegumSans().fontFamily,
                          ),
                        ),
                        const Text('Landing the lead in the school musical is a\n dream come true for jodi,'
                            'until the pressure\n sends her confidence-and her relationship\n-into a tailspin',
                          style: TextStyle(
                            color: Colors.grey,
                          ),)
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        }
    );
  }
}