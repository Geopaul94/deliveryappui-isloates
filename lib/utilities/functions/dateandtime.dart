String formatTimeDifference(DateTime apiTime) {
  final DateTime currentTime = DateTime.now();
  final Duration difference = currentTime.difference(apiTime);

  if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
  } else if (difference.inDays < 30) {
    return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
  } else if (difference.inDays < 365) {
    int months = (difference.inDays / 30).floor();
    return '$months month${months > 1 ? 's' : ''} ago';
  } else {
    int years = (difference.inDays / 365).floor();
    int months = ((difference.inDays % 365) / 30).floor();
    return '$years year${years > 1 ? 's' : ''} ${months > 0 ? ' $months month${months > 1 ? 's' : ''} ago' : 'ago'}';
  }
}
