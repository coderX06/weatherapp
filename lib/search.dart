import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/models/city_weather_model.dart';
import 'package:demo_application/services/repo.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class Search extends StatefulWidget {
  // List<WeatherModel> weatherModel = [];

//  Search({required this.weatherModel});

  @override
  State<Search> createState() => _SearchState();
}
class _Search extends WeatherApp{

}
class _SearchState extends State<Search>  {
  TextEditingController controller=TextEditingController();
  WeatherModel ? weatherModel;
  @override
  Widget build(BuildContext context) {

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Padding(padding: EdgeInsets.all(20)),

            TextField(  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 4,color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(50.0)

                )

            ),


                controller: controller

            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () async {
                  weatherModel = await Repo().getWeather(controller.text);
                  //print(Cityapi(coord: coord, weather: weather, base: base, main: main, visibility: visibility, wind: wind, clouds: clouds, dt: dt, sys: sys, timezone: timezone, id: id, name: name, cod: cod)?.main?.temp ?? "error");
                  setState(() {});
                },
                child: Text("search")),
          //  Text(" ${weatherModel?.main?.t}",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            Text("Temp : ${weatherModel?.main?.temp}$degree",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Text("min temp: ${weatherModel?.main?.tempMin}$degree",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
            Text("max temp: ${weatherModel?.main?.tempMax}$degree",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
          ],
        ));




  }


}
