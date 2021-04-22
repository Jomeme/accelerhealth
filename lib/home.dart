import 'package:accelerhealth/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/app_styles.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Column(
      children: [
        const SizedBox(height: 20,),
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  child: Image.asset('images/person.png'),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 117,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: textBackgroundColor2
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('₦5,000 left', style: TextStyle(color: pureBlack, fontSize: 14, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Text('\$0', style: TextStyle(color: pureBlack, fontSize: 70, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20,),
              Text('Add a memo', style: TextStyle(color: mutedColor, fontSize: 16, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(onPressed: () => _enterKey('1'), child: Text('1', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('2'), child: Text('2', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('3'), child: Text('3', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              )),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(onPressed: () => _enterKey('4'), child: Text('4', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('5'), child: Text('5', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('6'), child: Text('6', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              )),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(onPressed: () => _enterKey('7'), child: Text('7', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('8'), child: Text('8', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('9'), child: Text('9', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),))
                ],
              )),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(onPressed: (){}, child: Text('.', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: () => _enterKey('0'), child: Text('0', style: TextStyle(color: pureBlack, fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(onPressed: _delete, child: Icon(Icons.arrow_back_ios, color: pureBlack,),),
                ],
              ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: textBackgroundColor
                  ),
                  child: TextButton(onPressed: (){}, child: Text('Debit', style: TextStyle(color: pureBlack, fontSize: 18, fontWeight: FontWeight.bold),))
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: textBackgroundColor
                  ),
                    child: TextButton(onPressed: (){}, child: Text('Credit', style: TextStyle(color: pureBlack, fontSize: 18, fontWeight: FontWeight.bold),))
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  _enterKey(String s) {

  }

  _delete() {

  }
}