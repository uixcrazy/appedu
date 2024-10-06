part of 'library_screen.dart';

extension Search on LibraryScreen {
  Widget _search(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: TextField(
        controller: controller.searchController.value,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: AppColor.greyColor),
          prefixIcon: Icon(Icons.search, color: AppColor.greyColor),
          filled: true,
          fillColor: AppColor.blueColor_1,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(
          color: AppColor.whiteColor, // Custom color for input text
          fontSize: 16, // Adjust font size as needed
        ),
      ),
    );
  }
}
