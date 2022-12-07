import 'package:demo3/features/domain/entity/job_entity.dart';

//TODO: refactor into one more elegant function that doesn't have so much duplicated code
List<JobEntity> sortByDatePosted(List<JobEntity> unsortedList) {
  int lengthOfArray = unsortedList.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (unsortedList[j].datePosted.compareTo(unsortedList[j + 1].datePosted) > 0) {
        JobEntity temp = unsortedList[j];
        unsortedList[j] = unsortedList[j + 1];
        unsortedList[j + 1] = temp;
      }
    }
  }
  return (unsortedList);
}

List<JobEntity> sortByExpectedDeliveryDate(List<JobEntity> unsortedList) {
  int lengthOfArray = unsortedList.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (unsortedList[j].deliveryDate.compareTo(unsortedList[j + 1].deliveryDate) > 0) {
        JobEntity temp = unsortedList[j];
        unsortedList[j] = unsortedList[j + 1];
        unsortedList[j + 1] = temp;
      }
    }
  }
  return (unsortedList);
}