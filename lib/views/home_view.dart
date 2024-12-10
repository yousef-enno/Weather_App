import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blue,
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody();
          } else {
            return const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 180),
                child: Column(
                  children: [
                    Text(
                      'Oops',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'There Was An ',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Error ',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.red,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Pls try later ',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}



// BlocBuilder<GetWeatherCubit, WeatherState>(
//         builder: (context, state) {
//           if (state is WeatherInitialState) {
//             return NoWeatherBody();
//           } else if (state is WeatherLoadedState) {
//             return WeatherInfoBody();
//           }else{
//             return const Center(
//             child: Padding(
//               padding: EdgeInsets.only(top: 180),
//               child: Column(
//                 children: [
//                   Text('Oops' , style: TextStyle(
//                     fontSize: 35,
//                   ),),
//                   SizedBox(
//                     height: 35,
//                   ),
//                    Text('There Was An ' , style: TextStyle(
//                     fontSize: 35,
//                   ),),
//                     SizedBox(
//                     height: 35,
//                   ),
//                        Text('Error ' , style: TextStyle(
//                     fontSize: 35,
//                     color: Colors.red,
//                     fontWeight: FontWeight.w700
//                   ),),
//                     SizedBox(
//                     height: 35,
//                   ),
//                          Text('Pls try later ' , style: TextStyle(
//                     fontSize: 35,
                   
//                   ),),
//                 ],
//               ),
//             ),
//           );
//           }
//         },
//       ),