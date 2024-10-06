import 'package:app_educhain/features/rating/rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Define your colors (assuming you have a custom color scheme)
class AppColor {
  static const primaryColor = Color(0xFF0F172A);
  static const secondColor = Color(0xFF1E293B);
  static const yellowStar = Color(0xFFFFD700);
  static const buttonColor = Color(0xFF1D4ED8);
}

// The Evaluation Screen UI
class RatingScreen extends GetView<RatingController> {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor, // Set primary background color
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        leading: TextButton(
          onPressed: () => Get.back(), // Navigate back on "Cancel"
          child: Container(
            padding: EdgeInsets.all(0),
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.white),
            ),
          ),
          style: TextButton.styleFrom(
            minimumSize: Size(120, 40), // Set a minimum size to prevent wrapping
            padding: EdgeInsets.symmetric(
                horizontal: 16), // Optional: Add horizontal padding
          ),
        ),
        title: Text(
          'Evaluate',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Information Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://picsum.photos/200', // Book image URL
                    height: 80,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harry Potter and the Philosopher\'s Stone',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'J.K. Rowling',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Book / Fiction',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Star Rating Row
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        Icons.star,
                        color: controller.rating.value > index
                            ? AppColor.yellowStar
                            : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () => controller.updateRating(index + 1),
                    );
                  }),
                )),
            SizedBox(height: 24),
            // Feedback TextField
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColor.secondColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                maxLines: 6,
                onChanged: (value) {
                  controller.feedbackText.value = value;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Please give us some comments and feedback!',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            // Submit Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.buttonColor, // Button color
                  // primary: AppColor.buttonColor, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: controller.submitFeedback,
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
