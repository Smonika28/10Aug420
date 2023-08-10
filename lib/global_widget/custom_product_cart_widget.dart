import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/apis_path/api_config_string.dart';
import 'custom_bordered_button.dart';
import 'custom_unbordered_button.dart';

class CustomProductCardWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String titileText;
  final String price;
  final String mainPrice;
  final String slug;
  final String description;
  final String thcRange;
  final String image;

  final VoidCallback onTap;
  const CustomProductCardWidget(
      {super.key,
      this.onPressed,
      required this.mainPrice,
      required this.price,
      required this.slug,
      required this.titileText,
      required this.description,
      required this.image,
      required this.thcRange,
      required this.onTap});

  @override
  State<CustomProductCardWidget> createState() =>
      _CustomProductCardWidgetState();
}

class _CustomProductCardWidgetState extends State<CustomProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 102,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CachedNetworkImage(
                 imageUrl: "${ApiEndPoints.Storage}${widget.image}",
                width: double.infinity,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180,
                  child: Text(
                    widget.titileText,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Text(
                  "\$ ${widget.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${widget.thcRange}% THC",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(widget.slug,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    )),
              ],
            ),
          ],
        ),

        //buttons
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomUnBorderedElevatedButton(
              onTap: widget.onTap,
              title: 'Add To Cart',
            ),
            CustomBorderedElevatedButton(
              onTap: () {},
              title: 'Remove',
            ),
          ],
        ),
      ]),
    );
  }
}

