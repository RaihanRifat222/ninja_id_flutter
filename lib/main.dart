import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard() ,
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
          title: Text('Ninja Id Card'),
          centerTitle:true ,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja2.jpg'),
                radius: 40.0 ,
              ),
            ),
            Divider(
              height: 90.0 ,
              color: Colors.grey[100],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Raihan Rifat',
              style: TextStyle(
                color: Colors.redAccent[100],
                letterSpacing: 2.5,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.redAccent[100],
                letterSpacing: 2.5,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.redAccent[100],

                ),
                SizedBox(width: 10.0,),
                Text(
                  'raihanrifat222@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}






