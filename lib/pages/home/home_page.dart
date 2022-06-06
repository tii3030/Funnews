import 'package:flutter/material.dart';
import 'package:funnews/colors/colors.dart';
//import 'package:funnews/components/drawer.dart';
import 'package:funnews/images/images.dart';
import 'package:funnews/pages/Health/health.dart';
import 'package:funnews/pages/Science/science.dart';
import 'package:funnews/pages/general/general.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../services/api_service.dart';
import '../technology/technology.dart';
import '../business/business.dart';
import '../../store/store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    ); 
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  ApiService client = ApiService();
  int _selectedIndex = 2;
  MainStore store = GetIt.I.get<MainStore>();

  final List<Widget> _screens = [
    const Business(),
    const Health(),
    const Technology(),
    const Science(),
    const General(),
  ];

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
				currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              label: "Business",
              backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Health",
              backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.computer_rounded),
              label: "Technology",
              backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.science),
              label: "Science",
              backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: "General",
            backgroundColor: AppColors.primary,
          ),
        ],
      ),

      appBar: AppBar(

        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(
        //       Icons.search,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       // do something
        //     },
        //   )
        // ],
        
        backgroundColor: AppColors.primary,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            AppImages.logoAppBar,
          ],
        ),
      ),

      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImages.logo,
                ],
              ),
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

                                onTap: () {
                                  store.addCountry('ae');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },

                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Argentina'),
                                ),
                                onTap: () {
                                  store.addCountry('ar');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Austria'),
                                ),
                                onTap: () {
                                  store.addCountry('at');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Australia'),
                                ),
                                onTap: () {
                                  store.addCountry('au');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Belgium'),
                                ),
                                onTap: () {
                                  store.addCountry('be');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Bulgaria'),
                                ),
                                onTap: () {
                                  store.addCountry('bg');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Brazil'),
                                ),
                                onTap: () {
                                  store.addCountry('br');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Canada'),
                                ),
                                onTap: () {
                                  store.addCountry('ca');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Switzerland'),
                                ),
                                onTap: () {
                                  store.addCountry('ch');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                             
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('China'),
                                ),
                                onTap: () {
                                  store.addCountry('cn');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Colombia'),
                                ),
                                onTap: () {
                                  store.addCountry('co');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                             
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Cuba'),
                                ),
                                onTap: () {
                                  store.addCountry('cu');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Czechia'),
                                ),
                                onTap: () {
                                  store.addCountry('cz');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Germany'),
                                ),
                                onTap: () {
                                  store.addCountry('de');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Egypt'),
                                ),
                                onTap: () {
                                  store.addCountry('eg');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('France'),
                                ),
                                onTap: () {
                                  store.addCountry('fr');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('United Kingdom of Great Britain and Northern Ireland'),
                                ),
                                onTap: () {
                                  store.addCountry('gb');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Greece'),
                                ),
                                onTap: () {
                                  store.addCountry('gr');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Hong Kong'),
                                ),
                                onTap: () {
                                  store.addCountry('hk');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Hungary'),
                                ),
                                onTap: () {
                                  store.addCountry('hu');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Indonesia'),
                                ),
                                onTap: () {
                                  store.addCountry('id');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Ireland'),
                                ),
                                onTap: () {
                                  store.addCountry('ie');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Israel'),
                                ),
                                onTap: () {
                                  store.addCountry('il');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Índia'),
                                ),
                                onTap: () {
                                  store.addCountry('in');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Italy'),
                                ),
                                onTap: () {
                                  store.addCountry('it');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Japan'),
                                ),
                                onTap: () {
                                  store.addCountry('jp');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Korea'),
                                ),
                                onTap: () {
                                  store.addCountry('kr');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Lithuania'),
                                ),
                                onTap: () {
                                  store.addCountry('lt');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Latvia'),
                                ),
                                onTap: () {
                                  store.addCountry('lv');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Morocco'),
                                ),
                                onTap: () {
                                  store.addCountry('ma');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Mexico'),
                                ),
                                onTap: () {
                                  store.addCountry('mx');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Malaysia'),
                                ),
                                onTap: () {
                                  store.addCountry('my');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Nigeria'),
                                ),
                                onTap: () {
                                  store.addCountry('ng');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Netherlands'),
                                ),
                                onTap: () {
                                  store.addCountry('nl');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Norway'),
                                ),
                                onTap: () {
                                  store.addCountry('no');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('New Zealand'),
                                ),
                                onTap: () {
                                  store.addCountry('nz');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Philippines'),
                                ),
                                onTap: () {
                                  store.addCountry('ph');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Poland'),
                                ),
                                onTap: () {
                                  store.addCountry('pl');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Portugal'),
                                ),
                                onTap: () {
                                  store.addCountry('pt');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Romania'),
                                ),
                                onTap: () {
                                  store.addCountry('ro');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Serbia'),
                                ),
                                onTap: () {
                                  store.addCountry('rs');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Russian Federation'),
                                ),
                                onTap: () {
                                  store.addCountry('ru');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Saudi Arabia'),
                                ),
                                onTap: () {
                                  store.addCountry('sa');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Sweden'),
                                ),
                                onTap: () {
                                  store.addCountry('se');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Singapore'),
                                ),
                                onTap: () {
                                  store.addCountry('sg');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Slovenia'),
                                ),
                                onTap: () {
                                  store.addCountry('si');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Slovakia'),
                                ),
                                onTap: () {
                                  store.addCountry('sk');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Thailand'),
                                ),
                                onTap: () {
                                  store.addCountry('th');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Turkey'),
                                ),
                                onTap: () {
                                  store.addCountry('tr');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Taiwan, Province of China'),
                                ),
                                onTap: () {
                                  store.addCountry('tw');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Ukraine'),
                                ),
                                onTap: () {
                                  store.addCountry('ua');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('United States of America'),
                                ),
                                onTap: () {
                                  store.addCountry('us');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('Venezuela'),
                                ),
                                onTap: () {
                                  store.addCountry('ve');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),
                              InkWell(
                                child: const ListTile(
                                  title: Text('South Africa'),
                                ),
                                onTap: () {
                                  store.addCountry('za');
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => super.widget
                                    )
                                  );
                                },                              
                              ),             
                            ],
                          ),
                        ],
                      ),
                  )
                ]
              ),
            ),

            Container(
              height: double.infinity,
              child: 
              Align(
                alignment: Alignment.bottomCenter,
                child:
                GestureDetector(
                  onTap: () async {},

                  child:    

                  Shimmer(
                    duration: const Duration(seconds: 1),
                    interval: const Duration(milliseconds: 100),
                    color: Colors.white,
                    colorOpacity: 0.3,
                    enabled: true,
                    direction: const ShimmerDirection.fromLTRB(),

                    child:               
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 54,

                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          (AppColors.primary),
                          (AppColors.primary)
                        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                        
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],

                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                          )
                        ],
                      ),

                      child:

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "LOGOUT",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          AppImages.logout,
                        ]
                      )
                    ),
                  ),
                ),
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

        
      ),
      
      body: _screens[_selectedIndex],
    );  
  }
}
