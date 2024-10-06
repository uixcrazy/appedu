part of 'library_screen.dart';

extension FiterBook on LibraryScreen {
  Widget _fiterBook(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(controller.categories[index]);
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 4, left: 4),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
              decoration: BoxDecoration(
                color: AppColor.blueColor,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  // Add border property here
                  color: AppColor.blueColor_1, // Set border color
                  width: 2.0, // Set border width
                ),
              ),
              child: Text(
                controller.categories[index],
                style: TextStyle(color: AppColor.whiteColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
