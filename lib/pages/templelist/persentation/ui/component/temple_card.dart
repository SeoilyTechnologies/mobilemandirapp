import 'package:flutter/material.dart';

import '../../../data/entity/temple_model.dart';

class TempleCard extends StatelessWidget {
  final TempleModel temple;

  const TempleCard({required this.temple, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: (temple.templeImage.isEmpty)
                ? Container(
                    height: 65,
                    width: 65,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 32,
                      color: Colors.grey,
                    ),
                  )
                :
            Image.network(
              "${temple.templeImage}",
                    height: 65,
                    width: 65,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 65,
                        width: 65,
                        color: Colors.grey.shade300,
                        child: const Icon(
                          Icons.broken_image,
                          size: 32,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
          ),

          const SizedBox(width: 12),

          // TEXT COLUMN
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "${temple.templeName}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.3,
                          color: Colors.black,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 14),




                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Padding(padding: EdgeInsets.only(top: 2),
                   child:  Icon(Icons.location_on, size: 15, color: Colors.black26),),
                    SizedBox(width: 3),
                    Expanded(child: Text(
                      "${temple.state}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontFamily: "Poppins",
                      ),
                    ),)
                  ],
                ),
              ],
            ),
          ),

          // ARROW
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
