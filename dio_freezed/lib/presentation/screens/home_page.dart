import 'package:dio_freezed/domain/services/api_services.dart';
import 'package:dio_freezed/presentation/screens/detail_page.dart';
import 'package:flutter/material.dart';

import '../../data/models/comic/comic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiServices _apiServices = ApiServices();
  late Future<List<Comic>> _comicFuture;

  @override
  void initState() {
    super.initState();
    _comicFuture = _apiServices.getListComic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('My Comic'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: _comicFuture,
        builder: (context, snapshoot) {
          if (snapshoot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshoot.hasError) {
            return const Center(child: Text("Cek Koneksi"));
          } else {
            final comic = snapshoot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
                itemCount: comic.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailPage(id: comic[index].id);
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Stack(
                        children: [
                          Hero(
                            tag: comic[index].thumbnail,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(comic[index].thumbnail),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    16,
                                  ),
                                  bottomRight: Radius.circular(16.0),
                                ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Color.fromARGB(200, 0, 0, 0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    comic[index].title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    comic[index].episode,
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
