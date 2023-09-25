import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuk_makan_app/bloc/bloc_detail/bloc_detail_bloc.dart';
import 'package:yuk_makan_app/data/model/response_detail/response_detail.dart';
import 'package:yuk_makan_app/screen/add_review.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final blocDetail = BlocDetailBloc();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: BlocProvider(
        create: (context) => blocDetail..add(BlocDetailEvent.getDetail(id)),
        child: BlocBuilder<BlocDetailBloc, BlocDetailState>(
          builder: ((context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is Loaded) {
              return _buildCard(context, state.restaurantDetail, blocDetail);
            } else {
              return Container();
            }
          }),
        ),
      ),
    );
  }
}

Widget _reviewCard(BuildContext context, ResponseDetail review) {
  return ListView.builder(
    itemCount: review.restaurant.customerReviews.length,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(8),
        decoration: ShapeDecoration(shape: Border.all(color: Colors.amber)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              review.restaurant.customerReviews[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(review.restaurant.customerReviews[index].review),
          ],
        ),
      );
    },
  );
}

Widget _categoriesCard(BuildContext context, ResponseDetail categories) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: categories.restaurant.categories.length,
    itemBuilder: ((context, index) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(4),
          color: Colors.amber,
          child: Text(
            categories.restaurant.categories[index].name,
          ),
        ),
      );
    }),
  );
}

Widget _buildCard(
    BuildContext context, ResponseDetail model, BlocDetailBloc blocDetailBloc) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.network(
        "https://restaurant-api.dicoding.dev/images/small/${model.restaurant.pictureId}",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.restaurant.name,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.w500)),
              SizedBox(height: 50, child: _categoriesCard(context, model)),
              Text(model.restaurant.city),
              Text(model.restaurant.address),
              const SizedBox(height: 4.0),
              Text(model.restaurant.description),
              const Text(
                'Reviews : ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: _reviewCard(context, model),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddReviewScreen(
                          id: model.restaurant.id,
                          detailBloc: blocDetailBloc,
                        ),
                      ),
                    );
                  },
                  child: const Text('Tambah Komentar'))
            ],
          ),
        ),
      )
    ],
  );
}
