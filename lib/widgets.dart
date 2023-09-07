// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  DefaultContainer( this.leftIcon,this.name,this.rightIcon,  {Key? key})
      : super(key: key);

  IconData? rightIcon;
  IconData? leftIcon;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
        child: Center(
          child: Row(
            children:  [
              Icon(
                leftIcon!,
                color: Colors.white,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                name!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
               Icon(
                rightIcon!,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff3D3D3D),
      ),
    );
  }
}
