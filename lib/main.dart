import 'package:flutter/material.dart';

class IterationFinder extends StatelessWidget {
  final int initialN;
  final int q;
  final int limitL;

  IterationFinder({
    required this.initialN,
    required this.q,
    required this.limitL,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize variables for iteration
    int n = initialN;
    int iterations = 0;

    // Perform the iterative process
    while (n / q < limitL) {
      n = n ~/ q; // Update N by dividing it by q (integer division)
      iterations++;
    }

    // Return the number of iterations
    return Text('Iterations: $iterations');
  }
}
