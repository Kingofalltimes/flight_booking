import 'package:flight_booking/screens/tikit_view.dart';
import 'package:flight_booking/utils/App_info_list.dart';
import 'package:flight_booking/utils/app_styles.dart';
import 'package:flight_booking/widgets/view_all.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flight_booking/screens/Hotell_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Demo_list = [];
  var AddList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: styles.headlinestyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book Tikits",
                        style: styles.headlinestyle1,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () => _bottomSheetMore(context),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imj2.jpg"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(25),
              Container(
                height: 60,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      AddList = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    suffix: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(30),
              const appDoubleTextWidget(
                  bigtext: "upcoming Flights", smalltext: "View All")
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: ticketList
                  .map((singletikit) => Tikitview(
                        ticket: singletikit,
                        iscolor: null,
                      ))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const appDoubleTextWidget(
                  bigtext: " Hotels", smalltext: "View All")),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((singlehotell) => Hotell_screen(hotel: singlehotell))
                  .toList(),
            ),
          ),
          Text("${Demo_list.toString()}"),
        ],
      ),
    );
  }

  void _bottomSheetMore(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          // ignore: unnecessary_new
          return new Container(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 5.0,
              bottom: 5.0,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  height: 60,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        AddList = value;
                      });
                    },
                    // controller: _searchController,
                    decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      suffix: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {},
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Save");
                    Demo_list.add(AddList);
                    Navigator.pop(context);
                  },
                  // ignore: unnecessary_new
                  child: new Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
