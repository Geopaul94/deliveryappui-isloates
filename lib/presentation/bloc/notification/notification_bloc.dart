import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moch_api/data/model/notification_model.dart';
import 'package:moch_api/data/repository/notificationapi.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<FetchNotification>(_FetchNotificatione);
  }

  Future<void> _FetchNotificatione(
      FetchNotification Evenet, Emitter<NotificationState> emit) async {
    emit(NotificationLoadingState());
    try {
      final List<NotificationModel> response = await fetchNotification();
      emit(NotificationSucessState(notification: response));
    } catch (e) {
      emit(NotificationErrorState(error: e.toString()));
    }
  }
}
