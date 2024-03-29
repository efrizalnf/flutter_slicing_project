import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => SizedBox(
          height: 204,
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    'https://picsum.photos/id/$index/165/135',
                    width: 165,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    width: 32,
                    height: 32,
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 25,
                        )),
                  ),
                )
              ]),
              Text(
                'Suede Chukka Boots',
                style: GoogleFonts.roboto(
                    color: '#455154'.toColor(),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'River Island',
                style: GoogleFonts.roboto(
                    color: '#969FA2'.toColor(),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                '\$79.00',
                style: GoogleFonts.roboto(
                    color: '#455154'.toColor(),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
