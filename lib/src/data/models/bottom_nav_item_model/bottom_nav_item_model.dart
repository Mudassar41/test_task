class BottomNavItemModel {
  final String assetPath;
  final String label;
  final double width;
  final double height;

  BottomNavItemModel({
    required this.assetPath,
    required this.label,
    this.width = 20,
    this.height = 20,
  });
}
