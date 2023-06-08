import 'package:flutter/material.dart';

class AnimatedRowWidget extends StatefulWidget {
  final bool isEditMode;
  final Widget child;

  AnimatedRowWidget({required this.isEditMode, required this.child});

  @override
  _AnimatedRowWidgetState createState() => _AnimatedRowWidgetState();
}

class _AnimatedRowWidgetState extends State<AnimatedRowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _heightAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    if (widget.isEditMode) {
      _animationController.forward();
    }
  }

  @override
  void didUpdateWidget(covariant AnimatedRowWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isEditMode != oldWidget.isEditMode) {
      if (widget.isEditMode) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          height: _heightAnimation.value * (widget.child != null ? 1.0 : 0.0),
          child: Column(
            children: [
              child!,
            ],
          ),
        );
      },
      child: widget.child,
    );
  }
}
