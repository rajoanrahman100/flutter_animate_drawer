import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:50,bottom: 70,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Miroslava Savitskaya',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),

          SizedBox(height: 40,),

          // Column(
          //   children: drawerItems.map((element) => Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       children: [
          //         Icon(element['icon'],color: Colors.white,size: 30,),
          //         SizedBox(width: 10,),
          //         Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))
          //       ],
          //
          //     ),
          //   )).toList(),
          // ),

          Expanded(

            child: ListView.builder(
              itemCount:drawerItems.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_,index){
                return ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Icon(drawerItems[index]["icon"],size: 18,),
                  ),
                  title: Text(drawerItems[index]["title"]),
                  onTap: (){
                    print(drawerItems[index]["title"]);
                  },
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Icon(Icons.settings,color: Colors.black,),
                SizedBox(width: 10,),
                Text('Settings',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Container(width: 2,height: 20,color: Colors.black,),
                SizedBox(width: 10,),
                Text('Log out',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)

              ],

            ),
          )


        ],
      ),

    );
  }
}
