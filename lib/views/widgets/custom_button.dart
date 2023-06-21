import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomBotton extends StatelessWidget {
  final String labelButton;
  final void Function()? onTap;
  final bool isLoading;
  const CustomBotton({
    super.key,
    required this.labelButton,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  labelButton,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}
