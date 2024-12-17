part of 'notification_bloc.dart';

sealed class NotificationState extends Equatable {
  const NotificationState();
  
  @override
  List<Object> get props => [];
}

final class NotificationInitial extends NotificationState {}


final class NotificationLoadingState extends NotificationState {}

final class NotificationSucessState extends NotificationState {
final List<NotificationModel>notification;

  NotificationSucessState({required this.notification});
 @override
  List<Object> get props => [notification];
}


final class NotificationErrorState extends NotificationState {
final String error;

  NotificationErrorState({required this.error});


 @override
  List<Object> get props => [error];
}


