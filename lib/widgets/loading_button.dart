import 'package:flutter/material.dart';
import 'package:quiki/utils/size_utils.dart';

class LoadingButton extends StatefulWidget {
  final Color color;
  final Widget child;
  final bool isLoading;

  const LoadingButton({
    super.key,
    required this.color,
    required this.child,
    this.isLoading = false,
  });

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: widget.isLoading ? null : () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20.h)),
            color: widget.color,
          ),
          child: widget.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : widget.child,
        ),
      ),
    );
  }
}
