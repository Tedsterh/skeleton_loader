part of skeleton_loader;

class SkeletonChild extends StatefulWidget {
  /// Number of skeleton items to show
  /// Default is 1
  final int items;

  /// A layout of how you want your skeleton to look like
  final Widget builder;

  /// Base Color of the skeleton list item
  /// Defaults to Colors.grey[300]
  final Color baseColor;

  /// Highlight Color of the skeleton list item
  /// Defaults to Colors.grey[100]
  final Color highlightColor;

  /// Highlight Color of the skeleton list item
  /// Defaults to ShimmerDirection.rtl
  final SkeletonDirection direction;

  /// Duration in which the transition takes place
  /// Defaults to Duration(seconds: 2)
  final Duration period;

  const SkeletonChild({
    Key? key,
    this.items = 1,
    required this.builder,
    this.baseColor = const Color(0xFFE0E0E0),
    this.highlightColor = const Color(0xFFF5F5F5),
    this.direction = SkeletonDirection.ltr,
    this.period = const Duration(seconds: 2),
  }) : super(key: key);

  @override
  _SkeletonChildState createState() => _SkeletonChildState();
}

class _SkeletonChildState extends State<SkeletonChild> {
  @override
  Widget build(BuildContext context) {
    ShimmerDirection direction = getDirection(widget.direction);

    return Shimmer.fromColors(
          baseColor: widget.baseColor,
          highlightColor: widget.highlightColor,
          direction: direction,
          period: widget.period,
          child: widget.builder,
        );
  }
}
