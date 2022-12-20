import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_project/models/basics_class.dart';
import 'package:flutter_final_project/models/charities_class.dart';
import 'package:flutter_final_project/pages/basic_needs.dart';
import 'package:flutter_final_project/pages/shopping_bag.dart';

class CharitiesList extends StatefulWidget {
  const CharitiesList({super.key});

  @override
  State<CharitiesList> createState() => _CharitiesListState();
}

class _CharitiesListState extends State<CharitiesList> {
  // void navigateBottomBar(int index) {
  //   setState(() {});
  // }

  int _currentIndex = 0;
  List pages = [
    CharitiesList(),
    ShoppingBdag(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Shopping Bag",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color.fromARGB(255, 48, 37, 48),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text(
          " Charities List ",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
        elevation: 0,
      ),
      body: Center(
          child: SafeArea(
              child: ListView.builder(
        itemCount: Charity.Charities.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 1, right: 10),
              tileColor: Color.fromARGB(255, 238, 222, 244),
              leading: Transform.scale(
                scale: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Charity.Charities[index].image),
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 20),
                  child: Text(
                    Charity.Charities[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              trailing: InkWell(
                child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return BasicNeeds();
                      })));
                    }),
              ),
            ),
          );
        }),
      ))),
    );
  }
}
