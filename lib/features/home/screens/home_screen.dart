import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
const List<Map<String, dynamic>> foodItems = [
  {
    'name': 'Margherita Pizza',
    'image':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQZT-mMFzbCHQ1IC81oKT1oNlK445qt_JNgQ&s',
    'price': 249,
    'description':
    'Classic pizza topped with mozzarella, tomato sauce, and basil leaves.',
  },
  {
    'name': 'Cheese Burger',
    'image':
    'https://images.unsplash.com/photo-1572802419224-296b0aeee0d9?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hlZXNlYnVyZ2VyfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
    'price': 199,
    'description':
    'Juicy grilled beef patty layered with cheese, lettuce, and special sauce.',
  },
  {
    'name': 'Chicken Biryani',
    'image':
    'https://www.shutterstock.com/image-photo/traditional-chicken-biryani-served-brass-600nw-2622739739.jpg',
    'price': 299,
    'description':
    'Aromatic basmati rice cooked with tender chicken and Indian spices.',
  },
  {
    'name': 'Cold Coffee',
    'image':
    'https://cdn.pixabay.com/photo/2021/01/06/10/11/coffee-5893926_1280.jpg',
    'price': 149,
    'description':
    'Refreshing blend of coffee, milk, and ice for a perfect chill treat.',
  },
  {
    'name': 'Veg Sandwich',
    'image':
    'https://img.freepik.com/free-photo/close-up-boiled-egg-tomatoes-sandwich_23-2148590168.jpg?semt=ais_hybrid&w=740&q=80',
    'price': 129,
    'description':
    'Loaded with fresh veggies, cheese, and sauces between toasted bread.',
  },
  {
    'name': 'Chocolate Dessert',
    'image':
    'https://img.freepik.com/free-photo/closeup-freshly-baked-delicious-pumpkin-chocolate-brownie-with-ice-cream-plate_181624-38571.jpg?semt=ais_hybrid&w=740&q=80',
    'price': 179,
    'description':
    'Rich chocolate brownie served warm with vanilla ice cream.',
  },
  {
    'name': 'Pasta Alfredo',
    'image':
    'https://www.shutterstock.com/image-photo/chicken-alfredo-penne-creamy-pasta-600nw-2493019471.jpg',
    'price': 229,
    'description':
    'Creamy white sauce pasta with chicken, herbs, and parmesan cheese.',
  },
];
const List<Map<String, String>> categoryImages = [
  {'title': 'Pizza', 'image': 'assets/images/pizza.jpg'},
  {'title': 'Burger', 'image': 'assets/images/burger.jpg'},
  {'title': 'Drinks', 'image': 'assets/images/drinks.jpg'},
  {'title': 'Dessert', 'image': 'assets/images/dessert.jpg'},
];

class HomeScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => HomeScreen());

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('FoodXPress'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Material(
                      borderRadius: BorderRadius.circular(7),
                      elevation: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'What are you craving ?',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide(
                              color: Colors.black38,
                              width: 1,
                            ),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [categorySection(), foodList()]),
      ),
    );
  }

  Widget categorySection() {


    return Container(
      height: 150,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryImages.length,
        itemBuilder: (context, index) {
          final category = categoryImages[index]['title']!;
          final categoryImage = categoryImages[index]['image']!;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.5),
                  child: Image.asset(
                    categoryImage,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget foodList() {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: foodItems.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];


          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            foodItem['name'],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            foodItem['description'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Text(
                            'Get for \u20B9${foodItem['price']}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueAccent.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            imageUrl: foodItem['image'],
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            onPressed: () {
                              // Your logic here
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50, 30),

                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 6), // Space before button

              ],
            ),
          );

        },
      ),
    );
  }
}
