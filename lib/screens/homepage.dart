import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:histreet/widgets/camera.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  final BuildContext context;
  HomeScreen({super.key, required this.context});

  // Index de l'élément sélectionné dans la barre de navigation
  int _selectedIndex = 0;

  // Fonction de rappel qui sera exécutée lorsque l'élément de la barre de navigation est cliqué
  void _onItemTapped(int index) {
    // Mettre à jour l'index de l'élément sélectionné
    _selectedIndex = index;

    // Insérer le code à exécuter lorsque l'élément est cliqué ici
    switch (index) {
      case 0:
        // Action lorsque l'élément Accueil est cliqué
        break;
      case 1:
        // Action lorsque l'élément Recherche est cliqué
        break;
      case 2:
        // Action lorsque l'élément Favoris est cliqué
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        break;
      default:
        // Action par défaut
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF173828),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Container(
            color: const Color(0xFF161332),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'HISTREET',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                      fontSize: 32.0,
                    ),
                  ),
                  const SizedBox(
                    height: 300.0,
                    child: CameraScreen(),
                  ),
                  const Text(
                    'Scannez les plaques autour de vous pour découvrir des histoires cachées, des anecdotes et des informations sur les lieux que vous visitez. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      wordSpacing: 2.0,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 15.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Commencer le scan',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF161332),
        selectedItemColor: const Color(0xFF173828),
        unselectedItemColor: const Color(0xFF161332),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
