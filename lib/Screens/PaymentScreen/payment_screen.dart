import 'package:flutter/material.dart';
import 'package:ui2/Screens/PaymentScreen/order_confirmation_Screen.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // myController mc = Get.put(myController());
  final color = false;

  bool _obscureText = true;

  // int selectedIndex = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: myAppBar(title: "Payment", myWidgets: []),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              // height: MediaQuery.of(context).size.height * 0.27, // First half
              decoration: const BoxDecoration(
                color: Color(0xff2E3350),
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter, // Starting point
                //     end: Alignment.bottomCenter,
                //     colors: [Color(0xfff995a66), Color(0xfff5f429a)]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                // color: Color(0xFFeff3f7),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width,
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
                                  "Payment",
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Pokemon Detective Pikachu",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Adventure, Family, Thriller",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              horizontalLine(
                                  title1: "THEATER",
                                  title2: "Palace Albany Theatre"),
                              const SizedBox(height: 5),
                              horizontalLine(
                                  title1: "SHOWTIME", title2: "09:00AM"),
                              const SizedBox(height: 5),
                              horizontalLine(
                                  title1: "AVAILABLE IN", title2: "3D"),
                              const SizedBox(height: 5),
                              horizontalLine(
                                  title1: "DATE", title2: "23 Dec 2019"),
                              const SizedBox(height: 5),
                              horizontalLine(
                                  title1: "Seats",
                                  title2: "F Row / F06, F07 & F08"),
                              const SizedBox(height: 20),

                              // const SizedBox(height: 5),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: MediaQuery.of(context).size.height *
                                0.13, // First half
                            width: MediaQuery.of(context).size.width *
                                0.25, // First half
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter, // Starting point
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xfff5f429a),
                                    Color(0xfff995a66),
                                  ]),
                              borderRadius: BorderRadius.circular(10),
                              // color: Color(0xFFeff3f7),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_circle_outline_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  'Trailer Video',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Select your Card to Continue Payment",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  // Track selected index
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                            // Trigger UI update with setState if this is inside a StatefulWidget
                          },
                          child: Container(
                            // margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: selectedIndex == 0
                                  ? const LinearGradient(colors: [
                                      Color(0xfff06949),
                                      Color(0xff853aef)
                                    ]) // Selected gradient
                                  : const LinearGradient(colors: [
                                      Color(0xff2E3350),
                                      Color(0xff2E3350),
                                    ]), // Default gradient
                            ),
                            child: Image.asset(
                              width: mySize.width * 0.09,
                              height: mySize.height * 0.02,
                              "assets/images/visa.png",
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                            // Trigger UI update with setState if this is inside a StatefulWidget
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: selectedIndex == 1
                                  ? const LinearGradient(colors: [
                                      Color(0xfff06949),
                                      Color(0xff853aef)
                                    ]) // Selected gradient
                                  : const LinearGradient(colors: [
                                      Color(0xff2E3350),
                                      Color(0xff2E3350),
                                      // Color(0xffff6faff)
                                    ]), // Default gradient
                            ),
                            child: Image.asset(
                              width: mySize.width * 0.09,
                              // height: mySize.height * 0.02,
                              "assets/images/mastercard.png",
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            }); // Trigger UI update with setState if this is inside a StatefulWidget
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),

                              gradient: selectedIndex == 2
                                  ? const LinearGradient(colors: [
                                      Color(0xfff06949),
                                      Color(0xff853aef)
                                    ]) // Selected gradient
                                  : const LinearGradient(colors: [
                                      Color(0xff2E3350),
                                      Color(0xff2E3350),
                                    ]), // Default gradient
                            ),
                            child: Image.asset(
                              width: mySize.width * 0.09,
                              height: mySize.height * 0.02,
                              "assets/images/maestroCard.png",
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                            // Trigger UI update with setState if this is inside a StatefulWidget
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: selectedIndex == 3
                                  ? const LinearGradient(colors: [
                                      Color(0xfff06949),
                                      Color(0xff853aef)
                                    ]) // Selected gradient
                                  : const LinearGradient(colors: [
                                      Color(0xff2E3350),
                                      Color(0xff2E3350),
                                    ]), // Default gradient
                            ),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                Text(
                                  'ADD CARD',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("CARDHOLDER NAME",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: "CARDHOLDER NAME",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb0b6ba),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "CARD NUMBER",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb0b6ba),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          // Month/Year Input Field
                          Expanded(
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: "MONTH / YEAR",
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffb0b6ba),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                              width: 20), // Space between the two fields
                          // CVV Input Field
                          Expanded(
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              obscureText: _obscureText,
                              decoration: const InputDecoration(
                                labelText: "CVV",
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffb0b6ba),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.3, // First half
              decoration: const BoxDecoration(
                color: Color(0xff2E3350),
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter, // Starting point
                //     end: Alignment.bottomCenter,
                //     colors: [Color(0xfff995a66), Color(0xfff5f429a)]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                // color: Color(0xFFeff3f7),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Summary",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "SUB TOTAL",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          " : ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "\$32.24",
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "INTERNET HANDING FEES",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          " : ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "\$05.58",
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Divider(
                        thickness: 0.2,
                        indent: MediaQuery.of(context).size.width * 0.1,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "TOTAL FEES",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          " : ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Text(
                            "\$37.82",
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                                builder: (context) => OrderConfirmationScreen(),
                              ));
                        },
                        child: Container(
                          height: mySize.height * 0.065,
                          width: mySize.width * 0.8,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xfff06949),
                                Color(0xff853aef) // Red   // Blue
                              ],
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                              child: Text(
                            'Pay \$37.58 ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row horizontalLine({required title1, required title2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            // color: Colors.grey,
            child: Text(
              title1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
        // const SizedBox(width: 20),
        const Flexible(
          flex: 1,
          // fit: FlexFit.tight,
          child: Text(
            ":     ",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        // const SizedBox(width: 10),
        Flexible(
          fit: FlexFit.tight,
          flex: 3,
          child: Container(
            // alignment: Alignment.centerLeft,
            // color: Colors.blue,
            child: Text(
              title2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              // textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
