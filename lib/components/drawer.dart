import 'package:flutter/material.dart';
import 'package:funnews/colors/colors.dart';

Widget customDrawer(BuildContext context) =>

Drawer(

  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Text('Drawer Header'),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: 

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [

            Container(
              margin: const EdgeInsets.only(top: 17),
              child: 
              const Icon(Icons.add_location_rounded),
            ),

            SizedBox(
              //height: 400,
              width: 250,
              child: 
                
                Column(
                  children: <Widget>[
                    //const SizedBox(height:20.0),

                    ExpansionTile(
                      title:               
                      const Text(
                        "Country",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      children: <Widget>[

                        InkWell(
                          child: const ListTile(
                            title: Text('United Arab Emirates'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Argentina'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Austria'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Australia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Belgium'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Bulgaria'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Brazil'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Canada'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Switzerland'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('China'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Colombia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Cuba'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Czechia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Germany'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Egypt'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('France'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('United Kingdom of Great Britain and Northern Ireland'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Greece'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Hong Kong'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Hungary'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Indonesia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Ireland'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Israel'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Italy'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Japan'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Korea'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Lithuania'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Latvia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Morocco'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Mexico'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Malaysia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Nigeria'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Netherlands'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Norway'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('New Zealand'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Philippines'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Poland'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Portugal'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Romania'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Serbia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Russian Federation'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Saudi Arabia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Sweden'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Singapore'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Slovenia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Slovakia'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Thailand'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Turkey'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Taiwan, Province of China'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Ukraine'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('United States of America'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('Venezuela'),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const ListTile(
                            title: Text('South Africa'),
                          ),
                          onTap: () {},
                        ),             
                      ],
                    ),
                  ],
                ),
            )
          ]
        ),
      ),

      // ListTile(
      //   title: const Text('Item 2'),
      //   onTap: () {

      //     Navigator.pop(context);
      //   },
      // ),
    ],
  ),
);