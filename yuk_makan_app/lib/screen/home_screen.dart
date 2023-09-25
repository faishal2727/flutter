import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuk_makan_app/bloc/bloc_list/restaurant_bloc.dart';
import 'package:yuk_makan_app/data/model/response_list/response.dart';
import 'package:yuk_makan_app/screen/detail_screen.dart';
import 'package:yuk_makan_app/screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("resto"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<RestaurantBloc, RestaurantState>(
              builder: (context, state) {
                if (state is Initial) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is Loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is Loaded) {
                  return buildCard(context, state.restaurants);
                } else {
                  return Container();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

Widget buildCard(BuildContext context, ResponseRestaurants model) {
  return ListView.builder(
    itemCount: model.restaurants.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(id: model.restaurants[index].id);
              },
            ),
          );
        },
        child: Container(
          color: Colors.amber.shade600,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/load.png',
                fadeInDuration: const Duration(seconds: 2),
                fadeOutDuration: const Duration(seconds: 2),
                image:
                    "https://restaurant-api.dicoding.dev/images/small/${model.restaurants[index].pictureId}",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 4.0),
              Text(
                model.restaurants[index].name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                model.restaurants[index].description,
                maxLines: 2,
              )
            ],
          ),
        ),
      );
    },
  );
}
