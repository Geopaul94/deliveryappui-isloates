
import 'package:flutter/material.dart';
import 'package:moch_api/data/model/notification_model.dart';
import 'package:moch_api/utilities/constants/constants.dart';
import 'package:moch_api/utilities/constants/notification_images_list.dart';
import 'package:moch_api/utilities/functions/dateandtime.dart';

class NotificationContainer extends StatelessWidget {
  final List<NotificationModel> notifications;

  const NotificationContainer({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        final image = notificationImages[index % notificationImages.length];

        return Container(
          width: 365,
          color: white,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      overflow: TextOverflow.visible,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                        color: textcolor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      notification.body,
                      overflow: TextOverflow.visible,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(71, 71, 71, 1),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      formatTimeDifference(notification.timestamp),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(114, 114, 114, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(thickness: 1);
      },
    );
  }
}

