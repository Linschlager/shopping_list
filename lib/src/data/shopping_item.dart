class ShoppingItem {
  final String title;
  final int count;

  const ShoppingItem({ this.title, this.count });
  @override
  String toString() {
    return 'ShoppingItem($title|$count)';
  }
}