import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
class MyRactBtn extends StatefulWidget {
  final VoidCallback onPress;
  final String btnName;
  final IconData icon;
  MyRactBtn({super.key, required this.onPress, required this.btnName, required this.icon});

  @override
  State<MyRactBtn> createState() => _MyRactBtnState();
}

class _MyRactBtnState extends State<MyRactBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPress,
        child:Container(
          height: 50,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
              Theme.of(context).colorScheme.primary
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color:   Theme.of(context).colorScheme.primaryContainer
                    ,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.btnName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color:
                         Theme.of(context).colorScheme.primaryContainer
                       ),
              )
            ],
          ),
        ));
  }
}
