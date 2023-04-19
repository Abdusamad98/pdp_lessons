import 'package:flutter/material.dart';

class QuestionProgress extends StatelessWidget {
  const QuestionProgress(
      {Key? key, required this.currentCount, required this.totalCount})
      : super(key: key);

  final int currentCount;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, spreadRadius: 4, blurRadius: 3)
          ]),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          ...List.generate(currentCount, (index) {
            return Expanded(
              child: Container(
                height: 18,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 3,
                        color: Colors.grey.shade300
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: SizedBox(),
              ),
            );
          }),
          ...List.generate(totalCount - currentCount, (index) {
            return Expanded(
              child: SizedBox(),
            );
          }),
          const SizedBox(width: 6),

          Text("$currentCount / $totalCount"),
        ],
      ),
    );
  }
}
