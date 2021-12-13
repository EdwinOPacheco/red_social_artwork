import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_social_artwork/domain/use_cases/controllers/authentication.dart';
import 'package:red_social_artwork/domain/use_cases/controllers/ui.dart';
import 'package:red_social_artwork/ui/pages/content/chats/chat_screen.dart';
import 'package:red_social_artwork/ui/pages/content/location/location_screen.dart';
import 'package:red_social_artwork/ui/pages/content/museums/museum_screen.dart';
import 'package:red_social_artwork/ui/pages/content/posts/post_screen.dart';
import 'package:red_social_artwork/ui/widgets/appbar.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);
  //static List<Widget> _widgets = <Widget>[FireStorePage(), ChatPage()];

// View content
  Widget _getScreen(int index) {
    switch (index) {
      case 1:
        return const LocationScreen();        
      case 2:
        return ChatScreen();
      case 3:
        return const MuseumsScreen();
      default:
        return const PostsScreen();
    }
  }

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    // Dependency injection: State management controller
    final UIController controller = Get.find<UIController>();
    final AuthController authController = Get.find<AuthController>();

    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        controller: controller,
        picUrl: 'https://uifaces.co/our-content/donated/gPZwCbdS.jpg',
        tile: const Text("ArtWork"),
        onSignOff: () {
          authController.manager.signOut();
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Obx(() => _getScreen(controller.reactiveScreenIndex.value)),
          ),
        ),
      ),
      // Content screen navbar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.public_outlined,
                  key: Key("offersSection"),
                ),
                label: 'Posts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.place_outlined,
                  key: Key("locationSection"),
                ),
                label: 'Ubicación',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  key: Key("statesSection"),
                ),
                label: 'Mensajes',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  key: Key("socialSection"),
                ),
                label: 'Catalogo',
              ),
            ],
            currentIndex: controller.screenIndex,
            onTap: (index) {
              controller.screenIndex = index;
            },
          )),
    );
  }
}