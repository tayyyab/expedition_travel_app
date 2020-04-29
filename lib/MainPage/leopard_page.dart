part of 'main_screen.dart';

class LeopardPage extends StatelessWidget {
  const LeopardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffsetNotifier>(
      builder: (context, notifier, child) {
        return Transform.translate(
          offset: Offset(-45 - (0.5 * notifier.offset), 65),
          child: child,
        );
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          '72',
          style: TextStyle(
            fontSize: 350,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
