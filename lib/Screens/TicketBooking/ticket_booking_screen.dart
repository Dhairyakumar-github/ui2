import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui2/Screens/PaymentScreen/payment_screen.dart';
import 'package:ui2/Screens/TicketBooking/controllor/myControllor.dart';
import 'package:intl/intl.dart';

// import '../Paymet/payment_screen.dart';
// import '../Widget/myController.dart';

class SelectTicketScreen extends StatefulWidget {
  SelectTicketScreen({super.key});

  @override
  State<SelectTicketScreen> createState() => _SelectTicketScreenState();
}

class _SelectTicketScreenState extends State<SelectTicketScreen> {
  myController mc = Get.put(myController());

  int selectedIndex = 1;
  int mySelectedSeats = -1;

  final List<Map<String, dynamic>> options = [
    {'id': 'friends', 'label': 'Friends', 'icon': Icons.group},
    {'id': 'family', 'label': 'Family', 'icon': Icons.family_restroom},
    {'id': 'couple', 'label': 'Couple', 'icon': Icons.favorite},
    {'id': 'man', 'label': 'Man', 'icon': Icons.person},
  ];

  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: mySize.height,
          width: mySize.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                // width: MediaQuery.of(context).size.width * 0.3,
                                child: Text(
                                  "Ticket Booking",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        DateFormat('EEEE dd.yyyy').format(DateTime.now()),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xff2e3350),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              10,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    mc.myDateIndex == index
                                        ? mc.myDateIndex.value = 9999
                                        : mc.myDateIndex.value = index;
                                  },
                                  child: myDateContainers(
                                    index: index,
                                    mc: mc,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Vanue',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: const BoxDecoration(
                            color: Color(0xff2e3350),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17),
                                bottomLeft: Radius.circular(17))),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                myvenueContainers(
                                    text: '3D', myIndex: 0, mc: mc),
                                myvenueContainers(
                                    text: 'MAX 4D', myIndex: 1, mc: mc),
                                myvenueContainers(
                                    text: 'IMAX 3D', myIndex: 2, mc: mc)
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Palace Albany Theatre',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(10, (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      mc.mytimeIndex == index
                                          ? mc.mytimeIndex.value = 9999
                                          : mc.mytimeIndex.value = index;
                                    },
                                    child: myTimeContainers(
                                      index: index,
                                      mc: mc,
                                    ),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Members',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 10),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xff2e3350),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17),
                                bottomLeft: Radius.circular(17))),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              options.length,
                              (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: GestureDetector(
                                  onTap: () =>
                                      setState(() => selectedIndex = index),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: selectedIndex == index
                                          ? null
                                          : index == 1
                                              ? Color(0xff1f203d)
                                              : Color(0xff1f203d),
                                      gradient: selectedIndex == index
                                          ? const LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color(0xfff06949),
                                                Color(0xff853aef)
                                              ],
                                            )
                                          : const LinearGradient(colors: [
                                              Color(0xff1f203d),
                                              Color(0xff1f203d),
                                            ]),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              '+',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontSize: 16),
                                            ),
                                            Icon(
                                              options[index]['icon']
                                                  as IconData,
                                              // color: selectedIndex == index ? Colors.white : Colors.black,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          options[index]['label'] as String,
                                          style: TextStyle(
                                            color: selectedIndex == index
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 255, 255, 255),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                mySelectedSeats = 0; // Reserved
                              });
                            },
                            child: Container(
                              height: 23,
                              width: 23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                gradient: mySelectedSeats == 0
                                    ? const LinearGradient(colors: [
                                        Color(0xffff6faff),
                                        Color(0xffff6faff)
                                      ]) // Selected gradient
                                    : const LinearGradient(colors: [
                                        Color(0xffff6faff),
                                        Color(0xffff6faff)
                                      ]), // Default gradient
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Reserved',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                mySelectedSeats = 1; // Available
                              });
                            },
                            child: Container(
                              height: 23,
                              width: 23,
                              decoration: BoxDecoration(
                                border: mySelectedSeats == 1
                                    ? Border.all(style: BorderStyle.none)
                                    : Border.all(color: Color(0xff343650)),
                                borderRadius: BorderRadius.circular(4),
                                gradient: mySelectedSeats == 1
                                    ? const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xfff06949),
                                          Color(0xff853aef)
                                        ],
                                      ) // Selected gradient
                                    : const LinearGradient(
                                        colors: [
                                          Color.fromARGB(0, 246, 250, 255),
                                          Color.fromARGB(0, 246, 250, 255)
                                        ],
                                      ), // Default gradient
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Available',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                mySelectedSeats = 2; // Selected
                              });
                            },
                            child: Container(
                              height: 23,
                              width: 23,
                              decoration: BoxDecoration(
                                border: mySelectedSeats == 2
                                    ? Border.all(style: BorderStyle.none)
                                    : Border.all(color: Color(0xff343650)),

                                borderRadius: BorderRadius.circular(4),
                                gradient: mySelectedSeats == 2
                                    ? const LinearGradient(
                                        colors: [
                                          Color(0xfff06949),
                                          Color(0xff853aef)
                                        ],
                                      ) // Selected gradient
                                    : const LinearGradient(
                                        colors: [
                                          Color.fromARGB(0, 246, 250, 255),
                                          Color.fromARGB(0, 246, 250, 255)
                                        ],
                                      ), // Default gradient
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Selected',
                            style: TextStyle(
                              color: Colors.white,
                              // fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 9, // Number of columns in a row
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                          ),
                          itemCount: mc.seats.length,
                          itemBuilder: (context, index) {
                            if (mc.seats[index] == null) {
                              return Container(); // Empty space for 'null'
                            } else if (mc.reservedSeats
                                .contains(mc.seats[index])) {
                              // Reserved seat, color it white and make it unclickable
                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                // child: Text(
                                //   mc.seats[index].toString(),
                                //   style: TextStyle(color: Colors.black, fontSize: 18),
                                // ),
                              );
                            } else {
                              // Regular seat, allow selection
                              return GestureDetector(
                                onTap: () {
                                  mc.mySelectedMovieSeats.contains(index)
                                      ? mc.mySelectedMovieSeats.remove(index)
                                      : mc.mySelectedMovieSeats.add(index);
                                },
                                child: Obx(() {
                                  return Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: mc.mySelectedMovieSeats
                                              .contains(index)
                                          ? Border.all(style: BorderStyle.none)
                                          : Border.all(
                                              color: Color(0xff343650),
                                            ),
                                      gradient: mc.mySelectedMovieSeats
                                              .contains(index)
                                          ? const LinearGradient(
                                              colors: [
                                                Color(0xfff06949),
                                                Color(0xff853aef)
                                              ], // Use your desired colors here
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                            )
                                          : const LinearGradient(
                                              colors: [
                                                Color.fromARGB(
                                                    0, 239, 243, 247),
                                                Color.fromARGB(0, 64, 124, 183)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    // child: Text(
                                    //   mc.seats[index].toString(),
                                    //   style: const TextStyle(
                                    //       color: Colors.black, fontSize: 18),
                                    // ),
                                  );
                                }),
                              );
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: Text(
                        "SEAT NO: 10,11,12",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentScreen(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xfff06949),
                                    Color(0xff853aef)
                                  ],
                                  // Use your desired colors here
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: mySize.width / 5),
                            child: const Text(
                              'Choose Your Seats',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class myDateContainers extends StatelessWidget {
  const myDateContainers({super.key, required this.index, required this.mc});

  final int index;
  final myController mc;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        constraints: BoxConstraints(minWidth: Get.width / 8),
        margin: const EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
            gradient: mc.myDateIndex.value == index
                ? const LinearGradient(
                    colors: [Color(0xfff06949), Color(0xff853aef)],
                    // Use your desired colors here
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : const LinearGradient(
                    colors: [
                      Color(0xff2e3350),
                      Color(0xff2e3350),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat('dd')
                  .format(DateTime.now().add(Duration(days: index))),
              style: TextStyle(color: Colors.white),
            ),
            Text(
              DateFormat('EEE')
                  .format(DateTime.now().add(Duration(days: index))),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    });
  }
}

class myvenueContainers extends StatelessWidget {
  const myvenueContainers({
    super.key,
    required this.text,
    required this.myIndex,
    required this.mc,
  });

  final String text;
  final int myIndex;
  final myController mc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        mc.myvenueIndex.value = myIndex;
      },
      child: Obx(() {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: myIndex == mc.myvenueIndex.value
                ? const LinearGradient(
                    colors: [Color(0xfff06949), Color(0xff853aef)],
                    // Use your desired colors here
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : const LinearGradient(
                    colors: [
                      Color(0xff1f203d),
                      Color(0xff1f203d),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
          ),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        );
      }),
    );
  }
}

class myTimeContainers extends StatelessWidget {
  const myTimeContainers({super.key, required this.index, required this.mc});

  final int index;
  final myController mc;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        constraints: BoxConstraints(minWidth: Get.width / 5),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            // color: mc.mytimeIndex.value == index ? Colors.red : Colors.black45,
            gradient: mc.mytimeIndex.value == index
                ? const LinearGradient(
                    colors: [Color(0xfff06949), Color(0xff853aef)],
                    // Use your desired colors here
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : const LinearGradient(
                    colors: [
                      Color(0xff1f203d),
                      Color(0xff1f203d),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat(
                'hh:mm',
              ).format(DateTime.now().add(Duration(hours: index))),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              DateFormat('aa')
                  .format(DateTime.now().add(Duration(hours: index))),
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      );
    });
  }
}
