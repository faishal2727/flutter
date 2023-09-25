// import 'package:flutter/material.dart';
// import 'package:yuk_makan_app/data/api/api_services.dart';
// import 'package:yuk_makan_app/data/model/list_restaurant/response/response.dart';
// import 'package:yuk_makan_app/data/model/list_restaurant/restaurants/restaurants.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final ApiServices _apiServices = ApiServices();
//   late Future<ResponseRestaurants> _restaurant;

//   @override
//   void initState() {
//     super.initState();
//     try {
//       _restaurant = _apiServices.getRestaurants();
//     } catch (e) {
//       print("err : $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 24.0),
//               Expanded(
//                 child: FutureBuilder(
//                   future: _restaurant,
//                   builder:
//                       (context, AsyncSnapshot<ResponseRestaurants> snapshot) {
//                     var state = snapshot.connectionState;
//                     if (state != ConnectionState.done) {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     } else {
//                       if (snapshot.hasData) {
//                         return ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: snapshot.data!.restaurants.length,
//                           itemBuilder: (context, index) {
//                             var resto = snapshot.data?.restaurants[index];

//                             return Padding(
//                               padding: const EdgeInsets.only(top: 8.0),
//                               child: CardResto(
//                                 restaurants: resto!,
//                               ),
//                             );
//                           },
//                         );
//                       } else if (snapshot.hasError) {
//                         return Center(
//                           child:
//                               Material(child: Text(snapshot.error.toString())),
//                         );
//                       } else {
//                         return const Material(child: Text(''));
//                       }
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CardResto extends StatelessWidget {
//   final Restaurants restaurants;
//   const CardResto({super.key, required this.restaurants});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.network(
//               "https://restaurant-api.dicoding.dev/images/small/${restaurants.pictureId}"),
//           Text(restaurants.name),
//         ],
//       ),
//     );
//   }
// }
