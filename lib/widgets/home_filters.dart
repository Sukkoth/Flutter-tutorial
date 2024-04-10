import 'package:fashion/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFilters extends StatelessWidget {
  HomeFilters({super.key});

  final List<String> _filters = ['All', 'Popular', 'Recent', 'Recommended'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        SizedBox(
          height: 47,
          child: ListView.builder(
            itemCount: _filters.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                    gradient: index == 0 ? MyColors.primaryGradient : null,
                    color: index != 0 ? MyColors.grey : null,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  _filters[index],
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
