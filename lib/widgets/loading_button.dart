import 'package:flutter/material.dart';
import 'package:quiki/utils/size_utils.dart';

class LoadingButton extends StatefulWidget {
  final Color color;
  final Widget child;
  final bool isLoading;
  final Color? borderColor;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  const LoadingButton({
    super.key,
    required this.color,
    required this.child,
    this.isLoading = false,
    this.borderColor,
    required this.onTap,
    this.borderRadius,
  });

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  late bool haveLoading;

  @override
  void initState() {
    super.initState();
    haveLoading = false;
  }

  onButtonTap() {
    if (widget.isLoading) {
      setState(() {
        haveLoading = true;
      });

      // Delay for 3 seconds to simulate loading, then update the state
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          haveLoading = false;
        });
        widget.onTap(); // Call the onTap callback after loading is done
      });
    } else {
      widget.onTap(); // If not loading, directly call the onTap callback
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: onButtonTap,
        borderRadius:
            widget.borderRadius ?? BorderRadius.all(Radius.circular(20.h)),
        splashColor: Colors.grey.withOpacity(0.7),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor ?? Colors.transparent),
            shape: BoxShape.rectangle,
            borderRadius:
                widget.borderRadius ?? BorderRadius.all(Radius.circular(20.h)),
            color: widget.color,
          ),
          child: haveLoading
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
