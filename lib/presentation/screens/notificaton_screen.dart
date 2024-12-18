import 'package:flutter/material.dart';
import 'package:moch_api/data/model/notification_model.dart';
import 'package:moch_api/presentation/bloc/notification/notification_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moch_api/presentation/screens/notificationcontainer.dart';
import 'package:moch_api/presentation/screens/widgets/custome_appbar.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class NotificatonScreen extends StatelessWidget {
  const NotificatonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc()..add(FetchNotification()),
      child: Scaffold(
        backgroundColor: white,
        appBar: const CustomeAppbar(appvarname: 'Notifications'),
        body: Column(
          children: [
            const Divider(thickness: 2),
            Expanded(
              child: BlocBuilder<NotificationBloc, NotificationState>(
                builder: (context, state) {
                  if (state is NotificationLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: maincolor,
                      ),
                    );
                  } else if (state is NotificationSucessState) {
                    final List<NotificationModel> notifications =
                        state.notification;
                    return NotificationContainer(notifications: notifications);
                  } else if (state is NotificationErrorState) {
                    return Center(child: Text('Error: ${state.error}'));
                  } else {
                    return const Center(child: Text('No notifications'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
