import 'package:flutter/material.dart';


class WeightAndAge extends StatelessWidget {
  final String title;
  final int numper;
  final void Function()? increaseOnTap;
  final void Function()? decreaseOnTap;

  const WeightAndAge ({
    super.key,
    required this.title,
    required this.numper, this.increaseOnTap, this.decreaseOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 154,
        height: 170,
        decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
            ),
            const SizedBox(height: 5),
            Text(
              numper.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton.small(
                  heroTag: "$title 1",
                  onPressed: decreaseOnTap,
                backgroundColor: Color(0xff8B8C9E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(Icons.remove, color: Colors.white,),
                ),
                FloatingActionButton.small(
                heroTag: "$title 2",
                onPressed: increaseOnTap,
                backgroundColor: Color(0xff8B8C9E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(Icons.add, color: Colors.white,),
                ),
                
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
