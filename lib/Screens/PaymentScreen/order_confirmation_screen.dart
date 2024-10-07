import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.sizeOf(context);
    return Scaffold(
      // appBar: myAppBar(title: "Order confirmation", myWidgets: []),
      // backgroundColor: Color(0xffff6faff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              GestureDetector(
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
                        "Order Confirmation",
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
              const SizedBox(
                height: 20,
              ),
              // Checkmark Icon
              Image.asset(
                  height: mySize.height * 0.13,
                  width: mySize.width * 0.2,
                  "assets/images/orderConfirmation.png"),
              // Order Complete Text
              const Text(
                'Order Complete',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your Order was Successfully Received at 04 oct 2024, 09:00AM',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(height: 15),
              // Movie Order Summary
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xff2E3350),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.grey.withOpacity(0.3),
                    //   spreadRadius: 2,
                    //   blurRadius: 5,
                    //   offset: Offset(0, 3),
                    // ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Movie Order Summary',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    _buildOrderDetail('Movie',
                        'Pokemon Detective Pikachu Summary - Order Summary - Order Summary'),
                    _buildOrderDetail('Venue', 'Palace Albany Theatre'),
                    _buildOrderDetail('Order Status', 'Booked'),
                    _buildOrderDetail('Order No', 'OD24022024358'),
                    _buildOrderDetail('Booking ID', 'ODSH000248200454'),
                    _buildOrderDetail('Show Date', 'Friday, 20 Dec 2019'),
                    _buildOrderDetail('Show Time', '09:00AM'),
                    _buildOrderDetail('Quantity', '01'),
                    _buildOrderDetail('Ticket Price', '\$37.82 '),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "(Inclusive of Service Tax)",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          // fit: FlexFit.tight,
                          flex: 2,
                          child: Text('Payment Mode',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        const Flexible(
                          flex: 1,
                          // fit: FlexFit.tight,
                          child: Text(
                            ":",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const Flexible(
                          // fit: FlexFit.tight,
                          flex: 2,
                          child: Text("NET BANKING",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        Flexible(
                          // fit: FlexFit.tight,
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text('PAID: ',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              Flexible(
                                child: Container(
                                  // color: Colors.yellowAccent,
                                  child: const Text('\$37.82',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Color(0xfffff004f),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Text(
              '$title',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          const Flexible(
            flex: 1,
            // fit: FlexFit.tight,
            child: Text(
              ":",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
