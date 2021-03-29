import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  var categoryList = [
    {
      "name" : "Accessories",
      "cover_image": "images/cats/accessories.png",
    },
    {
      "name" : "Dress",
      "cover_image": "images/cats/dress.png",
    },
    {
      "name" : "Jeans",
      "cover_image": "images/cats/jeans.png",
    },
    {
      "name" : "Shoe",
      "cover_image": "images/cats/shoe.png",
    },
    {
      "name" : "T-shirt",
      "cover_image": "images/cats/tshirt.png",
    },
    {
      "name" : "Formal",
      "cover_image": "images/cats/formal.png",
    },
    {
      "name" : "Informal",
      "cover_image": "images/cats/informal.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
        // return SingleCategory(
        //   catName: categoryList[index]['name'],
        //   catCoverImage: categoryList[index]['cover_image'],
        // );
          return new Card(
            child: const ListTile(
              leading: const Icon(Icons.album),
              title: const Text('The Enchanted Nightingale'),
              subtitle: const Text(
                'Music by Julie Gable. Lyrics by Sidney Stein.',
              ),
            ),
          );
      }
    );
  }
}

class SingleCategory extends StatelessWidget {
  final catName;
  final catCoverImage;

  SingleCategory({
    this.catName,
    this.catCoverImage
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              catCoverImage,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(catName),
          ),
        ),
      ),
    );
  }
}


