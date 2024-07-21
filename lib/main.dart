import 'package:flutter/material.dart';

void main() {
  runApp(const BusniessCardApp());
}
class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:const Color( 0xFF2B475E),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
           const CircleAvatar( 
              radius: 110,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("images/tharwat.png"),
              ),
            ),
            const Text("Tqwa Mohamed",
            style:TextStyle( 
              color: Colors.white,
              fontSize:35,
              fontFamily: "Pacifico",
              ),
            ),
            const Text("Flutter Developer",
            style:TextStyle( 
              color: Color(0xFF6c8090),
              fontSize:20,
              fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xFF6c8090),
              thickness: 2,
              indent: 50,
              endIndent: 50,
              height: 20,
            ),
            //ممكن نستخدم ال ListTile widget هتبقى احسن و اسهل و اسرع 
            /*
            Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(horizontal:16,vertical:8),
              color: Colors.white,
              child: ListTile(
              leading: Icon(
                          Icons.phone,
                          size:35,
                          color:Color(0xFF2B475E),
                  ),
                  title: Text(
                          '(+20) 1012209297',
                          style: TextStyle(fontSize: 18,
                  ), 
                  ),
            ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(horizontal:16,vertical:8),
              color: Colors.white,
              child: ListTile(
              leading: Icon(
                      Icons.mail,
                      size:35,
                      color:Color(0xFF2B475E),
                  ),
                  title: Text(
                      'takwamohamed@gmail.com',
                      style: TextStyle(fontSize: 18,
                  ), 
                  ),
            ),
            ),*/
            //او نستخدم ال container
            Padding(
              padding:const  EdgeInsets.symmetric(vertical:8,horizontal:16),
              child:Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  ),
                height:65,
                child: const Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.only(left:16),
                      child:Icon(
                          Icons.phone,
                          size:35,
                          color:Color(0xFF2B475E),
                  ),
                ), 
                    Padding(
                      padding: EdgeInsets.only(left:22),
                      child: Text(
                          '(+20) 1012209297',
                          style: TextStyle(fontSize: 18,
                  ), 
                  ),
                ),
                ],
            ),
            ),
            ),
             Padding(
              padding:const EdgeInsets.symmetric(vertical:8, horizontal:16),
              child:Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  ),
                height:65,
                child:const Row(
                  children:[
                Padding(
                    padding: EdgeInsets.only(left:16),
                    child:Icon(
                      Icons.mail,
                      size:35,
                      color:Color(0xFF2B475E),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left:22),
                    child:Text(
                      'takwamohamed@gmail.com',
                      style: TextStyle(fontSize: 18,
                  ), 
                  ),
                ),
                ],
            ),
            ),
            ),
          ],
        ),
      )
    );
  }
}

