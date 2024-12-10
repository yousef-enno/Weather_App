import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😕 start ',
            style: TextStyle(fontSize: 26),
          ),
 Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Searchin Now ',style: TextStyle(
      fontSize: 26
    ),),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchView();
                }));
              },
              child: Text('🔎',
              style: TextStyle(fontSize: 26),)),
  ],
 )

        ],
        
      ),
      
    );
  }
}



//  IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return SearchView();
//                   },
//                 ),
//               );
//             },
//             icon: Icon(Icons.search),
//             color: Colors.white,
//           )

//🔎


          // TextButton(
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) {
          //         return SearchView();
          //       }));
          //     },
          //     child: Text('🔎',
          //     style: TextStyle(fontSize: 26),)),