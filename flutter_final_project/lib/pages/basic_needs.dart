import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_project/models/basics_class.dart';
import 'package:flutter_final_project/models/clothes_class.dart';
import 'package:flutter_final_project/models/foods_class.dart';
import 'package:flutter_final_project/models/school_class.dart';
import 'package:flutter_final_project/pages/clothes_list.dart';
import 'package:flutter_final_project/pages/food_list.dart';
import 'package:flutter_final_project/pages/money_page.dart';
import 'package:flutter_final_project/pages/school_list.dart';

class BasicNeeds extends StatefulWidget {
  const BasicNeeds({super.key});

  @override
  State<BasicNeeds> createState() => _BasicNeedsState();
}

class _BasicNeedsState extends State<BasicNeeds> {
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
        title: Text(" Basics Needs "),
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
      ),
      body: Center(
          child: SafeArea(
              child: ListView.builder(
        itemCount: Basic.basics.length,
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
                      backgroundImage: AssetImage(Basic.basics[index].image),
                    ),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      Basic.basics[index].name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                trailing: InkWell(
                  child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        index == 0
                            ? Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                                return FoodList(food: Food.foods[index]);
                              }))
                            : index == 1
                                ? Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                    return ClothesList(
                                        clothes: Clothes.clothees[index]);
                                  }))
                                : index == 2
                                    ? Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                        return SchoolList(
                                            school: School.schooll[index]);
                                      }))
                                    : index == 3
                                        ? Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                            return MoneyPage();
                                          }))
                                        : print("object");
                      }),
                ),
              ));
        }),
      ))),
    );
  }
}

      
// child: ListView.builder(
             // itemCount: Basic.basics.length,
             // itemBuilder: ((context, index) {
               // return Container(
                 // margin: EdgeInsets.all(10),
                  // child: Card(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(15)),
                  //   color: Color.fromARGB(255, 238, 222, 244),
                  //   margin: EdgeInsets.symmetric(vertical: 5),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(10),
                  //           child: CircleAvatar(
                  //             radius: 20,
                  //             backgroundImage:
                  //                 AssetImage(Basic.basics[index].image),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(10),
                  //           child: Text(
                  //             "Foods"
                  //             //Basic.basics[index].name,
                  //             ,
                  //             style: TextStyle(
                  //                 fontSize: 20, fontWeight: FontWeight.bold),
                  //           ),
                  //         ),

                          // child: IconButton(
                          //       icon: const Icon(Icons.arrow_forward_ios),
                          //       onPressed: () {
                          // Container(
                          //   child: IconButton(
                          //     icon: Icon(Icons.arrow_forward_ios),
                          //     onPressed: (() {}),
                          //   ),
                      
//     );
//   }
// }
  
              // contentPadding: EdgeInsets.only(left: 1, right: 10),
              // tileColor: Color.fromARGB(255, 238, 222, 244),
              // leading: Transform.scale(
              //   scale: 1.5,
              //   child: Padding(
              //     padding: const EdgeInsets.all(9),
              //     child: CircleAvatar(
              //       backgroundImage: AssetImage(Basic.basics[index].image),
              //     ),
              //   ),
              // ),
              // title: Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 20),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 5, right: 20),
              //     child: Text(
              //       Basic.basics[index].name,
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //   ),
              // ),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15)),
              // trailing: FloatingActionButton(
              //   child: Icon(Icons.next_plan),
              //   onPressed: () {},
              // ),
              // onTap: () {
              //   index == 0
              //      ?
              //   Navigator.of(context)
              //       .push(MaterialPageRoute(builder: (context) {
              //     return FoodList(food: Food.foods[index]);
              //  }))

              //  : index ==1 ?




              // },
              // InkWell(
              //   child: IconButton(
              //       icon: const Icon(Icons.arrow_forward_ios),
              //       onPressed: () {
              //         Navigator.of(context)
              //             .push(MaterialPageRoute(builder: ((context) {
              //           return FoodList(food: Food.foods[index]);
              //           // return ClothesList(clothes: Clothes.clothees[index]);
              //         })));
              //       }),
              // ),
//             ),
//           );
//         }),
//       ))),
//     );
//   }
  