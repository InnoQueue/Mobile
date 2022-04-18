part of '../home_page.dart';

class _AnimatedButton extends StatefulWidget {
  final Icon icon;
  final Function onTap;
  final bool leading;
  final bool actions;
  const _AnimatedButton({
    required this.icon,
    required this.onTap,
    this.leading = false,
    this.actions = false,
    Key? key,
  })  : assert(!(leading == true && actions == true)),
        assert(!(leading == false && actions == false)),
        super(key: key);

  @override
  State<_AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<_AnimatedButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 400),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.leading ? 10.0 : 0,
        right: widget.actions ? 10.0 : 0,
      ),
      child: IconButton(
        icon: ScaleTransition(
          scale: _animation,
          child: widget.icon,
        ),
        onPressed: () => widget.onTap(),
      ),
    );
  }
}
