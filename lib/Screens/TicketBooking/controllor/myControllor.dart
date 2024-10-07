import 'package:get/get.dart';

class myController extends GetxController {
  RxInt myDateIndex = 9999.obs;
  RxInt myvenueIndex = 9999.obs;
  RxInt mytimeIndex = 9999.obs;

  RxList mySelectedMovieSeats = [].obs;

  // List of reserved seats (ensure each number corresponds to a seat in 'seats')
  final List<int> reservedSeats = [
    2,
    3,
    4,
    5,
    9,
    10,
    12,
    13,
    15,
    16,
    21,
    22,
    23,
    24,
    25,
    30,
    31,
    37,
    38,
    47,
    48,
    63,
    64,
    65,
    67,
    68,
    59,
    60
  ];

  // List of seats with unique numbers
  final List<dynamic> seats = [
    null, 1, 2, 3, null, 4, 5, 6, null, // Row 1
    7, 8, 9, 10, null, 11, 12, 13, 14, // Row 2
    15, 16, 17, 18, null, 19, 20, 21, 22, // Row 3
    23, 24, 25, 26, null, 27, 28, 29, 30, // Row 4
    31, 32, 33, 34, null, 35, 36, 37, 38, // Row 5
    39, 40, 41, 42, null, 43, 44, 45,
    46, // Row 6 (Unique seat numbers continue)
    47, 48, 49, 50, null, 51, 52, 53, 54, // Row 7
    55, 56, 57, 58, null, 59, 60, 61, 62, // Row 8
    null, 63, 64, 65, null, 66, 67, 68, null // Row 9
  ];
}
