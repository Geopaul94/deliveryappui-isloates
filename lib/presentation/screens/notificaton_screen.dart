import 'package:flutter/material.dart';
import 'package:moch_api/presentation/bloc/notification/notification_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class NotificatonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc()..add(FetchNotification()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state is NotificationLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is NotificationSucessState) {
              return ListView.builder(
                itemCount: state.notification.length,
                itemBuilder: (context, index) {
                  final notification = state.notification[index];
                  return ListTile(
                    leading: Image.asset('assets/${notification.image}'),
                    title: Text(notification.title),
                    subtitle: Text(notification.body),
                    trailing: Text('${notification.timestamp}'),
                  );
                },
              );
            } else if (state is NotificationErrorState) {
              return Center(child: Text('Error: ${state.error}'));
            } else {
              return const Center(child: Text('No notifications'));
            }
          },
        ),
      ),
    );
  }
}
