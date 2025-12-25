// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GenderRow extends StatelessWidget {
 final  String title;
 final IconData icon;
 final void Function()? onTap;
 final Color? color;

  const GenderRow({
    Key? key,
    required this.title,
    required this.icon, this.onTap, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 155,
          height: 180,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Icon(this.icon, size: 144, color: Colors.white),
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
