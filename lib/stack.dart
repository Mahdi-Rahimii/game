import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 500,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [Colors.red, Color(0xFF75FA08)],
            ),
          ),
          margin: EdgeInsets.all(10),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 34),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "00:00",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red,
                ),
                child: Icon(Icons.delete),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(child: Icon(Icons.restart_alt)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
