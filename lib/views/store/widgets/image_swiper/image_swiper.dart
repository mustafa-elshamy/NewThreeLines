import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImageSwipper extends StatelessWidget {
  final List<String> images;

  const ImageSwipper({Key key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
        child: Swiper(
          autoplay: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image.asset(images[index], fit: BoxFit.fill);
          },
        ),
      ),
    );
  }
}
