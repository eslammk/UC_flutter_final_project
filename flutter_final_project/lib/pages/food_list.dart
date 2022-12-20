import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_project/models/foods_class.dart';
import 'package:flutter_final_project/pages/shopping_bag.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key, required Food food});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
        selectedItemColor: Color.fromARGB(255, 48, 37, 48),
      ),
      appBar: AppBar(
        title: Text(" Food List "),
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
      ),
      body: Center(
          child: SafeArea(
              child: ListView.builder(
        itemCount: Food.foods.length,
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
                    backgroundImage: AssetImage(Food.foods[index].image),
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 20),
                  child: Text(
                    Food.foods[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              trailing: InkWell(
                child: IconButton(
                    icon: const Icon(
                      Icons.add_circle,
                      color: Color.fromARGB(255, 151, 135, 158),
                    ),
                    onPressed: () {}),
              ),
            ),
          );
        }),
      ))),
    );
  }
}
