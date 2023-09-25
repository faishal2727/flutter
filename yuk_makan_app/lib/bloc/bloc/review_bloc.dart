import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuk_makan_app/data/api/api_services.dart';
import 'package:yuk_makan_app/data/model/response_review/response_review.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(const _Initial()) {
    final ApiServices _apiServices = ApiServices();
    on<ReviewEvent>((event, emit) async {
      if (event is PostData) {
        emit(Loading());
        await Future.delayed(const Duration(seconds: 3), () async {
          var data =
              await _apiServices.postReview(event.id, event.name, event.review);
          emit(Loaded(data));
        });
      }
    });
  }
}
