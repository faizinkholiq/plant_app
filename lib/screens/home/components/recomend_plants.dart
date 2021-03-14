import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          children: [
            RecomendPlantCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russian",
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),  
                  )
                );
              },
            ),
            RecomendPlantCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Mongolian",
              price: 300,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),  
                  )
                );
              },
            ),
            RecomendPlantCard(
              image: "assets/images/image_3.png",
              title: "Aravica",
              country: "Brazil",
              price: 627,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),  
                  )
                );
              },                                                                               
            ),
          ],
        ),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key, 
    this.image, 
    this.title, 
    this.country, 
    this.price, 
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 11,
                          )
                        ) 
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kPrimaryColor),
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
