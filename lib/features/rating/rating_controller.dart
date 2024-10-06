import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:get/get.dart';

class RatingController extends AppController {
  var rating = 0.obs; // Observable variable for the star rating
  var feedbackText = ''.obs; // Observable for the feedback

  // Method to update the rating
  void updateRating(int newRating) {
    rating.value = newRating;
  }

  // Method to submit feedback
  void submitFeedback() {
    if (feedbackText.isNotEmpty) {
      // Handle feedback submission (API call, local storage, etc.)
      Get.snackbar('Success', 'Feedback submitted successfully!',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('Error', 'Please provide feedback before submitting.',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}