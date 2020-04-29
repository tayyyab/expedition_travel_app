part of 'main_screen.dart';

class VulturePage extends StatelessWidget {
  const VulturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Image.asset(
          'assets/vulture.png',
          height: MediaQuery.of(context).size.height / 3,
        ),
      ),
    );
  }
}
