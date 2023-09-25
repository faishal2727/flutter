import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuk_makan_app/screen/detail_screen.dart';

import '../bloc/bloc_detail/bloc_detail_bloc.dart';

class AddReviewScreen extends StatelessWidget {
  final String id;
  final BlocDetailBloc detailBloc;

  const AddReviewScreen(
      {super.key, required this.id, required this.detailBloc});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController reviewController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Komentar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(id),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      hintText: 'Masukan Nama',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber))),
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: reviewController,
                  decoration: const InputDecoration(
                      hintText: 'Masukan Komentar',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber))),
                ),
                const SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                    onPressed: () {
                      final name = nameController.text;
                      final review = reviewController.text;
                      print("jjkk $id");
                      detailBloc.add(PostData(id, name, review));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailScreen(id: id),
                      //   ),
                      // );
                      Navigator.pop(context);
                    },
                    child: const Text('Post'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
