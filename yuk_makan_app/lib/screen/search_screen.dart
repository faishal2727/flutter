import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuk_makan_app/bloc/search_bloc/searh_bloc_bloc.dart';
import 'package:yuk_makan_app/data/model/response_search.dart/response_search.dart';
import 'package:yuk_makan_app/screen/detail_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari Resto'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onChanged: (query) {
                  context.read<SearhBlocBloc>().add(OnQueryChanged(query));
                },
                decoration: const InputDecoration(
                  hintText: 'Search Resto',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.search,
              ),
              Expanded(child: BlocBuilder<SearhBlocBloc, SearhBlocState>(
                builder: (context, state) {
                  if (state is Loading) {
                    print('Status Loading dipicu');
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is Loaded) {
                    return buildCardResto(context, state.restoCari);
                  } else {
                    return Container();
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCardResto(BuildContext context, ResponseSearch model) {
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
            children: <Widget>[
              Image.network(
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
