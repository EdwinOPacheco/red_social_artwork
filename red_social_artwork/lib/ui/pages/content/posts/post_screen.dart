import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Cabecera
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Imagen de perfil
                  ClipOval(
                    child: Image.asset('images/model.jpg',
                    //network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                  SizedBox(
                    width: 13.0,
                  ),

                  // Usuario
                  Text(
                    'Milena',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              
              // Icono de ver mas
              Icon(Icons.more_vert)
            ],
          ),
        ),

        // Imagen publicada
        Image.asset('images/obra1.jpg'),
        
        // Iconos de interacción con el usuario
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.favorite),
                  SizedBox(width: 10.0,),
                  Icon(Icons.chat),
                  SizedBox(width: 10.0,),                  
                ],
              ),
            ],
          ),
        ),

        // Likes
        Row(
          children: <Widget>[
            SizedBox(width: 15.0,),
            ClipOval(
              child: Image.asset('images/model.jpg',
              //network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 25.0,
                height: 25.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.0,),

            // A los otros que les gustó
            Text('Les gusta a'),
            SizedBox(width: 5.0,),
            Text(
              'Capitan Fantastico',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 5.0,),
            Text('y'),
            SizedBox(width: 5.0,),
            Text(
              '1,937 más',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
      ],
    ); 
  }
}