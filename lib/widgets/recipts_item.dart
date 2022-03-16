import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/recipts.dart';

class ReciptsItems extends StatelessWidget {
  // const ReciptsItems({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;

  ReciptsItems(
      {required this.id,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl});



  String get Ccomplexity{
    switch (complexity) {
      case Complexilty.Hard:
        return 'Hard';
        break;
      case Complexilty.Simple:
        return 'Simple';
        break;
      case Complexilty.Challenging:
        return 'Challenging';
        break;
    }
  }

  String get Aaffordability {
    switch (affordability) {
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.affordability:
        return 'affordabile';
        break;
    }
  }

  void selectRecipts() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipts,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 100,
                    width: 300,

                    // margin: EdgeInsets.only(bottom: 20),
                    color: Colors.black54,
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  bottom: 20,
                  right: 0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20,left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined),
                      SizedBox(width: 5,),
                      Text('$duration min'),
                      SizedBox(
                        width: 15,
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 5,),
                      Text(Ccomplexity),
                      SizedBox(
                        width: 15,
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 5,),
                      Text(Aaffordability),
                      SizedBox(
                        width: 15,
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
