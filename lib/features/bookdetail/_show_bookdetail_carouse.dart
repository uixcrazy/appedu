part of 'book_detail_screen.dart';

extension ShowBookDetailCarouse on BookDetailScreen {
  Widget _showBookDetailCarouse(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: Get.height * 0.5,
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(
                      ImageConstants.bgBook), // Add your image path here
                  fit: BoxFit.none,
                ),
                color: AppColor.primaryColor),
          ),
          _buildCarousel(),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return Container(
      height: Get.height * 0.46, // Set your desired height here
      child: CarouselSlider.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return _buildCarouselItem(books[index].title, books[index].image);
        },
        options: CarouselOptions(
          height: 395,
          viewportFraction: 0.68, // Size of the visible portion of each item
          enableInfiniteScroll: true,
          enlargeCenterPage: true, // Highlight the item in the center
          autoPlay: true, // Automatically transition between items
          autoPlayInterval: const Duration(
              seconds: 5), // Increase interval for slower auto-play
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          scrollPhysics: CustomScrollPhysics(),
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String title, String image) {
    return GestureDetector(
      onTap: () {
      },
      child: AspectRatio(
        aspectRatio: 2 / 3, // Set your desired aspect ratio here
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 1), // Position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              // Book Image
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Title Section
              Container(
                margin: EdgeInsets.only(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.blueColor_2,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(16)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style:
                            TextStyle(fontSize: 12, color: AppColor.whiteColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('play button');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:  Icon(
                          Icons.play_circle,
                          size: 16,
                          color: AppColor.blueColor_2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define custom scroll physics to adjust manual scroll speed
class CustomScrollPhysics extends ScrollPhysics {
  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics();
  }

  @override
  double get dragStartDistanceMotionThreshold => 4.0;

  @override
  Duration get duration => Duration(
      milliseconds: 600); // Adjust the duration of the scrolling animation
}
