import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netflix/common/widgets/appbar/app_bar.dart';
import 'package:netflix/core/configs/assets/app_vectors.dart';
import 'package:netflix/presentation/home/widgets/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            AppVectors.logo,
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TrendingMovies(),
          ],
        ),
      ),
    );
  }
}
