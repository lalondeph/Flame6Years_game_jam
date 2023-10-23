import 'package:flame/collisions.dart';
import 'package:flame/game.dart';
import 'package:hive/hive.dart';


class TextGame extends FlameGame with HasCollisionDetection, CollisionCallbacks {

  late Box box;
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    box = Hive.box('soundSettings');

    add(
      router = RouterComponent(
          initialRoute: 'MainMenu',
          routes: {
            'MainMenu': OverlayRoute.existing(),
          },
    ),
    );
  }
}