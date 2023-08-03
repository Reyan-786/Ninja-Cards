import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(const MaterialApp(
    home:NinjaCard() ,
    ));
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(

        title:Text('Reyan ID Card'),
       centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        setState(() {
          ninjalevel+=1;
        });
        },
        child: Icon(Icons.add),
      ),
      
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget> [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/reyan.jpg'),
              radius: 60,
            ),
          ),
            Divider(
              height: 30,
                color: Colors.black,
            ),
            SizedBox(height: 20.0,),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'Reyan',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,

              ),


            ),
            // SizedBox(height: 18.0,),
            Text(
                '$ninjalevel',
              style:
                TextStyle(
                  color:Colors.red,
                  fontSize: 20.0,
                  fontWeight:FontWeight.w700,

                ),


            ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.deepPurple,


              ),
              SizedBox(width: 10.0,),
              Text(
                'reyanabidin169@gmail.com',
                 style:TextStyle(
                   color: Colors.blueGrey,
                   fontSize: 21.0,
                   fontWeight: FontWeight.bold,
                 )
              ),


            ],
          ),

        ],
      ),
    ),
    );
  }
}

