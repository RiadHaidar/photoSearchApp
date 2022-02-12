import 'package:flutter/material.dart';
import 'package:foodapp/models/meal.dart';



class MealItem extends StatelessWidget {
final String id;
final String imageURL;
  final String title;
  final Affordability affordability;
final Complexity complexity;
final int duration;
  MealItem({
    required this.id,
    required this.imageURL,
   required  this.title, 
   required this.affordability, 
   required this.complexity , 
   required this.duration });
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        appBar: AppBar(title: Text(title),),
        backgroundColor: Color(0xff4FBDBA),
        body: Container(
          child: InkWell(
            
            onTap: () {},
            child: Container(
            
              
              height: MediaQuery.of(context).size.height * 0.4,
              child: Card(
                //margin: EdgeInsets.all(10),
                color: Color(0xff35858B),
                elevation: 4,
                    shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),),
                child: Column(
                  children: <Widget>[
                    Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://blogs.biomedcentral.com/on-medicine/wp-content/uploads/sites/6/2019/09/iStock-1131794876.t5d482e40.m800.xtDADj9SvTVFjzuNeGuNUUGY4tm5d6UGU5tkKM0s3iPk-620x342.jpg',
                            height: 250.0,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                            Positioned(
                      //  width: MediaQuery.of(context).size.width *0.5 ,
                      top: 230,
                      left: MediaQuery.of(context).size.width * 0.3,
                      right: MediaQuery.of(context).size.width * 0.3,
                      child: Container(
                        //margin: EdgeInsets.only(top: 5),
                        //  padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
      
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Text(
                          'name of food',
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                                
                      ],
                    ),
      
                    Padding(
                      padding: EdgeInsets.only(left: 15.0 ,right: 15.0 , top: 30.0 ,),
                      child: Row(
                    
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                         Row(
                           children: [
                             Container(
                               color: Colors.black,
                               child: Text(complexity.toString()),
                             ),
                           ],
                         ), 
                         Row(
                           children: [
                             Container( color: Colors.amberAccent,
                             child: Text(duration.toString()),),
                           ],
                         ), 
                         Row(
                           children: [
                             Container(
                               color: Colors.blue,
                               child: Text(affordability.toString()),
                             ),
                           ],
                         ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* Material(
      child: InkWell(
        onTap: () {},
        child: Card(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          elevation: 4,
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),),
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://blogs.biomedcentral.com/on-medicine/wp-content/uploads/sites/6/2019/09/iStock-1131794876.t5d482e40.m800.xtDADj9SvTVFjzuNeGuNUUGY4tm5d6UGU5tkKM0s3iPk-620x342.jpg',
                      height: 250.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                      Positioned(
                //  width: MediaQuery.of(context).size.width *0.5 ,
                top: 230,
                left: MediaQuery.of(context).size.width * 0.3,
                right: MediaQuery.of(context).size.width * 0.3,
                child: Container(
                  //margin: EdgeInsets.only(top: 5),
                  //  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white),
    
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.1,
                  child: Text(
                    'name of food',
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
                          
                ],
              ),
    
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
              
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Row(
                     children: [
                       Container(
                         color: Colors.black,
                         child: Text('dasdsasda'),
                       ),
                     ],
                   ), 
                   Row(
                     children: [
                       Container( color: Colors.amberAccent,
                       child: Text('xxxxx'),),
                     ],
                   ), 
                   Row(
                     children: [
                       Container(
                         color: Colors.blue,
                         child: Text('zzzzzzzz'),
                       ),
                     ],
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    */