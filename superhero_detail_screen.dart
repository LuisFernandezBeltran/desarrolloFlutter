import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxBarWidth = screenWidth / 119;
    //final maxBarWidthTotal = screenWidth * 0.8;
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 199, 199, 0.836),
      appBar: AppBar(
        title: Text(superhero.name),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.black87,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.network(
            superhero.url,
            height: 600,
            width: double.infinity,
            fit: BoxFit.cover,

            //alignment: Alignment(0, -0.6),
          ),

          Text(
            superhero.name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            textAlign: TextAlign.center,
          ),
          Text(
            "Real name: ${superhero.realName}",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 600,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Text("Power: ", style: TextStyle(fontSize: 17))],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.power,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 192, 1, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Text("  ${superhero.powerstatsResponse.power}"),
                  ],
                ),

                Row(
                  children: [
                    Text("Intelligence: ", style: TextStyle(fontSize: 17)),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.intelligence,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 14, 192),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    Text("  ${superhero.powerstatsResponse.intelligence}"),
                  ],
                ),
                Row(
                  children: [
                    Text("Strength: ", style: TextStyle(fontSize: 17)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.strength,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 43, 42, 42),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    Text("  ${superhero.powerstatsResponse.strength}"),
                  ],
                ),

                Row(
                  children: [Text("Speed: ", style: TextStyle(fontSize: 17))],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.speed,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 21, 179, 21),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    Text("  ${superhero.powerstatsResponse.speed}"),
                  ],
                ),
                Row(
                  children: [
                    Text("Durability: ", style: TextStyle(fontSize: 17)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.durability,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 125, 5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    Text("  ${superhero.powerstatsResponse.durability}"),
                  ],
                ),
                Row(
                  children: [Text("Combat: ", style: TextStyle(fontSize: 17))],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:
                          (double.tryParse(
                                superhero.powerstatsResponse.combat,
                              ) ??
                              0) *
                          maxBarWidth,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 49, 64, 165),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    Text("  ${superhero.powerstatsResponse.combat}"),
                  ],
                ),
                SizedBox(height: 20),
               Text(
                  "Gender: ${superhero.appearanceResponse.gender}",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Race: ${superhero.appearanceResponse.race}",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Height: ${superhero.appearanceResponse.height}",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Weight: ${superhero.appearanceResponse.weight}",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Aliases: ${superhero.aliases}",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
