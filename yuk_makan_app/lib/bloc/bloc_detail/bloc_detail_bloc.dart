import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuk_makan_app/data/api/api_services.dart';
import 'package:yuk_makan_app/data/model/response_detail/response_detail.dart';
part 'bloc_detail_event.dart';
part 'bloc_detail_state.dart';
part 'bloc_detail_bloc.freezed.dart';

class BlocDetailBloc extends Bloc<BlocDetailEvent, BlocDetailState> {
  final ApiServices apiServices = ApiServices();

  BlocDetailBloc() : super(const BlocDetailState.initial()) {
    on<GetDetail>(_onGetDetail);
    on<PostData>(_onPostData);

    // on<BlocDetailEvent>((event, emit) async {
    // await event.when(
    //   started: () {},
    //   getDetail: (restaurantId) async {
    //     emit(const BlocDetailState.loading());
    //     try {
    //       final restaurantDetail =
    //           await apiServices.getDetailRestaurant(restaurantId);
    //       emit(BlocDetailState.loaded(
    //         restaurantDetail,
    //       ));
    //     } catch (e) {
    //       emit(const BlocDetailState.error(
    //           'Failed to load restaurant detail'));
    //     }
    //   },
    //   postData: (String id, String name, String review) async {
    //     if (event is PostData) {
    //       emit(Loading());
    //       await Future.delayed(
    //         const Duration(seconds: 3),
    //         () async {
    //           var data = await apiServices.postReview(
    //               event.id, event.name, event.review);

    //           state.whenOrNull(
    //             loaded: (restaurantDetail) {
    //               final newData = restaurantDetail.copyWith(
    //                 restaurant: restaurantDetail.restaurant.copyWith(
    //                   customerReviews: data.customerReviews ?? [],
    //                 )
    //               );
    //               emit(BlocDetailState.loaded(newData));
    //             },
    //           );
    //         },
    //       );
    //     }
    //   },
    // );
    // });
  }

  Future<void> _onGetDetail(
      GetDetail event, Emitter<BlocDetailState> emit) async {
    emit(const BlocDetailState.loading());
    try {
      final restaurantDetail =
          await apiServices.getDetailRestaurant(event.restaurantId);
      emit(BlocDetailState.loaded(
        restaurantDetail,
      ));
    } catch (e) {
      emit(const BlocDetailState.error('Failed to load restaurant detail'));
    }
  }

  Future<void> _onPostData(
      PostData event, Emitter<BlocDetailState> emit) async {
    emit(const BlocDetailState.loading());

    try {
      final restaurantDetail =
          await apiServices.postReview(event.id, event.name, event.review);

      if (state is Loaded) {
        final oldData = (state as Loaded).restaurantDetail;

        final newData = oldData.copyWith(
          restaurant: oldData.restaurant.copyWith(
            customerReviews: restaurantDetail.customerReviews ?? [],
          ),
        );

        emit(BlocDetailState.loaded(newData));
      }
    } catch (e) {
      emit(const BlocDetailState.error('Failed to load restaurant detail'));
    }
  }
}
