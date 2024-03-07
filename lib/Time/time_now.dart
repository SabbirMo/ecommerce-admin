import 'package:flutter/material.dart';

class ViewTimeNow extends StatefulWidget {
  const ViewTimeNow({super.key});

  @override
  State<ViewTimeNow> createState() => _ViewTimeNowState();
}

class _ViewTimeNowState extends State<ViewTimeNow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("  11 hrs   15 min    04 Sec  ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}